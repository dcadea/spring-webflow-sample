<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<spring:message code="message.login" var="login"/>

<html>
<head>
    <title>${login}</title>
</head>
<body>
<header>
    <a href="?lang=en">
        <spring:message code="message.en"/>
    </a>
    <a href="?lang=ru">
        <spring:message code="message.ru"/>
    </a>
</header>
<form:form method="POST" modelAttribute="user">
    <fieldset>
        <form:label path="name">
            <spring:message code="message.username"/>
        </form:label>
        <form:input path="name"/>

        <form:label path="password">
            <spring:message code="message.password"/>
        </form:label>
        <form:password path="password"/>
        <c:if test="${not empty message}">
            <span style="color: red;">${message}</span>
        </c:if>
    </fieldset>
    <footer>
        <a href="${flowExecutionUrl}&_eventId=createUser">
            <spring:message code="message.create-user"/>
        </a>
        <input type="submit" value="${login}" name="_eventId_submit"/>
    </footer>
</form:form>
</body>
</html>
