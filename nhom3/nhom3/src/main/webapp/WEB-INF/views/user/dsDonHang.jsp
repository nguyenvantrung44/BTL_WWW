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
	<jsp:include page="../admin/adminpage.jsp"></jsp:include>
	<div class="container form-text">
		<div class="row">
			<div class="col-sm-10">
				<h1>Danh sách Đơn Hàng</h1>
			</div>
			<div class="col-sm-12">
				<table>
					<tr style="background-color: gray; font-size: 1em; font-style: inherit;">
						<th>Mã đơn hàng</th>
						<th>Ngày lập</th>
						<th>Mã khách hàng</th>
						<th>Chi tiết</th>

					</tr>
					<c:forEach items="${listDonHang }" var="sp">
						<tr>
							<td>${sp.maDonHang }</td>
							<td>${sp.ngayLap }</td>
							<td>${sp.khachHang.maNguoiDung }</td>
							<td><a class="btn btn-primary"
								href="<c:url value="/admin/dsChiTiet?maDonHang=${sp.maDonHang }"/>">Xem
									chi tiết</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</body>
</html>