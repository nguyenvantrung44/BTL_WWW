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
<title>Chỉnh Sửa</title>
</head>

<body>
	<jsp:include page="adminpage.jsp"></jsp:include>
	<div class="container form-text">
		<div class="row">
			<div class="col-sm-12">
				<h1>Danh sách Sản Phẩm</h1>
			</div>
			<div class="col-sm-12">
				<table>
					<tr style="background-color: gray; font-size: 1em; font-style: inherit;">
						<th>Mã Đơn Hàng</th>
						<th>Tên sản phẩm</th>
						<th>Đơn giá</th>
						<th>Số lượng
						</th>
						<th>Cập nhật</th>
					</tr>
					<c:forEach items="${listChiTiet }" var="c">
						<form method="POST" action="capnhatChiTiet">
							<tr>
								<td>${c.donHang.maDonHang }</td>
								<td>${c.sanPham.tenSanPham }</td>
								<td><fmt:formatNumber value="${c.donGia}" type="currency" /></td>
								<td><input class="form-control text-center" type="number"
									name="soLuong" value="${c.soLuong }" required="required"
									step="1" min="1" max="10"></td>
								<td><input type="submit" value="Cập nhật" /></td>
							</tr>

							<input type="hidden" name="maDonHang"
								value="${c.donHang.maDonHang}" /> <input type="hidden"
								name="maSanPham" value="${c.sanPham.maSanPham }" />
						</form>
					</c:forEach>
				</table>

			</div>
		</div>
	</div>
</body>