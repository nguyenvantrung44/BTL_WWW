<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<style>
body {
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container_thanhtoan {
	background-color: #f2f2f2;
	padding: 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
}

.input_thanhtoan {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}
</style>
</head>

<body>
	<!-- _header.jsp  -->
	<div>
		<jsp:include page="../include/_header.jsp"></jsp:include>
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
						<h2>Thông tin của bạn</h2>

						<div class="row">
							<div>
								<h3>Thông tin cá nhân</h3>
							</div>
							<div class="col-sm-12">
								<form action="capnhat" method="POST">
									<div class="form-group">
										<label for="txtname"><i class="fa fa-user"></i>Họ và
											tên</label> <input class="form-control" type="text"
											name="tenNguoiDung" required="required"
											pattern="[a-zA-Z ]+"
											title="Tên chỉ chứa chữ cái và khoảng trắng !"
											value="${kh.tenNguoiDung }" />
									</div>

									<div class="form-group">
										<label for="txtname"><i class="fa fa-envelope"></i>Email</label>
										<input class="form-control" type="text" name="email"
											required="required" value="${kh.email }" readonly>
									</div>
									<div class="form-group">
										<label for="txtname"><i class="fa fa-address-card"></i>Số
											CMND</label> <input class="form-control" type="text" name="soCMND"
											pattern="^[1-9]{1}[0-9]{8,11}"
											title="Số CMND/CCCD 8 hoặc 12 số !"
											required="required" value="${kh.soCMND }">
									</div>
									<div class="form-group">
										<label for="txtname"><i class="fa fa-calendar"></i>Ngày
											Sinh</label> <input class="form-control" type="text" name="ngaySinh"
											required="required" value="${kh.ngaySinh }"
											readonly="readonly">
									</div>
									<div class="form-group">
										<label for="txtname"><i class="fa fa-map-marker"></i>Địa
											chỉ nhận hàng</label> <input class="form-control" type="text"
											pattern="[a-zA-Z ]+"
											title="Địa chỉ sai !"
											name="diaChi" required="required" value="${kh.diaChi }">
									</div>

									<div class="form-group">
										<label for="txtname"><i class="fa fa-phone-square"></i>Số
											điện thoại</label> <input class="form-control" type="text"
											name="soDienThoai" required="required"
											pattern="^0[0-9]{9}"
											title="Số điện thoại có 10 chữ số !"
											value="${kh.soDienThoai }">
									</div>
									<button style="height: 4em;" type="submit" value="Lưu"
										class="btn">Lưu thông tin</button>
								</form>
							</div>
						</div>

						<script>
							function thongbao() {
								confirm("Lưu thông tin thành công");
							}
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>