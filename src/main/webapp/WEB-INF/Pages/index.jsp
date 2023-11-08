<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="../css/style.css" />
    <title>Login</title>
  </head>
  <body>
	<!DOCTYPE html>
	<html lang="en">
	  <head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link
		  href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
		  rel="stylesheet"
		  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
		  crossorigin="anonymous"
		/>
		<script
		  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		  integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		  crossorigin="anonymous"
		></script>
		<link rel="stylesheet" href="../css/style.css" />
		<title>Login</title>
	  </head>
	  <body>
		<div class="container w-100 mt-5 d-flex justify-content-center align-items-center">
		  <div class="card text-center" style="width: 18rem">
			<div class="card-body">
			  <h5 class="card-title text-center">LOGIN</h5>
			  <form:form action="home" modelAttribute="user">
			  <div class="input-group mb-3 mt-5">
				<p>
					User Name:
					<form:input path="name" />
				</p>
			  </div>
			  <div class="input-group mb-3 mt-3">
				<p>
					Password:
					<form:input path="password" />
				</p>
			  </div>
			  <p class="sign-in-up">
				Not registered yet <a href="register">Sign Up</a>
			  </p>
			  <input type="submit" class="btn btn-primary" value="Submit" />
			</form:form>
			</div>
		  </div>
		</div>
		<script src="../Script/script.js"></script>
	  </body>
	</html>
	
    <script src="../Script/script.js"></script>
  </body>
</html>
