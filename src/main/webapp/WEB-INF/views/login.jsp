<%@page session="false" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="home" value="/" scope="request"/>
<spring:url value="/resources/css" var="css"/>
<spring:url value="/resources/js" var="js"/>
<spring:url value="/resources/fonts" var="fonts"/>
<spring:url value="/resources/bower_components" var="bower"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Mercenary Project">
    <meta name="author" content="Mercenaries">
    <meta name="keyword" content="Mercenaries Reca Sms Email">
    <!-- <link rel="shortcut icon" href="assets/ico/favicon.png"> -->
    <title>Mercenaries Project</title>

    <!-- Icons -->
    <link href="${css}/font-awesome.min.css" rel="stylesheet">
    <link href="${css}/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="${css}/style.css" rel="stylesheet">
</head>
<body class="app flex-row align-items-center">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card-group mb-0">
                <div class="card p-4">
                    <div class="card-body">
                        <h1>Login</h1>
                        <c:if test="${param.error != null}">
                            <div>
                                <p>Authentication Failed : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
                            </div>
                        </c:if>
                        <c:if test="${param.logout != null}">
                            <div>
                                <p>You have been logged out successfully.</p>
                            </div>
                        </c:if>
                        <form action="login" method="post">
                            <p class="text-muted">Sign In to your account</p>
                            <div class="input-group mb-3">
                                <span class="input-group-addon"><i class="icon-user"></i>
                                </span>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Username"/>
                            </div>
                            <div class="input-group mb-4">
                                <span class="input-group-addon"><i class="icon-lock"></i>
                                </span>
                                <input type="password" class="form-control" name="password" placeholder="Password">
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <button type="submit" class="btn btn-primary px-4">Login</button>
                                </div>
                                <div class="col-6 text-right">
                                    <button type="button" class="btn btn-link px-0">Forgot password?</button>
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                    </div>
                </div>
                <div class="card text-white bg-primary py-5 d-md-down-none" style="width:44%">
                    <div class="card-body text-center">
                        <div>
                            <h2>Sign up</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            <button type="button" class="btn btn-primary active mt-3">Register Now!</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap and necessary plugins -->
<script src="${bower}/jquery/dist/jquery.min.js"></script>
<script src="${bower}/tether/dist/js/tether.min.js"></script>
<script src="${bower}/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>