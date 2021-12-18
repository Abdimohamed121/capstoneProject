<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Welcome</title>
<!--Bootsrap 4 CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!--Custom styles-->
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');

html, body {
	background-image: url('https://wallpaperaccess.com/full/2150811.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	height: 100%;
	font-family: 'Numans', sans-serif;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar nav-main">
			<h3 class="navbar-brand font-weight-bold">
				<img
					src="https://www.logolynx.com/images/logolynx/46/4627fa391fd90d4c72cd6cded54c776c.jpeg"
					width="30" height="30" class="d-inline-block align-top" alt="">
				Project Manager
			</h3>
			<div class="navbar-links">
				<a class="btn btn-primary"
					href="${pageContext.request.contextPath}/">Home</a>
			</div>

		</nav>
	</header>
<div class="main-div" style="height: 90%; width: 100%; padding-top: 8%">
	<div
		style="background-color: rgba(255, 165, 0, 0.6); border-radius: 10px"
		class="container mt-4 mb-4 text-center">
		<div
			style="background-color: rgba(39, 71, 245, 0.8); border-radius: 10px; color: white; align-content: center"
			class="container mb-5 text-center">
			<h3>Please provide project details here</h3>
		</div>
		<form:form action="/addNewProject" method="post"
			modelAttribute="project">
			<div class="form-row ">
				<div class="form-group col-md-6">
					<label for="username"><strong>Project Name</strong></label>
					<form:input type="text" path="username" class="form-control"
						id="username" placeholder="Project Title" />
				</div>
				<div class="form-group col-md-4 ml-4">
					<label for="inputState"><strong>Status</strong></label>
					<form:select path="completeStatus" id="inputState"
						class="form-control">
						<form:option value="INCOMPLETE" selected="selected">INCOMPLETE</form:option>
						<form:option value="INPROGRESS">INPROGRESS</form:option>
						<form:option value="COMPLETE">COMPLETE</form:option>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label for="description"><strong>Project
						Description</strong></label>
				<form:input path="projectDescription" type="text"
					class="form-control" id="description" name="description"
					placeholder="Description of Project" />
			</div>
			<input type="submit" class="btn btn-primary mb-2"
				value="Submit Details" />
		</form:form>
	</div>
	</div>
</body>
</html>