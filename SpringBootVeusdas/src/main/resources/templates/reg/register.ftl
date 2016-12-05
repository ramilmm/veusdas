<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <link rel="stylesheet" href="css/login/bootstrap.min.css" />

    <link rel="stylesheet" href="css/login/Login-Form-Dark.css" />
    <link rel="stylesheet" href="css/login/styles.css" />
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
</head>
<body>

<div class="login-dark">
<#--<div th:if="${param.error}">-->
<#--Invalid username and hash_password.-->
<#--</div>-->
    <form method="POST" action="/registration" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Username"
                            autofocus="true"/>
                <errors path="username"></errors>
            </div>

            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
                <errors path="password"></errors>
            </div>

            <div class="form-group">
                <input type="password" name="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"/>
                <errors path="passwordConfirm"></errors>
            </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/login/bootstrap.min.js"></script>
</body>
</html>