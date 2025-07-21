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
            <th>Action</th>
        </tr>
        <c:forEach var="participant" items="${participants}">
            <tr>
                <td>${participant.id}</td>
                <td>${participant.name}</td>
                <td>${participant.email}</td>
                <td>${participant.eventName}</td>
                <td>
                    <form action="/delete/${participant.id}" method="post" style="display:inline;">
                        <input type="submit" value="Delete" onclick="return confirm('Delete this participant?');">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
