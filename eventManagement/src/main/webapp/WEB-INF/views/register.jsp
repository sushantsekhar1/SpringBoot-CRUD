<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Register for Event</title>
</head>
<body>
    <h2>Event Registration Form</h2>
    <form action="/register" method="post">
        <label>Name:</label>
        <input type="text" name="name" required><br><br>

        <label>Email:</label>
        <input type="email" name="email" required><br><br>

        <label>Event Name:</label>
        <select name="eventName">
            <option value="Tech Talk">Tech Talk</option>
            <option value="Workshop">Workshop</option>
            <option value="Hackathon">Hackathon</option>
        </select><br><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>
