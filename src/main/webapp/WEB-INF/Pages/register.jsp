<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isELIgnored="false"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%>
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
        <div
          class="container w-100 mt-5 d-flex justify-content-center align-items-center"
        >
          <div class="card text-center" style="width: 23rem">
            <div class="card-body">
              <h5 class="card-title text-center">REGISTER</h5>
              <form:form action="register" modelAttribute="user">
                <p>
                  User Name:
                  <form:input path="name" />
                </p>
                <p>
                  Password:
                  <form:input path="password" />
                </p>
                <p>
                  Country:
                  <form:select path="country">
                    <form:option value="India" label="India" />
                    <form:option value="USA" label="USA" />
                    <form:option value="China" label="China" />
                  </form:select>
                </p>

                <!-- Radio Button -->
                <p>
                  Favorite Language: Java
                  <form:radiobutton path="language" value="Java" /> PHP
                  <form:radiobutton path="language" value="PHP" /> Ruby
                  <form:radiobutton path="language" value="Ruby" /> C#
                  <form:radiobutton path="language" value="C#" />
                </p>
                <p>
                  Gender: Male
                  <form:radiobutton path="gender" value="Male" /> Female
                  <form:radiobutton path="gender" value="Female" />
                </p>
                <a href="/SPRING-MVC/">Already registered Login</a>
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
