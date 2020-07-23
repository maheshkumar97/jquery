<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script type="text/javascript">
	$(function() {
		$('#dialogMsg').dialog();
	});
	$(function() {
		$("#accordion-2").accordion({
			collapsible : true
		});
	});

	$(function() {
		var availableTutorials = [ "ActionScript", "Bootstrap", "C", "C++", ];
		$("#automplete-1").autocomplete({
			source : availableTutorials
		});
	});

	$(function() {
		$(".tooltip-1").tooltip();
	});

	$(function() {
		$("#menu-2").menu({
			icons : {
				submenu : "ui-icon-circle-triangle-e"
			},
			position : {
				my : "right top",
				at : "right-10 top+5"
			}
		});
	});
</script>
</head>

<body>

	<div id="dialogMsg" title="Student Form">
		Student first name: ${student.firstName} Student last name:
		${student.lastName } Student Country: ${student.country } Student
		Gender: ${student.gender } Hobbies
		<ul>
			<c:forEach var="meal" items="${student.hobby}">
				<li>${meal}</li>
			</c:forEach>
		</ul>

	</div>

	<div
		style="width: inherit; text-align: center; padding: 25px; background: #00b3b3;">
		<h1>Hello this is my first JqueryUI example.</h1>
	</div>

	<ul
		style="width: 20%; height: 100%; position: absolute; display: block"
		id="menu-2">
		<li><a href="#">Spring</a></li>
		<li><a href="#">Hibernate</a></li>
		<li><a href="#">Java</a>
			<ul>
				<li><a href="#">Java IO</a></li>
				<li><a href="#">Swing</a></li>
				<li><a href="#">Jaspr Reports</a></li>
			</ul></li>
		<li><a href="#">JSF</a></li>
		<li><a href="#">HTML5</a></li>
	</ul>


	<div style="margin-left: 21%; position: relative;" id="accordion-2">
		<h3>What is Java?</h3>
		<div>
			<p>Java is a programming language and computing platform first
				released by Sun Microsystems in 1995. ... Java is fast, secure, and
				reliable. From laptops to datacenters, game consoles to scientific
				supercomputers, cell phones to the Internet, Java is everywhere!</p>
		</div>
		<h3>What is Spring Freamwork?</h3>
		<div>
			<p>The Spring Framework is an application framework and inversion
				of control container for the Java platform. The framework's core
				features can be used by any Java application, but there are
				extensions for building web applications on top of the Java EE
				platform.</p>
		</div>
		<h3>What is Struts?</h3>
		<div>
			<p>Struts is an open source framework that extends the Java
				Servlet API and employs a Model, View, Controller (MVC)
				architecture. It enables you to create maintainable, extensible, and
				flexible web applications based on standard technologies, such as
				JSP pages, JavaBeans, resource bundles, and XML</p>
		</div>
	</div>

	<div style="margin-left: 21%; position: relative;" class="ui-widget">
		<p>You can search here</p>
		<label for="automplete-1">Tags: </label> <input id="automplete-1"
			class="tooltip-1" name="Enter a/s/c to see autocomplete option">
	</div>
	<!-- ----------------------Tabs--------------------------- -->
	<script type="text/javascript">
		$(function() {
			$("#tabs-1").tabs();
		});
	</script>
	<div style="margin-left: 21%; position: relative;" id="tabs-1">
		<ul>
			<li><a href="#tabs-2">Model</a></li>
			<li><a href="#tabs-3">Model and View</a></li>
			<li><a href="#tabs-4">View</a></li>
		</ul>
		<div id="tabs-2">
			<p>In Spring MVC, the model works a container that contains the
				data of the application. Here, a data can be in any form such as
				objects, strings, information from the database, etc. ... The object
				of HttpServletRequest reads the information provided by the user and
				pass it to the Model interface.</p>
		</div>
		<div id="tabs-3">
			<p>ModelAndView is a holder for both Model and View in the web
				MVC framework. These two classes are distinct; ModelAndView merely
				holds both to make it possible for a controller to return both model
				and view in a single return value.</p>
		</div>
		<div id="tabs-4">
			<p>View is nothing but html page</p>
		</div>
		<!-- -------------------------------------------------------------------------- -->
		<script>
			$(function() {
				$("#slider-3").slider(
						{
							range : true,
							min : 0,
							max : 500,
							values : [ 35, 200 ],
							slide : function(event, ui) {
								$("#price").val(
										"$" + ui.values[0] + " - $"
												+ ui.values[1]);
							}
						});
				$("#price").val(
						"$" + $("#slider-3").slider("values", 0) + " - $"
								+ $("#slider-3").slider("values", 1));
			});
		</script>
		<p>
			<label for="price">Simple price range</label> <input type="text"
				id="price" style="border: 0; color: #b9cd6d; font-weight: bold;">
		</p>
		<div id="slider-3"></div>

		<!-- --------------------------------------------------------------------------- -->

		<script>
			$(function() {
				$("#datepicker-13").datepicker();

			});
		</script>
		<p>
			Enter Date: <input type="text" id="datepicker-13">
		</p>

		<!-- ---------------------------------------------------------------------------- -->
		<script>
			$(function() {
				$("#progressbar-1").progressbar({
					value : 30
				});
			});
		</script>
		<div id="progressbar-1"></div>
		<!-- ------------------------------------------------------------------------------->
		<script>
			$(function() {
				$("#spinner-1").spinner();
			});
		</script>
		<h3>Simple value taker in data</h3>
		<input type="text" id="spinner-1" value="0" />
		<!-- ------------------------------------------------------------------------------->

	</div>

</body>
</html>