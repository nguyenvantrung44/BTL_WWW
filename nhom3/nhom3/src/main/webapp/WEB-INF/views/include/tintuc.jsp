<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Tin tức</title>
</head>

<body>
	<div class="container-fluid">
		<div>
			<jsp:include page="../include/_header.jsp"></jsp:include>
		</div>
	</div>
	<div class="header_nav_main section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<jsp:include page="menu2.jsp"></jsp:include>
					<div class="heade_menunav">


						<div class="blog_wrapper">

							<div class="clearfix"></div>
							<div class="container">
								<div class="row">

									<div
										class="blog_left_base col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-xs-last order-sm-last order-md-last">



										<!-- TIN TỨC LIÊN QUAN -->
										<div class="sidebar-right clearfix f-left w-100 margin-top-10">



											<div class="section_title_base">
												<h2 class="title_modules">
													<a href="/tin-tuc" title="Tin tức liên quan">Tin tức
														liên quan</a>
												</h2>
											</div>
											<div
												class="blog_content slick_blog slick_margin slick-initialized slick-slider">
												<button type="button" data-role="none"
													class="slick-prev slick-arrow slick-disabled"
													aria-label="Previous" role="button" aria-disabled="true"
													style="display: block;">Previous</button>
												<div aria-live="polite" class="slick-list draggable">
													<div class="slick-track"
														style="opacity: 1; width: 524px; transform: translate3d(0px, 0px, 0px);"
														role="listbox">
														<div class="slick-slide slick-current slick-active"
															data-slick-index="0" aria-hidden="false"
															style="width: 262px;" tabindex="-1" role="option"
															aria-describedby="slick-slide00">
															<div>
																<div class="single-recent-post"
																	style="width: 100%; display: inline-block;">
																	<div class="post-thumb">

																		<a class="image-blog"
																			href="/khi-thoi-trang-la-tham-hoa-thi-se-nhu-the-nao"
																			title="Bảo quản xe đạp điện trời mưa bão"
																			tabindex="0"> <img class="lazyload loaded"
																			src="../resources/images/tt1.jpg"
																			data-src="//bizweb.dktcdn.net/thumb/small/100/091/100/articles/thoi-trang-tham-hoa.jpg?v=1467428209137"
																			alt="Bảo quản xe đạp điện trời mưa bão"
																			data-was-processed="true">
																		</a>

																	</div>
																	<div class="post-info">
																		<h3>
																			<a title="Bảo quản xe đạp điện trời mưa bão"
																				href="/khi-thoi-trang-la-tham-hoa-thi-se-nhu-the-nao"
																				tabindex="0">Bảo quản xe đạp điện trời mưa bão</a>
																		</h3>
																		<div class="post-date">31/05/2016</div>
																	</div>
																</div>
															</div>
															<div>
																<div class="single-recent-post"
																	style="width: 100%; display: inline-block;">
																	<div class="post-thumb">

																		<a class="image-blog"
																			href="/trao-luu-chup-anh-song-giay-thinh-hang-tai-chau-au"
																			title="Thế Giới Xe Điện - Khuyến mại khủng tặng quà to"
																			tabindex="0"> <img class="lazyload loaded"
																			src="../resources/images/tt2.jpg"
																			alt="Thế Giới Xe Điện - Khuyến mại khủng tặng quà to"
																			data-was-processed="true">
																		</a>

																	</div>
																	<div class="post-info">
																		<h3>
																			<a
																				title="Thế Giới Xe Điện - Khuyến mại khủng tặng quà to"
																				href="/trao-luu-chup-anh-song-giay-thinh-hang-tai-chau-au"
																				tabindex="0">Thế Giới Xe Điện - Khuyến mại khủng
																				tặng quà to</a>
																		</h3>
																		<div class="post-date">31/05/2016</div>
																	</div>
																</div>
															</div>
															<div>
																<div class="single-recent-post"
																	style="width: 100%; display: inline-block;">
																	<div class="post-thumb">

																		<a class="image-blog"
																			href="/dan-sieu-mau-trinh-dien-thoi-trang-mua-thu-tai-london"
																			title="Kinh nghiệm giúp xe điện của bạn luôn được như mới"
																			tabindex="0"> <img class="lazyload loaded"
																			src="../resources/images/tt3.jpg"
																			alt="Kinh nghiệm giúp xe điện của bạn luôn được như mới"
																			data-was-processed="true">
																		</a>

																	</div>
																	<div class="post-info">
																		<h3>
																			<a
																				title="Kinh nghiệm giúp xe điện của bạn luôn được như mới"
																				href="/dan-sieu-mau-trinh-dien-thoi-trang-mua-thu-tai-london"
																				tabindex="0">Kinh nghiệm giúp xe điện của bạn
																				luôn được như mới</a>
																		</h3>
																		<div class="post-date">31/05/2016</div>
																	</div>
																</div>
															</div>
															<div>
																<div class="single-recent-post"
																	style="width: 100%; display: inline-block;">
																	<div class="post-thumb">

																		<a class="image-blog"
																			href="/nghe-thuat-phoi-mau-vintage-trong-thoi-trang-co-dien"
																			title="XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN"
																			tabindex="0"> <img class="lazyload loaded"
																			src="../resources/images/tt4.jpg"
																			alt="XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN"
																			data-was-processed="true">
																		</a>

																	</div>
																	<div class="post-info">
																		<h3>
																			<a title="XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN"
																				href="/nghe-thuat-phoi-mau-vintage-trong-thoi-trang-co-dien"
																				tabindex="0">XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN</a>
																		</h3>
																		<div class="post-date">31/05/2016</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="1"
															aria-hidden="true" style="width: 262px;" tabindex="-1"
															role="option" aria-describedby="slick-slide01">
															<div>
																<div class="single-recent-post"
																	style="width: 100%; display: inline-block;"></div>
															</div>
															<div></div>
															<div></div>
															<div></div>
														</div>
													</div>
												</div>
												<button type="button" data-role="none"
													class="slick-next slick-arrow" aria-label="Next"
													role="button" style="display: block;" aria-disabled="false">Next</button>
											</div>
										</div>
									</div>
									<div
										class="right-content col-xl-9 col-lg-9 col-md-12 margin-top-0">
										<section class="bread-crumb">
											<span class="crumb-border"></span>
											<div class="container no-padding">
												<div class="row">
													<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
														<ul class="breadcrumb">
															<li class="home"><a href="trangchu"><span>Trang
																		chủ</span></a> <span class="mr_lr">&nbsp;<i
																	class="fas fa-chervon-right"></i>&nbsp;
															</span></li>


															<li><strong><span>Tin tức</span></strong></li>


														</ul>
													</div>
												</div>
											</div>
										</section>
										<h1>Tin tức</h1>
										<div class="clearfix"></div>

										<div class="content_blog_new list-blogs blog-main">
											<div class="row row_blog_responsive">

												<div class="col-xl-6 col-lg-6">
													<div class="blog-item blog_page">
														<div class="blog-item-thumbnail">

															<a class="image-blog"
																href="/khi-thoi-trang-la-tham-hoa-thi-se-nhu-the-nao"
																title="Bảo quản xe đạp điện trời mưa bão"> <img
																class="lazyload loaded" src="../resources/images/tt1.jpg"
																alt="Bảo quản xe đạp điện trời mưa bão"
																data-was-processed="true">
															</a>

														</div>
														<h3 class="blog-item-name">
															<a href="/khi-thoi-trang-la-tham-hoa-thi-se-nhu-the-nao"
																title="Bảo quản xe đạp điện trời mưa bão">Bảo quản
																xe đạp điện trời mưa bão</a>
														</h3>
														<div class="postby">
															<div class="user">
																<i class="fas fa-user"></i> Nguyễn Văn Trung
															</div>
															<div class="clock">
																<i class="far fa-clock"></i> 20/06/2020
															</div>
														</div>
														<p class="blog-item-summary">Bảo quản xe đạp điện trời
															mưa bão...</p>

														<a href="/khi-thoi-trang-la-tham-hoa-thi-se-nhu-the-nao"
															class="btn btn-style btn-readmore" title="Đọc tiếp">Đọc
															tiếp</a>

													</div>
												</div>

												<div class="col-xl-6 col-lg-6">
													<div class="blog-item blog_page">
														<div class="blog-item-thumbnail">

															<a class="image-blog"
																href="/trao-luu-chup-anh-song-giay-thinh-hang-tai-chau-au"
																title="Thế Giới Xe Điện - Khuyến mại khủng tặng quà to">
																<img class="lazyload loaded"
																src="../resources/images/tt2.jpg"
																alt="Thế Giới Xe Điện - Khuyến mại khủng tặng quà to"
																data-was-processed="true">
															</a>

														</div>
														<h3 class="blog-item-name">
															<a
																href="/trao-luu-chup-anh-song-giay-thinh-hang-tai-chau-au"
																title="Thế Giới Xe Điện - Khuyến mại khủng tặng quà to">Thế
																Giới Xe Điện - Khuyến mại khủng tặng quà to</a>
														</h3>
														<div class="postby">
															<div class="user">
																<i class="fas fa-user"></i> Nguyễn Văn Trung
															</div>
															<div class="clock">
																<i class="far fa-clock"></i> 31/05/2016
															</div>
														</div>
														<p class="blog-item-summary">Thế Giới Xe Điện - Khuyến
															mại khủng tặng quà to...</p>

														<a
															href="/trao-luu-chup-anh-song-giay-thinh-hang-tai-chau-au"
															class="btn btn-style btn-readmore" title="Đọc tiếp">Đọc
															tiếp</a>

													</div>
												</div>

												<div class="col-xl-6 col-lg-6">
													<div class="blog-item blog_page">
														<div class="blog-item-thumbnail">

															<a class="image-blog"
																href="/dan-sieu-mau-trinh-dien-thoi-trang-mua-thu-tai-london"
																title="Kinh nghiệm giúp xe điện của bạn luôn được như mới">
																<img class="lazyload loaded"
																src="../resources/images/tt3.jpg"
																data-src="//bizweb.dktcdn.net/thumb/large/100/091/100/articles/img-1.jpg?v=1467428275097"
																alt="Kinh nghiệm giúp xe điện của bạn luôn được như mới"
																data-was-processed="true">
															</a>

														</div>
														<h3 class="blog-item-name">
															<a
																href="/dan-sieu-mau-trinh-dien-thoi-trang-mua-thu-tai-london"
																title="Kinh nghiệm giúp xe điện của bạn luôn được như mới">Kinh
																nghiệm giúp xe điện của bạn luôn được như mới</a>
														</h3>
														<div class="postby">
															<div class="user">
																<i class="fas fa-user"></i> Nguyễn Văn Trung
															</div>
															<div class="clock">
																<i class="far fa-clock"></i> 20/06/2020
															</div>
														</div>
														<p class="blog-item-summary">Kinh nghiệm giúp xe điện
															của bạn luôn được như mới...</p>

														<a
															href="/dan-sieu-mau-trinh-dien-thoi-trang-mua-thu-tai-london"
															class="btn btn-style btn-readmore" title="Đọc tiếp">Đọc
															tiếp</a>

													</div>
												</div>

												<div class="col-xl-6 col-lg-6">
													<div class="blog-item blog_page">
														<div class="blog-item-thumbnail">

															<a class="image-blog"
																href="/nghe-thuat-phoi-mau-vintage-trong-thoi-trang-co-dien"
																title="XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN"> <img
																class="lazyload loaded" src="../resources/images/tt4.jpg"
																data-src="//bizweb.dktcdn.net/thumb/large/100/091/100/articles/img-2.jpg?v=1467428290187"
																alt="XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN"
																data-was-processed="true">
															</a>

														</div>
														<h3 class="blog-item-name">
															<a
																href="http://dec.edu.vn/96/Tim-hieu-phong-cach-thoi-trang-co-dien-(classic)-DEC-TEAM"
																title="XẢ HÀNG CUỐI NĂM - MUA XE ĐẠP ĐIỆN">XẢ HÀNG
																CUỐI NĂM - MUA XE ĐẠP ĐIỆN</a>
														</h3>
														<div class="postby">
															<div class="user">
																<i class="fas fa-user"></i> Nguyễn Văn Trung
															</div>
															<div class="clock">
																<i class="far fa-clock"></i> 20/6/2020
															</div>
														</div>
														<p class="blog-item-summary">XẢ HÀNG CUỐI NĂM - MUA XE
															ĐẠP ĐIỆN...</p>

														<a
															href="/nghe-thuat-phoi-mau-vintage-trong-thoi-trang-co-dien"
															class="btn btn-style btn-readmore" title="Đọc tiếp">Đọc
															tiếp</a>

													</div>
												</div>



											</div>
											<div class="col-xs-12 text-right"></div>

										</div>

									</div>
								</div>
							</div>
							<jsp:include page="_footer.jsp"></jsp:include>

						</div>
						<div class="ab-module-article-mostview"></div>
					</div>
				</div>
			</div>
		</div>



	</div>



</body>



