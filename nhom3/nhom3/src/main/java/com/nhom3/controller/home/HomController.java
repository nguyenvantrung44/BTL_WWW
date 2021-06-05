package com.nhom3.controller.home;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhom3.cartbean.GioHang;
import com.nhom3.cartbean.Item;
import com.nhom3.dto.ChiTietDonHangDTo;
import com.nhom3.dto.SanPhamDto;
import com.nhom3.service.IChiTietDonHangService;
import com.nhom3.service.IDanhMucService;
import com.nhom3.service.ISanPhamService;

@Controller
@RequestMapping("/home")
public class HomController {
	@Autowired
	private ISanPhamService sanPhamService;

	@Autowired
	private IDanhMucService danhMucService;

	@Autowired
	private IChiTietDonHangService chiTietDonHangService;

	@GetMapping("trangchu")
	public String home(ModelMap modelMap, ModelMap modelMap2,ModelMap modelMap3, HttpServletRequest request) {
		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart"); // Lấy cart từ jsp

		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}
		modelMap.addAttribute("listSanPham", sanPhamService.getAllSanPham());
		modelMap2.addAttribute("listDanhMuc", danhMucService.getAllDanhMuc());
		
		return "/home/TrangChuView";
	}

	@GetMapping("xemthongtinsanpham")
	public String xemSanPham(Model sanPhamModel, HttpServletRequest request,
			@RequestParam("maSanPham") String maSanPham, Model soLuongDaBan, Model soLuongCon) {

		SanPhamDto sanPham = sanPhamService.getSanPhamByID(Integer.parseInt(maSanPham));
		sanPhamModel.addAttribute("sp", sanPham);
		soLuongDaBan.addAttribute("soLuongCon", soLuongConTrongKho(Integer.parseInt(maSanPham)));
		soLuongCon.addAttribute("soLuongDaBan", soLuongSanPhamDaDat(Integer.parseInt(maSanPham)));
		return "/home/ThongTinSanPhamView";
	}

	@PostMapping("dathang")
	public String themVaoGioHang(@RequestParam("action") String action, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		if (action != null && !action.equals("")) {
			if (action.equals("add")) {
				addItem(request, response);
				return "/home/ChiTietDonHangView";
			} else if (action.equals("update")) {
				updateSoLuong(request, response);
				return "/home/ChiTietDonHangView";
			} else if (action.equals("delete")) {
				deleteItem(request, response);
				return "/home/ChiTietDonHangView";
			}

		}
		return "/home/ChiTietDonHangView";

	}

	@GetMapping("timkiem")
	public String showFormTimKiem(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String tenSanPham = request.getParameter("timkiem");
		List<SanPhamDto> list = sanPhamService.getSanPhamByten(tenSanPham);
		request.setAttribute("listSanPham", list);
		request.setAttribute("tukhoa", tenSanPham);
		return "/home/ListKetQuaTimKiemView";
	}

	@GetMapping("giohang")
	public String showGioHang(Model model) {
		return "/home/ChiTietDonHangView";
	}

	@GetMapping("honda")
	public String showListAoThun(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Xe Đạp Điện Honda");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Xe Đạp Điện Honda");
		System.out.println(list.get(0).getUrlHinh());
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("yamaha")
	public String showListAoPhong(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Xe Đạp Điện Yamaha");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Xe Đạp Điện Yamaha");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("dkbike")
	public String showListAoSoMi(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Xe Đạp Điện DK Bike");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Xe Đạp Điện DK Bike");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("hitasa")
	public String showListCocTay(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Xe Đạp Điện Hitasa");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Xe Đạp Điện Hitasa");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("hkbike")
	public String showListQuanJean(Model model, Model model2) {
		List<SanPhamDto> list = sanPhamService.getSanPhamByDanhMucByTen("Xe Đạp Điện HkBike");
		model.addAttribute("listSanPham", list);
		model2.addAttribute("danhmuc", "Xe Đạp Điện HkBike");
		return "/home/ListMenuSanPhamView";
	}

	@GetMapping("gioithieu")
	public String gioithieu(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		return "/include/gioithieu";
	}

	@GetMapping("tintuc")
	public String tintuc(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		return "/include/tintuc";
	}

	@GetMapping("lienhe")
	public String lienhe(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		return "/include/lienhe";
	}

	public void addItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.valueOf(request.getParameter("maSanPham"));
		String tenSanPham = request.getParameter("tenSanPham");
		String urlHinhAnh = request.getParameter("urlHinh");
		long donGia = Long.valueOf(request.getParameter("donGia"));
		int soLuong = Integer.valueOf(request.getParameter("soLuong"));

		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}
		int soLuongConTrongKho = 0;
		try {
			if (soLuongConTrongKho(id) != 0) {
				soLuongConTrongKho += soLuongConTrongKho(id);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		gioHang.ThemItem(new Item(id, tenSanPham, urlHinhAnh, donGia, soLuong, soLuongConTrongKho));
		session.setAttribute("cart", gioHang);
	}

	public void updateSoLuong(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		int soLuong = Integer.valueOf(request.getParameter("soLuong"));

		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}

		gioHang.updateItem(gioHang.getItemById(id), soLuong);
	}

	public void deleteItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		if (objGioHang != null) {
			gioHang = (GioHang) objGioHang;
		} else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}

		gioHang.deleteItem(gioHang.getItemById(id));
	}

	public int soLuongSanPhamDaDat(int maSanPham) {
		int soLuong = 0;
		// List<SanPham> listSanPhamDaDat = new ArrayList<SanPham>();
		for (ChiTietDonHangDTo dto : chiTietDonHangService.getAllChiTietDonHang()) {
			if (dto.getSanPham().getMaSanPham() == maSanPham) {
				soLuong += dto.getSoLuong();
			}
		}
		return soLuong;
	}

	public int soLuongConTrongKho(int maSanPham) {
		int soLuongCon = 0;
		soLuongCon = sanPhamService.getSanPhamByID(maSanPham).getSoLuongNhap() - soLuongSanPhamDaDat(maSanPham);
		return soLuongCon;
	}

//	public String getUserMailAuth() {
//
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		return user.getUsername();
//	}
}
