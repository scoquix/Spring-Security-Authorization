<%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 04.05.2020
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h2>Hi there!</h2>
        <hr>
        <p>
            Welcome to the company home page!
        </p>
        <hr>
            <%--   Display username and role     --%>
            <p>
                User: <security:authentication property="principal.username"/>
                <br>
                <br>
                Role(s): <security:authentication property="principal.authorities"/>
            </p>
        <hr>
        <security:authorize access="hasRole('MANAGER')">
            <%--  Add a link to point to /leaders ... this is for the managers  --%>
            <p>
                <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
                (only for managers people)
            </p>
        </security:authorize>

        <security:authorize access="hasRole('ADMIN')">
            <%--  Add a link to pint to /systems ... this is for the admins  --%>
            <p>
                <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
                (only for admins people)
            </p>
        </security:authorize>

        <!-- Add al logout button -->
        <form:form action="${pageContext.request.contextPath}/logout" method="post">
            <input type="submit" value="Logout"/>
        </form:form>
    </body>
</html>
