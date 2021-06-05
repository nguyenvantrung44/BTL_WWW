<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
</head>
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
	height: 50px;
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
					</div>
					<h2>Thế giới xe điện</h2>
					<p>Vui lòng nhập đúng thông tin trước khi thanh toán</p>
					<div class="row">
						<div class="col-75">
							<div class="container_thanhtoan">
								<form action="xacnhanthanhtoan" method="POST">
									<div class="row">
										<div class="col-50">
											<h3>Thông tin cá nhân</h3>
											<label for="fname"><i class="fa fa-user"></i> Họ và
												tên:</label> <input class="input_thanhtoan" type="text"
												value="${kh.tenNguoiDung }" pattern="[a-zA-Z ]+"
												title="Tên Không Được Nhập Số Hoặc Kí Tự Đặt Biệt"
												name="tenkh" required="required" /> <label for="email"><i
												class="fa fa-envelope"></i> Email</label> <input
												class="input_thanhtoan" type="text" value="${kh.email}"
												name="email" readonly="readonly" /> <label for="adr"><i
												class="fa fa-map-marker"></i> Địa chỉ nhận hàng:</label> <input
												class="input_thanhtoan" type="text"
												title="Địa Chỉ Không Được Nhập Kí Tự Đặt Biệt"
												value="${kh.diaChi}" name="diachi" />
											<div class="row">
												<div class="col-50">
													<label for="soDienThoai"><i
														class="fa fa-phone-square"></i>Số điện thoai: </label> <input
														class="input_thanhtoan" type="text" name="sdt"
														title="Số điện thoại có 10 số" value="${kh.soDienThoai}" />
												</div>
											</div>
										</div>

										<div class="col-50">
											<h3>Hình thức thanh toán</h3>
											<label for="fname">Thanh toán tại nhà</label>
										</div>

									</div>

									<input type="hidden" name="action" value="xacnhanthanhtoan">
									<button type="submit" value="Xác Nhận Thanh Toán" class="btn">Xác
										Nhận Thanh Toán</button>
								</form>
								<script>
									function thongbao() {
										confirm("Đơn hàng đã được đặt thành công!!!");
									}
								</script>
							</div>
						</div>
						<div class="col-25">
							<div class="container_thanhtoan">
								<h4>
									Danh sách sản phẩm <span class="price" style="color: black"><i
										class="fa fa-shopping-cart"></i> <b>${cart.soLuongItiem() }</b></span>
								</h4>


								<c:forEach items="${cart.getGioHang()}" var="sp">
									<p>
										<a href="#">${sp.tenSanpham }</a> <br> <span
											class="price">SL:${sp.soLuong } Chiếc <br>Đơn
											giá:<fmt:setLocale value="vi_VN" /> <fmt:formatNumber
												value="${sp.soLuong*sp.donGia}" type="currency" />
										</span>
									</p>
									<br />
								</c:forEach>


								<hr>
								<p>
									Tổng tiền: <span class="price" style="color: black"><b>
											<fmt:setLocale value="vi_VN" /> <fmt:formatNumber
												value="${cart.TongTien() }" type="currency" />
									</b></span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>