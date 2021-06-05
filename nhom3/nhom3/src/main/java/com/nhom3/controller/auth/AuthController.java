package com.nhom3.controller.auth;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.nhom3.dto.NguoiDungDto;
import com.nhom3.service.INguoDungService;

@Controller
@RequestMapping("/auth")
public class AuthController {
	@Autowired
	private INguoDungService nguoDungService;

	@PostMapping("dangki")
	public String dangKi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, NoSuchAlgorithmException {
		if(dangkikh(request, response)==true) {
			return "/auth/dangnhap";
		}
		
		return "/auth/dangki";
	}

	@GetMapping("showformdangki")
	public String showformdangKi() {
		return "/auth/dangki";

	}

	@GetMapping("dangnhap")
	public String dangnhap() {
		return "/auth/dangnhap";
	}

	@GetMapping("dangxuat")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		return "redirect:/home/trangchu";
	}
	public boolean dangkikh(HttpServletRequest request, HttpServletResponse response)
			throws IOException, NoSuchAlgorithmException {
		String tenkh = request.getParameter("tenkhachhhang");
		String emaill = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String matkhau = request.getParameter("password");
		String cmnd = request.getParameter("cmnd");

		List<NguoiDungDto> list = nguoDungService.getAllNguoiDung();
		for (NguoiDungDto nguoiDungDto : list) {
			if (nguoiDungDto.getEmail().equalsIgnoreCase(emaill) || nguoiDungDto.getSoCMND().equalsIgnoreCase(cmnd)
					|| nguoiDungDto.getSoDienThoai().equalsIgnoreCase(sdt)) {
				return false;
			}
		}
		
		nguoDungService.DangKi(new NguoiDungDto(tenkh, cmnd, sdt, emaill, "","USER",matkhau));
		return true;

	}
}
