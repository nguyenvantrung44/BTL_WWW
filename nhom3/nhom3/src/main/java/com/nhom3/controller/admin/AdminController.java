package com.nhom3.controller.admin;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhom3.dto.ChiTietDonHangDTo;
import com.nhom3.dto.DanhMucDto;
import com.nhom3.dto.NhaCungCapDto;
import com.nhom3.dto.SanPhamDto;
import com.nhom3.entity.DanhMuc;
import com.nhom3.entity.NhaCungCap;
import com.nhom3.entity.SanPham;
import com.nhom3.service.IChiTietDonHangService;
import com.nhom3.service.IDanhMucService;
import com.nhom3.service.IDonHangService;
import com.nhom3.service.INhaCungCapService;
import com.nhom3.service.ISanPhamService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private ISanPhamService sanPhamService;

	@Autowired
	private IDanhMucService danhMucService;

	@Autowired
	private INhaCungCapService nhaCungCapService;

	@Autowired
	private IDonHangService donHangService;

	@Autowired
	private IChiTietDonHangService chiTietDonHangService;

	@Autowired
	ServletContext context;

	@GetMapping("admin")
	public String quantrihome() {

		return "/admin/adminpage";
	}

	@GetMapping("dsSanPham_QuanLy")
	public String quanlysanpham(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("listSanPham", sanPhamService.getAllSanPhambyTrangThai());
		return "/admin/DSSanPham_QuanLy";
	}

	@GetMapping("kdSanPham")
	public String kdSanPham(HttpServletRequest request, @RequestParam("idxoa") String idxoa) {
		HttpSession session = request.getSession();
		sanPhamService.updateSanPhambyTrangThai(Integer.parseInt(idxoa));
		session.setAttribute("listSanPham", sanPhamService.getAllSanPhambyTrangThai());
		return "/admin/DSSanPham_QuanLy";
	}

	@GetMapping("formSuaSanPham")
	public String showformSuaSanPham(HttpServletRequest request, Model model, @RequestParam("idsua") String idsua) {
		HttpSession session = request.getSession();
		request.setAttribute("listDanhMuc", danhMucService.getAllDanhMuc());
		request.setAttribute("listNCC", nhaCungCapService.getAllNhaCungCap());
		model.addAttribute("sanPhamThem", new SanPhamDto());
		SanPhamDto dto = sanPhamService.getSanPhamByID(Integer.parseInt(idsua));
		request.setAttribute("ngay", dto.getNgaySanXuat().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
		session.setAttribute("suasp", dto);
		return "/admin/FormUpdataSanPham";
	}

	@PostMapping("suaSanPham")
	public String suaSanPham(HttpServletRequest request, Model model, HttpServletResponse response,
			@RequestParam("fileanh") MultipartFile anh,@RequestParam("urlOld") String urlOld) {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String maSanPham = request.getParameter("txtmasua");
		String tenSanPham = request.getParameter("txttensua");
		String mota = request.getParameter("txtmotasua");
		String donViTinh = request.getParameter("txtdvtsua");
		String soluong = request.getParameter("txtslsua");
		String dg = request.getParameter("txtgiasua");
		long donGia = Long.parseLong(dg);
		String ngaysanxuat = request.getParameter("txtngaysua");
		LocalDate ngay = LocalDate.parse(ngaysanxuat);

		String tenDanhMuc = request.getParameter("txtDanhMucsua");
		String tenNhaCungCap = request.getParameter("txtNhaCungCapsua");
		DanhMucDto dm = danhMucService.getDanhMucbyTen(tenDanhMuc);
		NhaCungCapDto n = nhaCungCapService.getNhaCungCapbyTen(tenNhaCungCap);
		String hinh="";
		int name =0;
		if (anh.isEmpty()) {
			hinh=urlOld;
		}else {
			try {
			Random rand = new Random();
			name = rand.nextInt(999999) + 1;
			String photoPath = context.getRealPath("/resources/images/" + name + anh.getOriginalFilename());
			anh.transferTo(new File(photoPath));
			hinh="../resources/images/" + name + anh.getOriginalFilename();
			}catch (Exception e) {
				e.printStackTrace();
				return "redirect:/admin/formThemSanPham";
			}
		}
		//System.out.println("hinh:"+hinh);
		// sưa
		SanPhamDto s = sanPhamService.getSanPhamByID(Integer.parseInt(maSanPham));
		s.setDanhMuc(new DanhMuc(dm.getMaDanhMuc(), dm.getTenDanhMuc()));
		s.setDonGia(donGia);
		s.setDonViTinh(donViTinh);
		s.setMoTa(mota);
		s.setNgaySanXuat(ngay);
		s.setNhaCungCap(new NhaCungCap(n.getMaNhaCungCap(), n.getTenNhaCungCap(), n.getDiaChi()));
		s.setSoLuongNhap(Integer.parseInt(soluong));
		s.setUrlHinh(hinh);
		s.setTenSanPham(tenSanPham);
		s.setTrangThai(s.getTrangThai());

		if (sanPhamService.updateSanPham(s)) {
			HttpSession session = request.getSession();
			session.setAttribute("listSanPham", sanPhamService.getAllSanPhambyTrangThai());
			return "/admin/DSSanPham_QuanLy";
		}

		return "/admin/FormUpdataSanPham";
	}

	@GetMapping("formThemSanPham")
	public String showformThemSanPham(HttpServletRequest request, Model model) {
		request.setAttribute("listDanhMuc", danhMucService.getAllDanhMuc());
		request.setAttribute("listNCC", nhaCungCapService.getAllNhaCungCap());
		model.addAttribute("sanPhamThem", new SanPhamDto());
		return "/admin/FormThemSanPham";
	}

	@PostMapping("themSanPham")
	public String themSanPham(HttpServletRequest request, HttpServletResponse response,
			@Valid @ModelAttribute("sanPhamThem") SanPhamDto s, BindingResult result, Model model,
			@RequestParam("fileanh") MultipartFile anh) {
		HttpSession session = request.getSession();
		if (anh.isEmpty()) {
			session.setAttribute("mess", "Vui lòng chọn ảnh");
			return "redirect:/admin/formThemSanPham";
		} else {
			try {
				Random rand = new Random();
				int name = rand.nextInt(999999) + 1;
				String photoPath = context.getRealPath("/resources/images/" + name + anh.getOriginalFilename());
				anh.transferTo(new File(photoPath));
				if (result.hasErrors()) {
					request.setAttribute("listDanhMuc", danhMucService.getAllDanhMuc());
					request.setAttribute("listNCC", nhaCungCapService.getAllNhaCungCap());
					return "redirect:/admin/formThemSanPham";
				} else {
				//	String ngay = request.getParameter("txtngay");
					String tenDanhMuc = request.getParameter("txtDanhMuc");
					String tenNhaCungCap = request.getParameter("txtNhaCungCap");

					DanhMucDto dm = danhMucService.getDanhMucbyTen(tenDanhMuc);// loi
					NhaCungCapDto n = nhaCungCapService.getNhaCungCapbyTen(tenNhaCungCap);

					LocalDate d = LocalDate.now();
					s.setNgaySanXuat(d);
					s.setDanhMuc(new DanhMuc(dm.getMaDanhMuc(), dm.getTenDanhMuc()));
					s.setNhaCungCap(new NhaCungCap(n.getMaNhaCungCap(), n.getTenNhaCungCap(), n.getDiaChi()));
					s.setUrlHinh("../resources/images/" + name + anh.getOriginalFilename());
					s.setTrangThai("true");
					sanPhamService.addSanPham(s);
					return "/admin/DSSanPham_QuanLy";
				}
			} catch (Exception e) {
				e.printStackTrace();
				session.setAttribute("mess", "Lỗi lưu ảnh");
				return "redirect:/admin/formThemSanPham";
			}
		}

	}

	@GetMapping("dsDonHang")
	public String showDsDonHang(HttpServletRequest request) {
		if (donHangService.getAllDonHang().isEmpty()) {
			return "/admin/admin";
		}
		request.setAttribute("listDonHang", donHangService.getAllDonHang());
		return "/user/dsDonHang";
	}

	@GetMapping("dsChiTiet")
	public String DSChiTiet(HttpServletRequest request, @RequestParam("maDonHang") String maDonHang)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		session.setAttribute("listChiTiet",
				chiTietDonHangService.getAllChiTietDonHangbyDonHang(Integer.parseInt(maDonHang)));
		return "/admin/dsDonHang_ChiTietQuanLy";
	}

	@GetMapping("giaoDienSuaChiTiet")
	public String giaoDienSuaChiTiet(HttpServletRequest request, Model model,
			@RequestParam("maDonHangChinh") String maDonHangChinh) {
		model.addAttribute("listChiTiet",
				chiTietDonHangService.getAllChiTietDonHangbyDonHang(Integer.parseInt(maDonHangChinh)));
		return "/admin/ChinhSuaChiTiet";
	}

	@PostMapping("capnhatChiTiet")
	public String capNhatChiTiet(HttpServletRequest request, Model model, @RequestParam("maSanPham") String maSanPham,
			@RequestParam("maDonHang") String maDonHang, @RequestParam("soLuong") String soLuong) {
		ChiTietDonHangDTo ct = chiTietDonHangService.getChiTietbyDHSP(Integer.parseUnsignedInt(maDonHang),
				Integer.parseInt(maSanPham));
		int soluongTon = ct.getSanPham().getSoLuongNhap();
		int slchange = Integer.parseInt(soLuong);
		if (slchange > soluongTon) {
			return "redirect:/admin/giaoDienSuaChiTiet?maDonHangChinh=" + maDonHang;
		} else {

			int sol = soluongTon - (slchange - ct.getSoLuong());
			//System.out.println(sol);
			SanPhamDto s = sanPhamService.getSanPhamByID(Integer.parseInt(maSanPham));
			s.setDanhMuc(new DanhMuc(ct.getSanPham().getDanhMuc().getMaDanhMuc(),
					ct.getSanPham().getDanhMuc().getTenDanhMuc()));
			s.setDonGia(ct.getSanPham().getDonGia());
			s.setDonViTinh(ct.getSanPham().getDonViTinh());
			s.setMoTa(ct.getSanPham().getMoTa());
			s.setNgaySanXuat(ct.getSanPham().getNgaySanXuat());
			s.setNhaCungCap(new NhaCungCap(ct.getSanPham().getNhaCungCap().getMaNhaCungCap(),
					ct.getSanPham().getNhaCungCap().getTenNhaCungCap(), ct.getSanPham().getNhaCungCap().getDiaChi()));
			s.setSoLuongNhap(sol);
			s.setUrlHinh(ct.getSanPham().getUrlHinh());
			s.setTenSanPham(ct.getSanPham().getTenSanPham());
			sanPhamService.updateSanPham(s);

			ct.setSoLuong(slchange);
			ct.setDonGia(slchange * ct.getSanPham().getDonGia());
			ct.setSanPham(new SanPham(s.getMaSanPham(), s.getTenSanPham(), s.getNgaySanXuat(), s.getDonViTinh(),
					s.getMoTa(), s.getDonGia(), s.getSoLuongNhap(), s.getUrlHinh(), s.getTrangThai(), s.getNhaCungCap(),
					s.getDanhMuc()));
			chiTietDonHangService.updateChiTietDonHang(ct);
			model.addAttribute("listChiTiet",
					chiTietDonHangService.getAllChiTietDonHangbyDonHang(Integer.parseInt(maDonHang)));
			return "redirect:/admin/dsChiTiet?maDonHang=" + maDonHang;
		}
	}
	// giaoDienSuaChiTiet?maDonHangChinh=1
	// dsDonHang
	// themSanPham
	// formSuaSanPham
	// dsSanPham_QuanLy
	// xoaSanPham
}
