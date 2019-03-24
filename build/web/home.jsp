<%@page import="utils.HTMLHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
    </head>
    <body>
        <div class="page-wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="current" value="home"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <div class="left-side col-9">
                            <div class="introduction">
                                <img class="default-image" src="${introSushi.photoPath}">
                            </div>
                            <c:forEach items="${listSushi}" var="s">
                                <div class="type-of-sushi">
                                    <div class="sushi-heading">
                                        <a class="heading-link" href="sushiDetailsController?id=${s.id}">
                                            <h3 class="text-sharing-heading">${s.name}</h3>
                                        </a>
                                    </div>
                                    <div class="sushi-body">
                                        <p>
                                            <img class="default-image item-image-setting" src="${s.photoPath}">
                                            ${s.description}
                                        </p>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="pagination">
                                ${pagination}
                            </div> 
                        </div>
                        <%@include file="sharing.jsp" %>
                    </div>

                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
