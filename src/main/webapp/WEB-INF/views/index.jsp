<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin Mandiri Utama Finance</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/asset/css/style.css">
</head>
<body>
	<div id="login-button">
		<img
			src="https://dqcgrsy5v35b9.cloudfront.net/cruiseplanner/assets/img/icons/login-w-icon.png">
		</img>
	</div>
	<div id="container">
		<h1>Log In</h1>
		<span class="close-btn"> <img
			src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>

		<form method="post" action="member">
			<input type="text" name="username" placeholder="Username">
			<input type="password" name="pass" placeholder="Password">
			<input type="submit" value="Login" />
			</td>
			<div id="remember-container">
				<input type="checkbox" id="checkbox-2-1" class="checkbox"
					checked="checked" /> <span id="remember">Remember me</span> <span
					id="forgotten">Forgotten password</span>
			</div>
		</form>
	</div>

	<!-- Forgotten Password Container -->
	<div id="forgotten-container">
		<h1>Forgotten</h1>
		<span class="close-btn"> <img
			src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
		</span>

		<form>
			<input type="email" name="email" placeholder="E-mail"> <a
				href="#" class="orange-btn">Get new password</a>
		</form>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.16.1/TweenMax.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script id="rendered-js">
		$('#login-button').click(function() {
			$('#login-button').fadeOut("slow", function() {
				$("#container").fadeIn();
				TweenMax.from("#container", .4, {
					scale : 0,
					ease : Sine.easeInOut
				});
				TweenMax.to("#container", .4, {
					scale : 1,
					ease : Sine.easeInOut
				});
			});
		});

		$(".close-btn").click(function() {
			TweenMax.from("#container", .4, {
				scale : 1,
				ease : Sine.easeInOut
			});
			TweenMax.to("#container", .4, {
				left : "0px",
				scale : 0,
				ease : Sine.easeInOut
			});
			$("#container, #forgotten-container").fadeOut(800, function() {
				$("#login-button").fadeIn(800);
			});
		});

		/* Forgotten Password */
		$('#forgotten').click(function() {
			$("#container").fadeOut(function() {
				$("#forgotten-container").fadeIn();
			});
		});
	</script>
</body>
</html>