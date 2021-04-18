<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         BMI admin page
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
<p>

        You are now logged in as a EMPLOYEE of our wonderful site.
</p>
        <p>
            <a href="${pageContext.request.contextPath}/fc/bmientries">gå til visning af alle bmi-resultater</ahref>
                <a href="${pageContext.request.contextPath}/fc/managesports">gå til visning af sportsgrene</ahref>
        </p>

    </jsp:body>
</t:genericpage>
