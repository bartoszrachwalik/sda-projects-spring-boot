<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Players</title>
</head>
<body>
<div>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Team</th>
        </tr>
        <c:forEach items="${players}" var="player">
            <tr>
                <td>${player.name}</td>
                <td>${player.surname}</td>
                <td>${player.teamName}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
