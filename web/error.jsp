<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu and Price list</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/menu.css">
        <link rel="stylesheet" type="text/css" href="css/error.css">
    </head>
    <body>
        <div class="page-wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="current" value="error"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <div class="error-announcement">
                            <div class="error-content">Server maintenance. Please try again later!</div>
                        </div>
                        <%@include file="sharing.jsp" %>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>

