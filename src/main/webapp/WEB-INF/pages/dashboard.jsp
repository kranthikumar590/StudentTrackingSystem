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
							<a href="dashboard">Dashboard</a>
						</li>
						<li class="current">
							<a href="pages_calendar.html" title="">Calendar</a>
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
						<h3>Dashboard</h3>
						<span>Good morning, John!</span>
					</div>

					
				</div>
				<!-- /Page Header -->

				
			</div>
			<!-- /.container -->

		</div>
	</div>

</body>
</html>