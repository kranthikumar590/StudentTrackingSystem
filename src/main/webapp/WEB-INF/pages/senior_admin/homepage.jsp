<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- <a href="<c:url value="/j_spring_security_logout" />" > Logout</a>  -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<title>Dashboard</title>

	<!-- Include CSS files -->
	<%@ include file="jsp-includes/css_files.jsp" %>

	<!-- Include JS files -->
	<%@ include file="jsp-includes/js_files.jsp" %>

	
</head>

<body>

	<!-- Include top navigation -->
	<%@include file="jsp-includes/top_navigation.jsp" %>
	
	<div id="container">
		<div id="sidebar" class="sidebar-fixed">
			<div id="sidebar-content">

				
				
		
				<!-- Left Navigation -->
				<%@include file="jsp-includes/left_navigation.jsp" %>
					
					
				

				
			</div>
			
			
			
			<div id="divider" class="resizeable"></div>
			
		</div>
		<!-- /Sidebar -->

		<div id="content">
			<div class="container">
				<!-- Breadcrumbs line -->
				<div class="crumbs">
					<ul id="breadcrumbs" class="breadcrumb">
						<li>
							<i class="icon-home"></i>
							Dashboard
						</li>
						<li >
							Schools List
						</li>
						
					</ul>

					<ul class="crumb-buttons">
						
						
						<li class="range">
							<a href="#">
								<i class="icon-calendar"></i>
								${date}
							</a>
						</li>
					</ul>
				</div>
				<!-- /Breadcrumbs line -->

				<!--=== Page Header ===-->
				<div class="page-header">
					
					<div class="page-title">
						<h3>Schools List</h3>
						<span>Create,Update,Delete Schools List</span>
					</div>		
					<br>
					<div class="col-sm-4 col-md-1">
					
					</div>
					<div class="col-md-4" style="width:240px;" align="right">
										
						<a data-toggle="modal" href="#myModal"  class="btn btn-icon input-block-level" id="add_new_rfid">
								<i class="icon-group">&nbsp;&nbsp;&nbsp;New School registration</i>
						</a>
						
					</div>
					
					<div class="col-sm-6 col-md-3">
							<div class="statbox widget box box-shadow">
								<div class="widget-content">
									<div class="visual green" >
										<i class="icon-user"></i>
									</div>
									<div class="title">Total Schools</div>
									<div class="value">14</div>
									
								</div>
								
							</div> <!-- /.smallstat -->
							
					</div> <!-- /.col-md-3 -->	
					
				</div>
				<!-- /Page Header -->
				
 				<!--    Students List  -->
 				
				<!--=== Managed Tables ===-->

				<!--=== Normal ===-->
				<div class="row">
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i>Schools List</h4>
								<div class="toolbar no-padding">
									<div class="btn-group">
										<span class="btn btn-xs widget-collapse"><i class="icon-angle-down"></i></span>
									</div>
								</div>
							</div>
							<div class="widget-content">
								<table class="table table-striped table-bordered table-hover table-checkable datatable">
									<thead>
										<tr>
											
											<th>School Name</th>
											<th>Admin Name</th>
											<th>Number of buses</th>
											<th>No of Students</th>
											<th>Status</th>
											<th>option</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											
											<td>
												<a href="#">St John Paul</a>
											</td>
											<td>Abid</td>
											<td>10</td>
											<td>200</td>
											<td><span class="label label-success">Approved</span></td>
											<td>
												<a href="#">
													<button class="btn btn-sm">
														Edit &nbsp;<i class=icon-edit></i>
													</button>
												</a>
												<a data-toggle="modal" href="#myModal1" class="btn btn-sm">
													Delete &nbsp;<i class=icol-delete></i>
												</a>
											</td>
										</tr>
										<tr>
											
											<td>
												<a href="#">St John Paul</a>
											</td>
											<td>Abid</td>
											<td>10</td>
											<td>200</td>
											<td><span class="label label-success">Approved</span></td>
											<td>
												<a href="#">
													<button class="btn btn-sm">
														Edit &nbsp;<i class=icon-edit></i>
													</button>
												</a>
												<a data-toggle="modal" href="#myModal1" class="btn btn-sm">
													Delete &nbsp;<i class=icol-delete></i>
												</a>
											</td>
										</tr><tr>
											
											<td>
												<a href="#">St John Paul</a>
											</td>
											<td>Abid</td>
											<td>10</td>
											<td>200</td>
											<td><span class="label label-success">Approved</span></td>
											<td>
												<a href="#">
													<button class="btn btn-sm">
														Edit &nbsp;<i class=icon-edit></i>
													</button>
												</a>
												<a data-toggle="modal" href="#myModal1" class="btn btn-sm">
													Delete &nbsp;<i class=icol-delete></i>
												</a>
											</td>
										</tr><tr>
											
											<td>
												<a href="#">St John Paul</a>
											</td>
											<td>Abid</td>
											<td>10</td>
											<td>200</td>
											<td><span class="label label-success">Approved</span></td>
											<td>
												<a href="#">
													<button class="btn btn-sm">
														Edit &nbsp;<i class=icon-edit></i>
													</button>
												</a>
												<a data-toggle="modal" href="#myModal1" class="btn btn-sm">
													Delete &nbsp;<i class=icol-delete></i>
												</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- /Normal -->
			</div>
			<!-- /.container -->

		</div>
	</div>
	
		<!-- Modal dialog -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" >&times;</button>
						<h4 class="modal-title">New School Registration</h4>
					</div>
					<div class="modal-body">
							One fine body&hellip;
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- end of Modal dialog -->
		
</body>
</html>