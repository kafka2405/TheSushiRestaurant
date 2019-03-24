<%@page import="utils.HTMLHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu and Price list</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/menu.css">        
    </head>
    <body>
        <div class="page-wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="current" value="menu"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <div class="left-side col-9">
                            <div class="page-heading">
                                <h1 class="text-page-heading">Menu and Price list</h1>
                            </div>
                            <div class="list-of-menu">
                                <c:forEach items="${listMenu}" var="m">
                                    <div class="menu-wrapper">
                                        <table class="menu-table">
                                            <tr class="heading-row">
                                                <th class="heading-row__item align-left">${m.name}</th>
                                                <th class="heading-row__item align-right">Price</th>
                                            </tr>
                                            <tr class="data-row">
                                                <td class="data-row__item align-left">${m.shortDescription}</td>
                                                <td class="data-row__item align-right">€${m.price}</td>
                                            </tr>
                                        </table>
                                        <p>${m.fullDescription}</p>
                                    </div>
                                </c:forEach>
                                <div class="pagination">
                                    ${pagination}
                                </div>
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
