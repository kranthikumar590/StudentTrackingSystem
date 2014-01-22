<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--=== Navigation ===-->
				<ul id="nav">
					<li class="current">
						<a href="/StudentTrackingSystem/senior/homepage">
							<i class="icon-dashboard"></i>
							Dashboard
						</a>
					</li>
					<li>
						<a href="/StudentTrackingSystem/senior/addschool">
							<i class="icon-group"></i>
							Add New School
						</a>
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icol-ui-text-field-password"></i>
							&nbsp;&nbsp;Change Password
						</a>
					</li>
					<li>
						<a href="<c:url value="/j_spring_security_logout" />" >
							<i class="icon-key"></i>
							Log out
						</a>
					</li>
					
				</ul>