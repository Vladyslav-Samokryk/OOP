
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
        <p><span class="slogan">stations management page</span></p>
    </div>

    <!--HEADER MENU------------------------------------------------------->

    <div id="nav-bar" align="center">
        <ul id="nav1">
            <li><a href="<c:url value="/index"/>">Home</a></li>
            <li><a href="<c:url value="/timetable"/>">Search trains</a></li>
            <c:choose>
                <c:when test="${currentUser.id == 0}">
                    <li><a href="<c:url value="/loginPage"/>">Log in</a></li>
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

                <h1>Add train:</h1>





                <form:form method="post" action="/admin/addTrain" modelAttribute="newTrain">
                    <table border="0" style="color: #99CC00">
                        <tr>
                            <td>Number:</td>
                            <td><form:input path="number"/></td>
                        </tr>
                        <tr>
                            <td>Depart hour:</td>
                            <td><form:input path="departHour"/><form:errors path="departHour" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Depart minute:</td>
                            <td><form:input path="departMinute"/><form:errors path="departMinute"
                                                                              cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Arrival hour:</td>
                            <td><form:input path="arriveHour"/><form:errors path="arriveHour" cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Arrival minute:</td>
                            <td><form:input path="arriveMinute"/><form:errors path="arriveMinute"
                                                                              cssClass="error"/></td>
                        </tr>
                        <tr>
                            <td>Departure station:</td>
                            <td>
                                <form:select path="departStation">
                                    <c:forEach items="${allStations}" var="station">
                                        <form:option value="${station.id}"><c:out value="${station.name}"/></form:option>
                                    </c:forEach>
                                </form:select>
                            </td>
                        </tr>
                        <tr>
                            <td>Arrival station:</td>
                            <td>
                                <form:select path="arriveStation">
                                    <c:forEach items="${allStations}" var="station">
                                        <form:option value="${station.id}"><c:out value="${station.name}"/></form:option>
                                    </c:forEach>
                                </form:select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price:
                            </td>
                            <td>
                                <form:input path="price" />
                            </td>
                        </tr>
                    </table>

                    <br><br>
                    <input type="submit" value="Add"/>
                </form:form>

                <h2>Delete train:</h2>
                <form:form action="/admin/deleteTrain" modelAttribute="deletedTrain" method="post">
                    <form:select path="id">
                        <c:forEach items="${allTrains}" var="train">
                            <form:option value="${train.id}"><c:out
                                    value="${train.number}: ${train.departStation} - ${train.arriveStation}"/> </form:option>
                        </c:forEach>
                    </form:select>
                    <input type="submit" value="Delete" style="border-collapse: collapse"/>
                </form:form>


                <h2>All trains:</h2>
                <c:if test="${allTrains ne null}">
                    <table  border="1" style="border-collapse: collapse; color: #000000; font-size: medium">

                        <tr>
                            <td>ID</td>
                            <td>Number</td>
                            <td>Depart Station</td>
                            <td>Depart Time</td>
                            <td>Arrive Station</td>
                            <td>Arrive Time</td>
                                <%--<td>Free places</td>--%>
                            <td>Train Page</td>
                        </tr>

                        <c:forEach items="${allTrains}" var="train">
                            <tr>
                                <td><c:out value="${train.id}"/></td>
                                <td><c:out value="${train.number}"/></td>
                                <td><c:out value="${train.departStation}"/></td>
                                <td><c:out value="${train.departTime}"/></td>
                                <td><c:out value="${train.arriveStation}"/></td>
                                <td><c:out value="${train.arriveTime}"/></td>
                                    <%--<td><c:out value="${train.freeSeat}"/></td>--%>
                                <td><c:out value="View page"/></td>
                            </tr>

                        </c:forEach>


                    </table>
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
