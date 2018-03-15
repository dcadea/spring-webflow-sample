<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form:form method="POST" modelAttribute="user">
    <fieldset>
        <form:label path="name">Username:</form:label>
        <form:input path="name"/>

        <form:label path="password">Password:</form:label>
        <form:password path="password"/>
    </fieldset>
    <footer>
        <input type="submit" value="Login" name="_eventId_submit"/>
    </footer>
</form:form>
</body>
</html>
