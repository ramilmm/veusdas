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
            <div th:if="${param.error}">
                Invalid username and hash_password.
            </div>
            <form th:action="@{/login}" method="post">
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration">
                <i class="icon ion-ios-locked-outline"></i>
                </div>
                <div class="form-group">
                    <input type="text" name="username" placeholder="Username" class="form-control" />
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" class="form-control"/>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">Log In</button>
                </div>
                <a href="#" class="forgot">Если забыл пароль, напиши Кате</a>
            </form>
        </div>


    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/login/bootstrap.min.js"></script>
    </body>
</html>