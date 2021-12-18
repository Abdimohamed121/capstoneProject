<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Dynamically Add Remove Table Rows in JavaScript</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
html, body {
	background-image: url('https://www.teahub.io/photos/full/101-1013631_wallpaper-background-red-free-photo-red-blue-and.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	height: 100%;
	font-family: 'Numans', sans-serif;
}

table {
	width: 70%;
}

table, th, td {
	border: solid 1px #DDD;
	border-collapse: collapse;
	padding: 2px 3px;
	text-align: center;
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
	<div class="container text-center">
		<h3
			style="font-family: : Gill Sans, Times, serif; font-weight: bold; font-size: xx-large; font-style: italic">Project
			Milestone's</h3>
	</div>
	<div class="m-4" style="background-color: rgba(255, 165, 0, 0.6);">
		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>#</th>
					<th>Description</th>
					<th>Date</th>
					<th>Complete Status</th>
					<th>Operations</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="duration" items="${durations}">
					<tr>
						<td><strong>${duration.id}</strong></td>
						<td><strong>${duration.durationDescription}</strong></td>
						<td><strong>${duration.date}</strong></td>
						<td><span class="badge badge-success">${duration.completeStatus}</span>
						<td><a
							href="${pageContext.request.contextPath}/goUpdateDuration/${duration.id}">
								<span class="badge badge-success">Update</span>
						</a> <a
							href="${pageContext.request.contextPath}/deleteDurationById/${duration.id}">
								<span class="badge badge-danger">Delete</span>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
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