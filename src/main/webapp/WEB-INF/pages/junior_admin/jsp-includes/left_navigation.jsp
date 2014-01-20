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
						<a href="/StudentTrackingSystem/junior/buses/list">
							<img alt="" src="<c:url value="/resources/bus.png " /> ">
							&nbsp;&nbsp;Buses List
						</a>
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icol-map"></i>
							&nbsp;&nbsp;&nbsp;Map
							
						</a>
						
					</li>
					<li>
						<a href="/StudentTrackingSystem/junior/students/list">
							<i class="icol-user-business"></i>
							&nbsp;&nbsp;&nbsp;Students List
						</a>
						
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icol-user"></i>
							&nbsp;&nbsp;&nbsp;Drivers List
						</a>
						
					</li>
					<li>
						<a href="/StudentTrackingSystem/">
							<i class="icos-wifi-signal-2"></i>
							&nbsp;&nbsp;RFID List
						</a>
					</li>
					<li>
						<a href="<c:url value="/j_spring_security_logout" />" >
							<i class="icon-key"></i>
							Log out
						</a>
					</li>
					
				</ul>