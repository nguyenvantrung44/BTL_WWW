
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Thêm sản phẩm</title>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>

<body>

	<jsp:include page="adminpage.jsp"></jsp:include>
	<div class="container form-text">
		<div class="row">
			<div class="col-sm-12">
				<h1>Thêm Sản Phẩm</h1>
			</div>
			<div class="col-sm-12">
				<!-- Form Thêm sản phẩm -->
				<form:form action="themSanPham" method="POST"
					modelAttribute="sanPhamThem" enctype="multipart/form-data">
					<!-- Tên sản phẩm -->
					<div class="form-group">
						<label for="txtname">Tên sản phẩm</label> <input
							class="form-control" name="tenSanPham" 
							required="required"  title="Tên sản phẩm không được rỗng!"/>
					</div>

					<!-- Mô tả sản phẩm -->
					<div class="form-group">
						<label for="txtname">Mô tả sản phẩm</label> <input
							class="form-control" name="moTa"
							required="required"  title="Mô tả sản phẩm không được rỗng!"/>

					</div>
					<!-- Đơn vị tính sản phẩm -->
					<div class="form-group">
						<label for="txtname">Đơn vị tính của sản phẩm</label> <input
							class="form-control" name="donViTinh"  value="Chiếc"
							readonly="readonly"/>
					</div>

					<!-- Số lượng sản phẩm -->
					<div class="form-group">
						<label for="txtquantity">Số lượng sản phẩm</label> <input
							class="form-control" name="soLuongNhap" type="number"
							min="1" step="1"
							required="required" pattern="^[1-9][0-9]*" title="Số lượng lớn hơn 1 !"/>
					</div>
					<!-- Giá sản phẩm -->
					<div class="form-group">
						<label for="txtprice">Giá sản phẩm</label> <input
							class="form-control" name="donGia" type="number"
							 min="1000000" max="200000000" step="100000" value="1000000"
							required="required" pattern="[0-9]" title="Giá là số !"/>
				 	</div>
				<!--	Ngày sản xuất sản phẩm
					<div class="form-group">
						<label for="txtngay">Ngày sản phẩm</label> <input type="date"
							name="txtngay" class="form-control">
					</div> -->
					<div class="form-group">
						<label>Nhà sản xuất</label> <select name="txtNhaCungCap">
							<c:forEach items="${listNCC }" var="n">
								<option>${n.tenNhaCungCap }</option>
							</c:forEach>
						</select>
					</div>
					<!-- Loại sản phẩm -->
					<div class="form-group">
						<label>Danh Mục</label> <select name="txtDanhMuc">
							<c:forEach items="${listDanhMuc }" var="d">
								<option>${d.tenDanhMuc }</option>
							</c:forEach>
						</select>

					</div>

					<div class="form-group">
						<label for="txtpic">Url Hình ảnh</label>
						<div class="custom-file">
							<input type="file" id="txtpic" name="fileanh"> <span
								style="color: red;">${mess}</span>
						</div>


						<button type="submit" class="btn btn-primary" name="btnsubmit"
							style="margin-top: 30px;">Thêm sản phẩm</button>
					</div>
				</form:form>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</body>

</html>