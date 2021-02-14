<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Creat An Account || Witter Multipage Responsive Template</title>

</head>
<body>


	<!-- Start header section -->
	<jsp:directive.include file="header.jsp" />
	<!-- / header section -->
	<div class="all-content-wrapper">

		<div class="product-status mg-b-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap">
							<h4>Customer</h4>
							<div class="add-product">
								<a href="<%=request.getContextPath()%>/admin/addUser">Thêm
									khách hàng</a>
							</div>
							<table>
								<tr>
									<th>#</th>
									<th>UserName</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Address</th>
									<th>Gender</th>
									<th>Level</th>
									<th>Thao tác</th>
								</tr>
								<c:forEach items="${listAllUser}" var="users">
									<tr>
										<td></td>
										<td>${users.username }</td>
										<td>${users.email }</td>
										<td>${users.phone }</td>
										<td>${users.address }</td>
										<td>${users.gender }</td>
										<td><c:if test="${users.level==2 }">
												<p>Admin</p>
											</c:if> <c:if test="${users.level==1 }">
												<p>User</p>
											</c:if></td>
										<td><a
											href="<%=request.getContextPath()%>/admin/editCustomter/${users.idUser}">
												<button data-toggle="tooltip" title="Edit"
													class="pd-setting-ed">
													<i class="fa fa-pencil-square-o" aria-hidden="true"> </i>
												</button>
										</a> <a onclick="return confirm('Bạn có chắc muốn xóa')"
											href="<%=request.getContextPath()%>/admin/deleteUser/${users.idUser}">
												<button data-toggle="tooltip" title="Trash"
													class="pd-setting-ed">
													<i class="fa fa-trash-o" aria-hidden="true"> </i>
												</button>
										</a></td>
									</tr>
								</c:forEach>


							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--FOOTER -->

	<jsp:directive.include file="footer.jsp" />

	<!-- END FOOTER -->
</body>
</html>