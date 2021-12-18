<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome</title>
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!--Custom styles-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
			<h3 class="navbar-brand font-weight-bold"><img
				src="https://www.logolynx.com/images/logolynx/46/4627fa391fd90d4c72cd6cded54c776c.jpeg" width="30"
				height="30" class="d-inline-block align-top" alt=""> Project Manager </h3>
				<div class="navbar-links">
    				<a class="btn btn-danger" href="${pageContext.request.contextPath}/logout">Logout</a>
				</div>
				
		</nav>
	</header>


<div style="background-color: rgba(255,165,0,0.6); border-radius: 10px; padding: 0;" class="container mt-4 mb-4">
	<div style="margin-bottom: 25px; background-image: linear-gradient(tomato, orange); border-radius: 10px; width: 100%;">
		<a class="btn btn-primary mb-3 mt-2 ml-2" href="${pageContext.request.contextPath}/addProject">Add New Project</a><h2 style="color: white; text-align: center; display: inline-block; margin-left: 25%; font-style: italic; padding-top: 10px">Projects and Status</h2>
	</div>
	
    <div class="row">
        <c:forEach var="project" items="${projects}">
            <div class="col-md-6- col-sm-12 col-lg-4 text-center mb-3">
                    <a class="badge badge-danger" href="${pageContext.request.contextPath}/deleteProject/${project.id}">
                        Delete Project
                    </a>
                    <a class="badge badge-success" href="${pageContext.request.contextPath}/addDuration/${project.id}">
                        Add Milestone
                    </a>
                   <a class="badge badge-success" href="${pageContext.request.contextPath}/viewDurations/${project.id}">
                        View Milestones
                    </a>
                    <a class="badge badge-primary mb-3" href="${pageContext.request.contextPath}/goUpdate/${project.id}">
                        Edit Project
                    </a>
                <div style="background-color: rgba(174,228,240,0.8); class="card mb-4">
                    <div class="card-content pt-2">
                        <h4><strong>Project: </strong><span style="font-style: italic">${project.username}</span></h4>
                        <span class="badge badge-primary">${project.completeStatus}</span>
                        <hr>
                        <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#exampleModalLong">
                            View Details
                        </button>
                        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Description of Project</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                       ${project.projectDescription}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <br><br>
    <!-- Button trigger modal -->
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>