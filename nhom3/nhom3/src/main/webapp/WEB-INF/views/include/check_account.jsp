<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<div class="col-md-8" id="navbar-header-right">
		<ul>
				<c:if test="${tentk!=null && tentk!='admin'}">
					<li><a
						href="<c:url value="/thongtincanhan?tenTaiKhoan=${tk.tenTaiKhoan }"/>"><span>Xem
								thông tin cá nhân</span></a></li>
					<li><a
						href="<c:url value="/dsDonHangKhachHang?tenTaiKhoan=${tk.tenTaiKhoan }"/>"><span>Đơn
								hàng</span></a></li>
				
				</c:if>

		</ul>
	</div>
</body>
</html>