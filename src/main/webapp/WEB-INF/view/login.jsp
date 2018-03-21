<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>Players</h2>
<ul>
    <c:if test="${!empty message}">
        <p>${message}</p>
    </c:if>
    <form method="post">
        <label>Username: <input type="text" name="username"/></label>
        <label>Password: <input type="text" name="password"/></label>
        <input type="submit"/>
    </form>
</ul>
</body>
</html>
