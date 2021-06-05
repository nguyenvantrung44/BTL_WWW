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
<title>Danh sách sản phẩm</title>
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
					<tr
						style="background-color: gray; font-size: 1em; font-style: inherit;">
						<th>Mã sản phẩm</th>
						<th>Tên sản phẩm</th>
						<th>Mô tả</th>
						<th>Ngày sản xuất</th>
						<th>Đơn vị tính</th>
						<th>Đơn giá</th>
						<th>Số lượng nhập</th>
						<th>Tên danh mục</th>
						<th>Tên nhà cung cấp</th>
						<th>Trạng thái kinh doanh</th>
						<th colspan="2">Action</th>

					</tr>
					<c:forEach items="${listSanPham }" var="sp">
						<tr>
							<td>${sp.maSanPham }</td>
							<td>${sp.tenSanPham }</td>
							<td>${sp.moTa }</td>
							<td>${sp.ngaySanXuat }</td>
							<td>${sp.donViTinh }</td>
							<td><span class="product_price"> <fmt:setLocale
										value="vi_VN" /> <fmt:formatNumber value="${sp.donGia}"
										type="currency" />
							</span></td>
							<td>${sp.soLuongNhap }</td>
							<td>${sp.danhMuc.tenDanhMuc }</td>
							<td>${sp.nhaCungCap.tenNhaCungCap }</td>
							<td><c:choose>
									<c:when test="${sp.trangThai=='true'}">
										Kinh Doanh
									</c:when>
									<c:otherwise>
										<p style="color: red;">Ngừng Kinh Doanh</p>
									</c:otherwise>
								</c:choose></td>
							<td><a href="formSuaSanPham?idsua=${sp.maSanPham }"
								type="button" class="btn btn-primary">Edit</a></td>
							<td><c:choose>
									<c:when test="${sp.trangThai=='true'}">
										<a href="kdSanPham?idxoa=${sp.maSanPham }" type="button"
											class="btn btn-danger">OFF</a>
									</c:when>
									<c:otherwise>
										<a href="kdSanPham?idxoa=${sp.maSanPham }" type="button"
											class="btn btn-danger">ON</a>
									</c:otherwise>
								</c:choose></td>

						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</body>

</html>