<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--=== Navigation ===-->
				<ul id="nav">
					<li class="current">
						<a href="/StudentTrackingSystem/dashboard">
							<i class="icon-dashboard"></i>
							Dashboard
						</a>
					</li>
					<li >
						<a href="/StudentTrackingSystem/buses/list">
							<img alt="" src="<c:url value="/resources/bus.png " /> ">
							&nbsp;&nbsp;Buses
						</a>
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icol-map"></i>
							&nbsp;&nbsp;Map
							
						</a>
						
					</li>
					<li>
						<a href="/StudentTrackingSystem/students/list">
							<i class="icol-user-business"></i>
							&nbsp;&nbsp;Students
						</a>
						
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icos-car"></i>
							&nbsp;&nbsp;Drivers
						</a>
						
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icon-list-ol"></i>
							RFID
						</a>
					</li>
					<li>
						<a href="<c:url value="/j_spring_security_logout" />" >
							<i class="icon-key"></i>
							Log out
						</a>
					</li>
					
				</ul>