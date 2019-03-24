<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Us</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/findus.css">
    </head>
    <body>
        <div class="page-wrapper">
            <jsp:include page="header.jsp">
                <jsp:param name="current" value="findus"/>
            </jsp:include>
            <div class="main">
                <div class="alignment">
                    <div class="page-content">
                        <div class="left-side col-9">
                            <div class="find-us-heading">
                                <h1 class="text-page-heading">Find Us</h1>
                            </div>
                            <div class="find-us-content">
                                    <div class="page-info">
                                        <div class="address-and-contact col-6">
                                            <div class="title-heading">
                                                <h4 class="address-title">Address and contact</h4>
                                            </div>
                                            <div class="address-container">
                                                <div class="address__details">
                                                    <p>${shopInf.address}</p>
                                                </div>
                                                <div class="tel-email">
                                                    <div class="tel-email__heading">
                                                        Tel:
                                                    </div>    
                                                    <div class="tel-email__data">
                                                        <a href="tel:12345">
                                                            ${shopInf.tel}
                                                        </a>
                                                    </div>    
                                                </div>
                                                <div class="tel-email">
                                                    <div class="tel-email__heading">
                                                        Email:
                                                    </div>    
                                                    <div class="tel-email__data">
                                                        <a href="mailto:your-email@your-email.com">
                                                            ${shopInf.email}
                                                        </a>
                                                    </div>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="opening-hours col-6">
                                            <div class="title-heading">
                                                <h4 class="opening-hours-title">Opening hours</h4>
                                            </div>
                                            <div class="opening-hours-content">
                                                <p>${shopInf.openingHours}</p>
                                            </div>
                                        </div>
                                    </div>
                                <div class="google-maps">
                                    <img class="default-image" alt="maps" src="${shopInf.photoPath}">
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
