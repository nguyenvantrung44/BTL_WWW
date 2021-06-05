<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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


<title>Thế giới xe điện</title>
</head>
<style type="text/css">
.table &amp ;amp ;gt ;tbody &amp ;amp ;gt ;tr &amp ;amp ;gt ;td, .table
	 &amp ;amp ;gt ;tfoot &amp ;amp ;gt ;tr &amp ;amp ;gt ;td {
	vertical-align: middle;
}

@media screen and (max-width: 600px) {
	table#cart tbody td .form-control {
		width: 20%;
		display: inline !important;
	}
	.actions .btn {
		width: 36%;
		margin: 1.5em 0;
	}
	.actions .btn-info {
		float: left;
	}
	.actions .btn-danger {
		float: right;
	}
	table#cart thead {
		display: none;
	}
	table#cart tbody td {
		display: block;
		padding: .6rem;
		min-width: 320px;
	}
	table#cart tbody tr td:first-child {
		background: #333;
		color: #fff;
	}
	table#cart tbody td:before {
		content: attr(data-th);
		font-weight: bold;
		display: inline-block;
		width: 8rem;
	}
	table#cart tfoot td {
		display: block;
	}
	table#cart tfoot td .btn {
		display: block;
	}
}
</style>
<body>
	<div class="container-fluid">
		<!-- _header.jsp  -->
		<div>
			<jsp:include page="../include/_header.jsp"></jsp:include>
		</div>
	</div>
	<div class="header_nav_main section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="heade_menunav">
						<div class="wrap_main d-none d-lg-block d-xl-block">
							<div>
								<jsp:include page="../include/menu2.jsp"></jsp:include>
							</div>
						</div>
						<div class="section_sidebar_slider">
							<div class="container">
								<div class="row">
									<div
										class="dqdt-sidebar sidebar left-content col-lg-3 col-md-12 hidden-sm hidden-xs">
										<div class="wrap_background_aside asidecollection">

											<jsp:include page="../include/menuleft.jsp"></jsp:include>

										</div>
									</div>
									<section class="main-cart-page main-container col1-layout">
										<div class="main container cartpcstyle">
											<div class="wrap_background_aside margin-bottom-40">
												<div class="header-cart">
													<h1 class="title_cart">
														<span>Danh sách chi tiết đơn hàng</span>
													</h1>
													<div class="container">
														<table id="cart" class="table table-hover table-condensed">
															<tr
																style="background-color: gray; font-size: 1em; font-style: inherit;">
																<th>Mã đơn hàng</th>
																<th>Tên sản phẩm</th>
																<th>Đơn giá</th>
																<th>Số lượng</th>
															</tr>
															<c:forEach items="${listChiTietKhachHang }" var="lctdh">
																<c:set var="maKhachHang"
																	value="${lctdh.donHang.khachHang.maNguoiDung }"
																	scope="session"></c:set>
																<tr>
																	<td>${lctdh.donHang.maDonHang }</td>
																	<td>${lctdh.sanPham.tenSanPham }</td>
																	<td><fmt:formatNumber value="${lctdh.donGia}"
																			type="currency" /></td>
																	<td>${lctdh.soLuong }</td>
																</tr>
															</c:forEach>
															<tr>
																<td colspan="4"><a class="btn btn-warning"
																	href="<c:url value="/muahang/xemdondathang"/>">Quay
																		lại</a></td>
															</tr>
														</table>
													</div>
												</div>
											</div>

										</div>
									</section>


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