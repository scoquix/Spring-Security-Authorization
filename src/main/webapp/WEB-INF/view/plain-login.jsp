<%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 05.05.2020
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h3>Login page:</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
        <c:if test="${param.error != null}">
            <i> Sorry! You entered invalid username/password. </i>
        </c:if>
        <p>
            Username: <input type="text" name="username" />
        </p>
        <p>
            Password: <input type="password" name="password" />
        </p>
        <input type="submit" value="Login"/>
    </form:form>
</body>
</html>
