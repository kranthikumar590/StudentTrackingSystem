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
	
	<script type="text/javascript">
	
		$(document).ready(function(){
			$("#showSingleSchoolDetails").click(function(){
				
				alert("hi");
			});
		});
		
		
		function madeAjaxCall(){
			$.ajax({
				type: "post",
				url: "http://localhost:8080/SpringExamples/employee/add.htm",
				cache: false,				
				data:'school_id=' + $("#firstName").val() + "&lastName=" + $("#lastName").val() + "&email=" + $("#email").val(),
				success: function(response){
					$('#result').html("");
					var obj = JSON.parse(response);
					$('#result').html("First Name:- " + obj.firstName +"</br>Last Name:- " + obj.lastName  + "</br>Email:- " + obj.email);
				},
				error: function(){						
					alert('Error while request..');
				}
			});
		}
	 </script>
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
					
					
					<div class="col-sm-6 col-md-3">
							<div class="statbox widget box box-shadow">
								<div class="widget-content">
									<div class="visual green" >
										<i class="icon-user"></i>
									</div>
									<div class="title">Total Schools</div>
									<div class="value">${schoolsListLength-1}</div>
									
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
											<th>Status</th>
											<th>option</th>
										</tr>
									</thead>
									<tbody>
										
										<c:forEach var="school" items="${schoolsList}">
											<c:if test="${school.role == 'ROLE_JUNIORADMIN' }">
									                <tr>
											                <td>
											                	<a data-toggle="modal" href="#myModal1" id="showSingleSchoolDetails">
											                		${school.school_name}
											                	</a>
											                	<input type="hidden" id="school_id" value="${school.school_id}">
											                </td>
											                <td>${school.admin_name}</td>
											                
											               	<td>
											                	<c:set var = "access" value="${school.access}"/>  
											                	
											                	<c:if test="${access == true}">
											                	
											                		<span class="label label-success">Approved</span>
											                	</c:if>
											                	<c:if test="${access == false}">
											                	
											                		<span class="label label-danger"> Not Approved</span>
											                	</c:if>
											              	</td>
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
									        </c:if>
           									 
								        </c:forEach>
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
						<!--=== Page Content ===-->
				<div class="row">
					<!--=== Validation Example 1 ===-->
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i>Registration Form</h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" id="validate-1" action="newSchoolRegister" method="post">
									<div class="form-group">
										<label class="col-md-3 control-label">School Name <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="school_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Admin Name <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="admin_name" class="form-control required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Number of Buses <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="no_buses" class="form-control required digits" min="0" value="0">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Number of Students <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="no_students" class="form-control required digits" min="0" value="0">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Email <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="email" class="form-control required email">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Phone Number <span class="required">*</span></label>
										<div class="col-md-9">
											<input type="text" name="phone_no" class="form-control required digits" rangelength="5,15">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Address <span class="required">*</span></label>
										<div class="col-md-9">
											<textarea  name="address" class="form-control required"></textarea>
											
										</div>
									</div>
									<div class="form-actions">
										<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Close</button>
										
										<input type="submit" value="Register" class="btn btn-primary pull-right">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
								</form>
							</div>
						</div>
						<!-- /Validation Example 1 -->
					</div>
					</div>
					</div>
					
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- end of Modal dialog -->
		
		
		<!-- Modal dialog for School Information -->
		<div class="modal fade" id="myModal1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" >&times;</button>
						<h4 class="modal-title">School Information</h4>
					</div>
					<div class="modal-body">
						<!--=== Page Content ===-->
				<div class="row">
					<!--=== Validation Example 1 ===-->
					<div class="col-md-12">
						<div class="widget box">
							<div class="widget-header">
								<h4><i class="icon-reorder"></i>School Name <span class="required">:</span> </h4>
							</div>
							<div class="widget-content">
								<form class="form-horizontal row-border" id="validate-1" action="#">
									<div class="form-group">
										<label class="col-md-3 control-label">School Name <span class="required">:</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Admin Name <span class="required">:</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Number of Buses <span class="required">:</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Number of Students <span class="required">:</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Email <span class="required">:</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Phone Number <span class="required">:</span></label>
										
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">Address <span class="required">:</span></label>
										
									</div>
									<div class="form-actions">
										<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Close</button>
										
										
									</div>
								</form>
							</div>
						</div>
						<!-- /Validation Example 1 -->
					</div>
					</div>
					</div>
					
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- end of Modal dialog -->
</body>
</html>