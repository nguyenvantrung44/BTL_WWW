<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lí đơn hàng</title>
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
</head>
<body>
	<jsp:include page="adminpage.jsp"></jsp:include>
	<div class="container form-text">
		<div class="row">
			<div class="col-sm-10">
				<h1>Chi Tiết Đơn Hàng</h1>
			</div>
			<div class="col-sm-12">
				<table>
					<tr style="background-color: gray; font-size: 1em; font-style: inherit;">
						<th>Mã đơn hàng</th>
						<th>Mã sản phẩm</th>
						<th>Đơn giá</th>
						<th>Số lượng</th>

					</tr>
					<c:forEach items="${listChiTiet }" var="sp">
						<tr>
							<td>${sp.chiTietDonHangID.maDonHangID }</td>
							<td>${sp.sanPham.maSanPham }</td>
							<td><fmt:formatNumber value="${sp.donGia}" type="currency" /></td>
							<td>${sp.soLuong }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="2"><a class="btn btn-warning" href="dsDonHang">Quay
								lại</a></td>
						<td colspan="2"><a class="btn btn-danger"
							href="giaoDienSuaChiTiet?maDonHangChinh=${listChiTiet.get(0).donHang.maDonHang }">Chỉnh
								sửa số lượng</a>
					</tr>
				</table>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</body>
</html>