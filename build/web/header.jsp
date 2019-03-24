<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HEADER</title>
    </head>
    <body>
        <div class="header">
            <div class="alignment">
                <div class="header-heading">
                    <div class="header-title">The Sushi Restaurant</div>
                    <div class="header-subtitle">Welcome to this website</div>
                </div>
                <div class="header-navigation">
                    <ul class="navigation">
                        <c:choose>
                            <c:when test="${param.current == 'home'}">
                                <li class="navigation-item"><a class="navigation-link navigation-link-current" href="homeController">Home</a></li>
                                <li class="navigation-item"><a class="navigation-link" href="menuController">Menu and Price list</a></li>
                                <li class="navigation-item"><a class="navigation-link" href="findUsController">Find us</a></li>
                            </c:when>
                            <c:when test="${param.current == 'menu'}">
                                <li class="navigation-item"><a class="navigation-link" href="homeController">Home</a></li>
                                <li class="navigation-item"><a class="navigation-link navigation-link-current" href="menuController">Menu and Price list</a></li>
                                <li class="navigation-item"><a class="navigation-link" href="findUsController">Find us</a></li>
                            </c:when>
                            <c:when test="${param.current == 'findus'}">
                                <li class="navigation-item"><a class="navigation-link" href="homeController">Home</a></li>
                                <li class="navigation-item"><a class="navigation-link " href="menuController">Menu and Price list</a></li>
                                <li class="navigation-item"><a class="navigation-link navigation-link-current" href="findUsController">Find us</a></li>
                            </c:when>
                            <c:when test="${param.current == 'error'}">
                                <li class="navigation-item"><a class="navigation-link" href="homeController">Home</a></li>
                                <li class="navigation-item"><a class="navigation-link" href="menuController">Menu and Price list</a></li>
                                <li class="navigation-item"><a class="navigation-link" href="findUsController">Find us</a></li>
                                <li class="navigation-item"><a class="navigation-link navigation-link-current" href="#">Error</a></li>
                            </c:when>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
