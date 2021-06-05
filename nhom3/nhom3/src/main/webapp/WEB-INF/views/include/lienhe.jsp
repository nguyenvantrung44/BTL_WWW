<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="<c:url value="/resources/css/css.css"/>" rel='stylesheet'
	type='text/css' />
<title>Liên Hệ</title>
</head>

<body>
	<input type="hidden" value="${tk.tenTaiKhoan }" name="tenTaiKhoan">
	<c:set var="tentk" value="${tk.tenTaiKhoan }" scope="session"></c:set>
	<div class="container-fluid">
		<div>
			<jsp:include page="../include/_header.jsp"></jsp:include>
		</div>
	</div>
	<div class="header_nav_main section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="heade_menunav">
						<!-- _footer.jsp -->
						<div>
							<jsp:include page="menu2.jsp"></jsp:include>
						</div>
						<div id="menu-overlay" class=""></div>
						<section class="bread-crumb">
							<span class="crumb-border"></span>
							<div class="container ">
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
										<ul class="breadcrumb">
											<li class="home"><a href="trangchu"><span>Trang
														chủ</span></a> <span class="mr_lr">&nbsp;<i
													class="fas fa-chervon-right"></i>&nbsp;
											</span></li>

											<li><strong><span>Liên Hệ</span></strong></li>

										</ul>
									</div>
								</div>
							</div>
						</section>
						<section class="page">
							<div class="container">
								<div
									class="wrap_background_aside padding-top-15 margin-bottom-40">
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12">
											<div class="page-title category-title">
												<h1 class="title-head">
													<strong><a href="#">LIÊN HỆ VỚI CHÚNG TÔI</a></strong>
												</h1>
											</div>
											<div class="content-page rte">
												<p style="text-align: justify;">
												<h4>
													<strong>Mọi thắc mắc, phản hồi xin vui lòng liên
														hệ</strong>
												</h4>
												</p>

												<p style="text-align: justify;">&nbsp;</p>

												<p style="text-align: justify;">
												<h4>
													Hotline bán hàng: <span style="color: BLUE;">093.289.2233</span>
												</h4>
												</p>

												<p style="text-align: justify;">&nbsp;</p>

												<p style="text-align: justify;">
												<h4>
													Hotline kỹ thuật, cứu hộ: <span style="color: BLUE;">093.298.2233</span>
												</h4>
												</p>

												<p style="text-align: justify;">&nbsp;</p>

												<p style="text-align: justify;">
												<h4>
													Chăm sóc khách hàng: <span style="color: BLUE;">cskh@thegioixedien.vn</span>
												</h4>
												</p>

												<p style="text-align: justify;">&nbsp;</p>



												<p style="text-align: justify;">&nbsp;</p>

												<p>
													<iframe
														src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.856369942465!2d106.68526211431734!3d10.822301761305715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174deb3ef536f31%3A0x8b7bb8b7c956157b!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBUUC5IQ00!5e0!3m2!1svi!2s!4v1616171424054!5m2!1svi!2s"
														width="600" height="450" style="border: 0;"
														allowfullscreen="" loading="lazy"></iframe>
												</p>

												<p style="text-align: justify;">&nbsp;</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- _footer.jsp -->
							<div>
								<jsp:include page="_footer.jsp"></jsp:include>
							</div>
						</section>
					</div>


				</div>


			</div>


		</div>



	</div>




</body>



