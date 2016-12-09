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
    <form method="POST" name="login" action="/registration" onsubmit="return validate()" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
            <div class="form-group">
                <input type="text" id="username" name="username" class="form-control" placeholder="Email"
                            autofocus="true"/>
                <errors path="username"></errors>
            </div>

            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Пароль"/>
                <errors path="password"></errors>
            </div>

            <div class="form-group">
                <input type="password" name="passwordConfirm" class="form-control"
                            placeholder="Пароль ещё раз"/>
                <errors path="passwordConfirm"></errors>
            </div>
        <p id="errors"></p>
        <#--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
        <#if error??>
            <span id="error">${error}</span>
        </#if>
        <#if referal??>
            <input name="referal_id" type="text" hidden value="${referal}">
        </#if>
        <button class="btn btn-lg btn-primary btn-block" id="reg" type="submit">Зарегистрироваться</button>
    </form>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script type ="text/javascript">
        function validate() {
                var username = document.login.username.value;
                console.log(username);
                if (username == null || username == "" || username.indexOf("@") == -1 || username.indexOf(".") == -1) {
                    document.getElementById("errors").innerHTML = "Введите корректный email.";
                    return false;
                }
        }
    </script>
    <h4 class="text-center"><a href="/login">Войти</a></h4>
</div>



<script src="js/login/bootstrap.min.js"></script>
</body>
</html>