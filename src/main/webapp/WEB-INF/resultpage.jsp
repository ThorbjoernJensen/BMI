<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Resultatside for beregning af BMI
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${true}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div>
        <h2>BMI result</h2>

        <p>
            Din højde er ${requestScope.height} cm.

        </p>

        <p>
            Din vægt er ${requestScope.weight} kg.
        </p>
        <p>
            Dit bmi er ${requestScope.bmi}.
        </p>
        <p>
        Dit bmi er i kategorien ${requestScope.category}.
        </p>


        <table>
            <thead>
            <tr>
                <th>Parameter</th>
                <th>Værdi</th>
            </tr>
            </thead>

        </table>


    </jsp:body>
</t:genericpage>