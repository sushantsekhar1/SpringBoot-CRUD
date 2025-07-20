<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Registered Participants</title>
</head>
<body>
    <h2>List of Registered Participants</h2>

    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Event Name</th>
        </tr>
        <c:forEach var="participant" items="${participants}">
            <tr>
                <td>${participant.id}</td>
                <td>${participant.name}</td>
                <td>${participant.email}</td>
                <td>${participant.eventName}</td>
            </tr>
        </c:forEach>
    </table>
    
    <br>
    <a href="/register">Back to Registration</a>
</body>
</html>
