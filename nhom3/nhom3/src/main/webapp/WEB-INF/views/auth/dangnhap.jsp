<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

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
<link href="<c:url value="/resources/css/csslogin.css"/>"
	rel='stylesheet' type='text/css' />
<title>Đăng Nhập</title>
</head>


<body>
	<div class="container">
		<div class="row vertical-center-row">
			<div class="col-md-4 col-center-block login-widget">
				<h1 class="text-center">
					<i class="fa fa-dot-circle-o"></i>Đăng Nhập
				</h1>
				<div>

					<form action="/nhom3/auth/dangnhap" method="POST">
						<div class="form-group">
							<div class="input-group">

								<div class="input-group-addon">
									<i class="fa fa-user fa-fw"></i>
								</div>
								<input  class="form-control"
									placeholder="Tên đăng nhập" type="text" name="email" />
							</div>

						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-key fa-fw"></i>
								</div>
								<input class="form-control" placeholder="******" type="password"
									name="password" />

							</div>
							 

						</div>
						<input type="hidden" name="action" value="dangnhap">
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Đăng
								Nhập</button>
							<hr>
						</div>
					</form>
					<p class="text-center">
						Bạn có tài khoản không? <strong><a href="showformdangki"
							class="blue-text">Đăng ký ngay!</a></strong>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>