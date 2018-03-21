<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<div>
    <sec:authorize access="hasRole('USER')">
        <h2>Secret content!</h2>
        <p>${message}</p>
        <p>
            <a href="/logout"></a>
        </p>
    </sec:authorize>
</div>
</body>
</html>
