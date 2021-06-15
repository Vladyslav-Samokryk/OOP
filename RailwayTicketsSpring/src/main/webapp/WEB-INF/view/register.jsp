
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%--<%@ taglib uri="http://java.sun.com/JSP/Page" prefix="jsp" %>--%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->

        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
        <head>
            <title>Typo Today</title>
            <meta http-equiv="Content-Type" content="application/json; charset=utf-8"/>
            <%--<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>--%>
            <style type="text/css">
                <%@ include file="../css/stylesheet.css"%>
            </style>
        </head>
<body>
<!--HEADER------------------------------------------------------------>
<div id="header">

    <div id="logo">
        <h1><a href="#">Railway Tickets Booking</a></h1>
        <p><span class="slogan">register page</span></p>
    </div>

    <!--HEADER MENU------------------------------------------------------->

    <div id="nav-bar" align="center">
        <ul id="nav1">
            <li><a href="<c:url value="/index"/>">Home</a></li>
            <li><a href="<c:url value="/timetable"/>">Search trains</a></li>
            <c:choose>
                <c:when test="${currentUser.id == 0}">
                    <li><a href="<c:url value="/login"/>">Log in</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="<c:url value="/user/${currentUser.id}"/>">My profile</a></li>
                    <li><a href="<c:url value="/tickets/${currentUser.id}"/>">My tickets</a></li>
                    <%--<li><a href="<c:url value="/booking"/>">Book tickets</a></li>--%>
                    <li><a href="<c:url value="/logout"/>">Log out</a></li>
                </c:otherwise>
            </c:choose>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
</div>
<!--HEADER END-->
<!--CONTENT-->
<div id="content">
    <!--MAIN-CONTENT-->
    <div id="main-content">
        <!--CONTENT 1 END-->
        <div id="content-1">
            <div class="featured">

                <h2>Input your data to register:</h2>

                <form:form method="post" action="/register" modelAttribute="newUser">
                    <%--<p>Log in:</p><br>--%>
                    <table border="0" style="color: #99CC00">
                        <tr>
                            <td>E-mail:</td>
                            <td><form:input path="email" /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><form:password path="password" /></td>
                        </tr>
                        <tr>
                            <td>First Name:</td>
                            <td><form:input path="firstName" /></td>
                        </tr>
                        <tr>
                            <td>Last   Name:</td>
                            <td><form:input path="lastName" /></td>
                        </tr>
                    </table>
                    <input type="submit" value="Register"/>
                </form:form>

            </div>
        </div>
        <!--CONTENT 1 END-->
        <!--SIDEBAR-->
        <div id="sidebar">
            <c:if test="${currentUser.id == 0}">
                <h4>You logged as guest</h4>
                <p class="about-me"> Please log on! </p>
            </c:if>
            <c:if test="${currentUser.id ne 0}">
                <h4>Your profile info</h4>
                <p class="about-me">

                </p>
            </c:if>
        </div>
        <!--SIDEBAR END-->
    </div>
    <!--MAIN CONTENT END-->
    <!--FOOTER-->
    <div id="footer">
        <div id="footer-content">
        </div>
    </div>
    <!--FOOTER END-->
</div>
<!--CONTENT END-->
<!--CUFON-->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/Gentium_Basic.font.js"></script>
<script type="text/javascript" src="js/Bambi_Bold_400.font.js"></script>
<script type="text/javascript">
    Cufon.replace('h1', {fontFamily: 'Bambi Bold'});
    Cufon.replace('h2', {fontFamily: 'Gentium Basic'});
    Cufon.replace('h3', {fontFamily: 'Gentium Basic'});
</script>
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>
</title>
</head>
<body>

</body>
</html>
