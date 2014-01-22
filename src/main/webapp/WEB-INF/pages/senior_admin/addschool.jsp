<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- <a href="<c:url value="/j_spring_security_logout" />" > Logout</a>  -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Dashboard</title>

<!-- Include CSS files -->
<%@ include file="jsp-includes/css_files.jsp"%>

<!-- Include JS files -->
<%@ include file="jsp-includes/js_files.jsp"%>


</head>

<body>

	<!-- Include top navigation -->
	<%@include file="jsp-includes/top_navigation.jsp"%>

	<div id="container">
		<div id="sidebar" class="sidebar-fixed">
			<div id="sidebar-content">




				<!-- Left Navigation -->
				<%@include file="jsp-includes/left_navigation.jsp"%>





			</div>



			<div id="divider" class="resizeable"></div>

		</div>
		<!-- /Sidebar -->

		<div id="content">
			<div class="container">
				<!-- Breadcrumbs line -->
				<div class="crumbs">
					<ul id="breadcrumbs" class="breadcrumb">
						<li><i class="icon-home"></i> Dashboard</li>
						<li>New School Registration</li>

					</ul>

					<ul class="crumb-buttons">


						<li class="range"><a href="#"> <i class="icon-calendar"></i>
								${date}
						</a></li>
					</ul>
				</div>
				<!-- /Breadcrumbs line -->

				<!--=== Page Header ===-->
				<div class="page-header">

					<div class="page-title">
						<h3>Schools</h3>
						<span>Register School</span>
					</div>
					<br>
					<div class="col-sm-4 col-md-1"></div>


					<!-- <div class="col-sm-6 col-md-3">
							<div class="statbox widget box box-shadow">
								<div class="widget-content">
									<div class="visual green" >
										<i class="icon-user"></i>
									</div>
									<div class="title">Total Schools</div>
									<div class="value">14</div>
									
								</div>
								
							</div> /.smallstat
							
					</div> /.col-md-3 -->

				</div>
				<!-- /Page Header -->

				<!--    Students List  -->

				<!--=== Managed Tables ===-->
				<c:if test="${schollcreated == 'no' }">

					<!--=== Normal ===-->
					<div class="row">
						<div class="col-md-8">
							<div class="widget box">
								<div class="widget-header">
									<h4>
										<i class="icon-reorder"></i>New School Registration Form
									</h4>
									<div class="toolbar no-padding">
										<div class="btn-group">
											<span class="btn btn-xs widget-collapse"><i
												class="icon-angle-down"></i></span>
										</div>
									</div>
								</div>
								<div class="widget-content">
									<form class="form-horizontal row-border" id="validate-1"
										action="newSchoolRegister" method="post">
										<div class="form-group">
											<label class="col-md-3 control-label">School Name <span
												class="required">*</span></label>
											<div class="col-md-9">
												<input type="text" name="school_name"
													class="form-control required">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Admin Name <span
												class="required">*</span></label>
											<div class="col-md-9">
												<input type="text" name="admin_name"
													class="form-control required">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Number of Buses
												<span class="required">*</span>
											</label>
											<div class="col-md-9">
												<input type="text" name="no_buses"
													class="form-control required digits" min="0" value="0">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Number of
												Students <span class="required">*</span>
											</label>
											<div class="col-md-9">
												<input type="text" name="no_students"
													class="form-control required digits" min="0" value="0">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Email <span
												class="required">*</span></label>
											<div class="col-md-9">
												<input type="text" name="email"
													class="form-control required email">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Phone Number <span
												class="required">*</span></label>
											<div class="col-md-9">
												<input type="text" name="phone_no"
													class="form-control required digits" rangelength="5,15">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Address <span
												class="required">*</span></label>
											<div class="col-md-9">
												<textarea name="address" class="form-control required"></textarea>

											</div>
										</div>
										<div class="form-actions">


											<input type="submit" value="Register"
												class="btn btn-primary pull-right">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- /Normal -->
				</c:if>
				<c:if test="${schollcreated == 'yes' }">

					<div class="alert alert-success fade in" style="width: 500px;">
						<i class="icon-remove close" data-dismiss="alert"></i> <strong>Success!
							The School has been successfully added.</strong>
					</div>
					<!--=== Normal ===-->
					<div class="row">
						<div class="col-md-8">
							<div class="widget box">
								<div class="widget-header">
									<h4>
										<i class="icon-reorder"></i>School
									</h4>
									<div class="toolbar no-padding">
										<div class="btn-group">
											<span class="btn btn-xs widget-collapse"><i
												class="icon-angle-down"></i></span>
										</div>
									</div>
								</div>
								<div class="widget-content">
									<form class="form-horizontal row-border" id="validate-1"
										action="newSchoolRegister" method="post">
										<div class="form-group">
											<label class="col-md-3 control-label">School Name <span>:</span></label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.school_name }"></c:out>
											</p>

										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Admin Name <span>:</span></label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.admin_name }"></c:out>
											</p>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Number of Buses
												<span>:</span>
											</label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.no_of_buses}"></c:out>
											</p>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Number of
												Students <span>:</span>
											</label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.no_of_schools}"></c:out>
											</p>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Email <span>:</span></label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.email }"></c:out>
											</p>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Phone Number <span>:</span></label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.ph_no }"></c:out>
											</p>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">Address <span>:</span></label>
											<p style="color: sienna; font-size: 15px;">
												<c:out value="${school.address }"></c:out>
											</p>
										</div>

									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- /Normal -->
				</c:if>

			</div>
			<!-- /.container -->

		</div>
	</div>




</body>
</html>