<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">

<style>
body, html {
	margin: 0;
	padding: 0;
	height: 97% auto;
	background-image: url(https://wallpapercave.com/wp/wp3720104.png);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

.user_card {
	height: 400px;
	width: 550px;
	margin-top: 75px;
	margin-bottom: auto;
	background: #f39c12;
	position: relative;
	display: flex;
	justify-content: center;
	flex-direction: column;
	padding: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	border-radius: 5px;
}

.brand_logo_container {
	position: absolute;
	height: 170px;
	width: 170px;
	top: -75px;
	border-radius: 50%;
	background: #60a3bc;
	padding: 10px;
	text-align: center;
}

.brand_logo {
	height: 150px;
	width: 150px;
	border-radius: 50%;
	border: 2px solid white;
}

.form_container {
	margin-top: 100px;
}

.login_btn {
	width: 100%;
	background: #c0392b !important;
	color: white !important;
}

.login_btn:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.login_container {
	padding: 0 2rem;
}

.input-group-text {
	background: #c0392b !important;
	color: white !important;
	border: 0 !important;
	border-radius: 0.25rem 0 0 0.25rem !important;
}

.input_user, .input_pass:focus {
	box-shadow: none !important;
	outline: 0px !important;
}

.custom-checkbox .custom-control-input:checked ~ .custom-control-label::before
	{
	background-color: #c0392b !important;
}

button {
	background-color: #8ebf42;
	color: white;
	padding: 14px 0;
	margin: 10px 0;
	border: none;
	cursor: grabbing;
	width: 100%;
}

.container {
	padding: 16px 0;
	text-align: left;
	width: 100%;
}

span.psw {
	float: right;
	padding-top: 0;
	padding-right: 15px;
}

footer {
	position: fixed;
	bottom: 0px;
	width: 100%;
	height: 55px;
	text-align: center;
	padding-top: 10px;
}

/* Change styles for span on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
}
</style>
</head>
<body align="center">
	<header>
		<nav class="navbar nav-main">
			<h3 class="navbar-brand font-weight-bold">
				<img
					src="https://www.logolynx.com/images/logolynx/46/4627fa391fd90d4c72cd6cded54c776c.jpeg"
					width="30" height="30" class="d-inline-block align-top" alt="">
				Project Manager
			</h3>
		</nav>
	</header>
	<div class="main-div" style="height: 90%; width: 100%; padding-top: 2%">
		<div class="container h-100 mt-5">

			<div class="d-flex justify-content-end h-100 w-100">
				<h1
					style="margin-right: 300px; font-family: : Gill Sans, Times, serif; font-weight: bold; font-size: xxx-large; font-style: italic"><img alt="" src="https://static.wixstatic.com/media/e3e032_01d21e254c5d461395adeea92b200ec4~mv2.png/v1/fit/w_2500,h_1330,al_c/e3e032_01d21e254c5d461395adeea92b200ec4~mv2.png" style="height:300px; width:450px; justify-content: center; margin-left: 30px"><br>Plan
					and manage your projects in one place</h1>
				<div class="user_card">
					<div class="d-flex justify-content-center">
						<div class="brand_logo_container">
							<img
								src="https://www.logolynx.com/images/logolynx/46/4627fa391fd90d4c72cd6cded54c776c.jpeg"
								class="brand_logo" alt="Logo">
						</div>
					</div>
					<div class="d-flex justify-content-center form_container">
						<form method="POST" action="${contextPath}/login">
							<div class="align-items-center">
								<div>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text">@</div>
										</div>
										<input type="text" autofocus name="username"
											class="form-control" id="inlineFormInputGroup"
											placeholder="Username">
									</div>
								</div>
								<div class="align-items-center">
									<label class="sr-only" for="inlineFormInputGroup2">Username</label>
									<div class="input-group mb-2">
										<div class="input-group-prepend">
											<div class="input-group-text text-bright">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-key"
													viewBox="0 0 16 16">
                                            <path
														d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z" />
                                            <path
														d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                                        </svg>
											</div>
										</div>
										<input type="password" name="password" class="form-control"
											id="inlineFormInputGroup2" placeholder="Password">
									</div>
								</div>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<button type="submit" class="btn btn-danger mb-2">Log
									In</button>
							</div>
						</form>

					</div>

					<div class="mt-4 mb-4">
						<div class="d-flex justify-content-center links">
							Don't have an account? <a href="${contextPath}/registration"
								class="ml-2"> <strong>Sign Up</strong>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="footer">
			<p>Created By Abdi M. © 2021</p>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>