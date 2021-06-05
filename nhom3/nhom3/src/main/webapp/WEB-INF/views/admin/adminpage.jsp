<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="<c:url value="/resources/css/fontawesome-free-5.13.0-web/css/all.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<link href="<c:url value="/resources/css/css.css"/>" rel='stylesheet'
	type='text/css' />
<title>Quản Trị</title>
</head>

<body>
	<div class="row">
		<div class="col-sm-12">
			<center><h1 style="color: red;">TRANG QUẢN TRỊ</h1></center>
		</div>
	</div>
	<div class="header_nav_main section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="heade_menunav">
						<div class="wrap_main d-none d-lg-block d-xl-block">
							<div class="bg-header-nav">
								<div class="row">
									<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
										<nav class="header-nav">
											<ul class="item_big">
												<li class="nav-item "><a class="a-img" href="dsDonHang"
													title="Giới thiệu"> <span>QUẢN LÝ ĐƠN HÀNG</span>
												</a></li>
												<li class="nav-item "><a class="a-img" href="#"
													title="Sản phẩm"> <span>QUẢN LÝ SẢN PHẨM</span><i
														class="fa fa-angle-down"></i>
												</a>
													<ul class="item_small">
														<li><a href="dsSanPham_QuanLy"
															title="Danh sách sản phẩm">DANH SÁCH SẢN PHẨM</a></li>
														<li><a href="formThemSanPham" title="">THÊM SẢN
																PHẨM</a></li>
													</ul></li>
											</ul>

										</nav>
									</div>
									<ul>
										<security:authorize access="isAuthenticated()==false">
											<security:authentication property="principal" var="user" />
											<li><a href="/nhom3/auth/dangnhap" style="color: white;"><span>Đăng
														nhập</span></a></li>

											<li><a href="/nhom3/auth/showformdangki"
												style="color: white;"><span>Đăng ký</span></a></li>
										</security:authorize>
										<security:authorize access="isAuthenticated()">
											<security:authentication property="principal" var="user" />
											<li><a href="/nhom3/auth/dangxuat" style="color: white;"><span>Đăng
														xuất</span></a></li>
										</security:authorize>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>