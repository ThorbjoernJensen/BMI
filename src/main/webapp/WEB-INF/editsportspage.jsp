<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         List of sports
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        Please edit and update sports
        <form action="${pageContext.request.contextPath}/fc/managesports" method="post">
            <input type="hidden" name="sports_id" value="${requestScope.sportItem.sport_id}"/>

            <table>
                <thead>
                <th>name</th>
                <th></th>
                </thead>

                <tr>
<%--                    <td>${sportItem.name}</td>--%>
                    <td><input type="text" name="name" value="${requestScope.sportItem.name}"></td>
                    <td>
                        <button type="submit" name="update">Rediger</button>
                    </td>
                </tr>

            </table>
            <c:if test="${not empty requestScope.error}">
                <br>
                <p style="color:red;font-size: large">${requestScope.error}</p>
            </c:if>
        </form>

    </jsp:body>
</t:genericpage>
