<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Sushi Restaurant</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/ssdetails.css">
    </head>
    <body>
        <div class="page-wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="current" value="home"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <div class="left-side display-row col-9">
                            <div class="info-section col-8">
                                <div class="sushi-heading text-sharing-heading">${sushi.name}</div>
                                <p class="fullDescription">${sushi.fullDescription}</p>
                            </div>
                            <div class="image-section col-4">
                                <img class="default-image" src="${sushi.photoPath}">
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
