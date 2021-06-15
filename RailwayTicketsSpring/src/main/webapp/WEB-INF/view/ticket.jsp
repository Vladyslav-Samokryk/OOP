<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--<c:out value="${mainMessage}" default="" />--%>
<h2>Ticket Number <c:out value="${newTicket.id}"/></h2>

Train № <c:out value="${newTicket.train.number}"/>
Passenger: <c:out value="${newTicket.user.firstName} ${newTicket.user.lastName}"/>
Departure date: <c:out value="${newTicket.departDate}"/>
Place: <c:out value="${newTicket.place}"/>

<br><br>
<a href="<c:url value="/index"/>">Return to index page</a>

</body>
</html>
