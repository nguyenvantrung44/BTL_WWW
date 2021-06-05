package com.nhom3.controller.order;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.nhom3.cartbean.GioHang;
import com.nhom3.cartbean.Item;
import com.nhom3.dto.ChiTietDonHangDTo;
import com.nhom3.dto.DonHangDto;
import com.nhom3.dto.NguoiDungDto;
import com.nhom3.dto.SanPhamDto;
import com.nhom3.entity.ChiTietDonHangID;
import com.nhom3.entity.DonHang;
import com.nhom3.entity.NguoiDung;
import com.nhom3.entity.SanPham;
import com.nhom3.service.IChiTietDonHangService;
import com.nhom3.service.IDonHangService;
import com.nhom3.service.INguoDungService;
import com.nhom3.service.ISanPhamService;

@Controller
@RequestMapping("/muahang")
public class MuaHangController {

	@Autowired
	INguoDungService nguoiDungService;

	@Autowired
	private ISanPhamService sanPhamService;

	@Autowired
	private IChiTietDonHangService chiTietDonHangService;

	@Autowired
	private IDonHangService donHangService;

	@GetMapping("thanhtoan")
	public String thanhToan(ModelMap modelMap) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null || authentication instanceof AnonymousAuthenticationToken) {
			return "redirect:/auth/dangnhap";
		} else {
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			NguoiDungDto dto = nguoiDungService.getNguoiDungByEmail(user.getUsername());
			modelMap.addAttribute("kh", dto);

			return "/user/ThanhToanView";
		}
	}
	// xacnhanthanhtoan

	@PostMapping("xacnhanthanhtoan")
	public String xacNhanThanhToan(HttpServletRequest request) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		NguoiDungDto ng = nguoiDungService.getNguoiDungByEmail(user.getUsername());

		NguoiDungDto n = new NguoiDungDto();
		String ten = request.getParameter("tenkh");
		String email = request.getParameter("email");
		String diachi = request.getParameter("diachi");
		String sdt = request.getParameter("sdt");

		n.setMaNguoiDung(ng.getMaNguoiDung());
		n.setTenNguoiDung(ten);
		n.setNgaySinh(ng.getNgaySinh());
		n.setSoCMND(ng.getSoCMND());
		n.setSoDienThoai(sdt);
		n.setEmail(email);
		n.setDiaChi(diachi);
		n.setTrangThai(ng.getTrangThai());
		n.setLoaiNguoiDung(ng.getLoaiNguoiDung());
		n.setMatKhau(ng.getMatKhau());

		nguoiDungService.updateKhachHang(n);

		// them don hang
		DonHangDto donHang = new DonHangDto();
		donHang.setNgayLap(LocalDate.now());
		donHang.setKhachHang(new NguoiDung(n.getMaNguoiDung(), ten, n.getNgaySinh(), n.getSoCMND(), sdt, email, diachi,
				n.getTrangThai(), n.getLoaiNguoiDung(), n.getMatKhau()));
		donHangService.addKDonHang(donHang);
		donHang.setMaDonHang(donHangService.getIdMax());

		// them chi tiet don hang
		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
			for (Item item : gioHang.getGioHang()) {
				int id = sanPhamService.getSanPhamByID(item.getId()).getMaSanPham();
				SanPhamDto dt = sanPhamService.getSanPhamByID(item.getId());
				SanPham sp = new SanPham(dt.getMaSanPham(), dt.getTenSanPham(), dt.getNgaySanXuat(), dt.getDonViTinh(),
						dt.getMoTa(), dt.getDonGia(), dt.getSoLuongNhap(), dt.getUrlHinh(), dt.getTrangThai(),
						dt.getNhaCungCap(), dt.getDanhMuc());
				int madh = donHangService.getIdMax();
				DonHang dh = new DonHang(donHang.getMaDonHang(), donHang.getNgayLap(), donHang.getKhachHang(),
						donHang.getChiTietDonHangs());

				ChiTietDonHangDTo dTo = new ChiTietDonHangDTo(new ChiTietDonHangID(madh, id), sp, dh, item.getSoLuong(),
						item.getSoLuong() * item.getDonGia());

				chiTietDonHangService.addChiTietDonHang(dTo);

				// cap nhat sl san pham
				sanPhamService.updateSanPham(new SanPhamDto(dt.getMaSanPham(), dt.getTenSanPham(), dt.getNgaySanXuat(),
						dt.getDonViTinh(), dt.getMoTa(), dt.getDonGia(), dt.getSoLuongNhap() - item.getSoLuong(),
						dt.getUrlHinh(), dt.getTrangThai(), dt.getDanhMuc(), dt.getNhaCungCap()));

			}
			// đưa session về null
			session.removeAttribute("cart");
		}

		return "redirect:/home/trangchu";

	}

	/// showInfor
	@GetMapping("showInfor")
	public String showInfor(HttpServletRequest request) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		NguoiDungDto ng = nguoiDungService.getNguoiDungByEmail(user.getUsername());
		request.setAttribute("kh", ng);
		return "/user/thongtinkkh";
	}

	@PostMapping("capnhat")
	public String updateInfor(HttpServletRequest request) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		NguoiDungDto ng = nguoiDungService.getNguoiDungByEmail(user.getUsername());
		String ten = request.getParameter("tenNguoiDung");
		String cmnd = request.getParameter("soCMND");
		String diachi = request.getParameter("diaChi");
		String sdt = request.getParameter("soDienThoai");
		NguoiDungDto dungDto = new NguoiDungDto(ng.getMaNguoiDung(), ten, ng.getNgaySinh(), cmnd, sdt, ng.getEmail(),
				diachi, ng.getTrangThai(), ng.getLoaiNguoiDung(), ng.getMatKhau());
		System.out.println("New" + dungDto.toString());
		nguoiDungService.updateKhachHang(dungDto);
		return "redirect:/home/trangchu";
	}

	@GetMapping("xemdondathang")
	public String dsDonHangND(ModelMap modelMap) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		NguoiDungDto ng = nguoiDungService.getNguoiDungByEmail(user.getUsername());
		List<DonHangDto> l = donHangService.getAllDonHangbyMaKhachHang(ng.getMaNguoiDung());
		if (l.isEmpty()) {
			return "redirect:/home/trangchu";
		}
		modelMap.addAttribute("l", donHangService.getAllDonHangbyMaKhachHang(ng.getMaNguoiDung()));
		return "/user/XemDSDonHang_KhachHangView";
	}

	@GetMapping("xemChiTietDonHangKhachHang")
	public String xemCTDonHang(HttpServletRequest request, @RequestParam("maDonHangKH") String maDonHangKH) {
		HttpSession session = request.getSession();
		session.setAttribute("listChiTietKhachHang",
				chiTietDonHangService.getAllChiTietDonHangbyDonHang(Integer.parseInt(maDonHangKH)));
		return "/user/XemDSChiTiet_KhachHangView";
	}

//	@RequestMapping(value = "/xemChiTietDonHangKhachHang", method = RequestMethod.GET)
//	public String xemChiTietDonHangKhachHang(HttpServletRequest request) throws IOException, ServletException {
//		HttpSession session = request.getSession();
//		String maDonHang = request.getParameter("maDonHangKH");
//		session.setAttribute("listChiTietKhachHang",
//				chiTietDonHangService.getAllChiTietDonHangbyDonHang(Integer.parseInt(maDonHang)));
//		return "XemDSChiTiet_KhachHangView";
//	}
}
