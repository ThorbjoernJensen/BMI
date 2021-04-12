<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Home
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">

            <h2>BMI beregner</h2>
            <p>
                Indtast højde og vægt
            </p>

            <form action="fc/bmiresult" method="post">
                <div class="form-group">

                <label for="height">Højde:</label>
                <input type="text" id="height" name="height" value="190" class="form-control"/>
                </div>
                <div class="form-group">
                <label for="weight">Vægt:</label>
                <input type="text" id="weight" name="weight" value="30" class="form-control"/><br>
                </div>
                <input type="submit" value="Beregn BMI" class="btn btn-primary">
            </form>
            </div>
            <div class="col-sm-4"></div>

        </div>

        <div>
            <c:if test="${sessionScope.role == 'employee' }">
            <p style="font-size: larger">This is what you can do,
                since your are logged in as an employee</p>
            <p><a href="fc/employeepage">Employee Page</a>
                </c:if>

                <c:if test="${sessionScope.role == 'customer' }">
            <p style="font-size: larger">This is what you can do, since your
                are logged in as a customer</p>
            <p><a href="fc/customerpage">Customer Page</a>
                </c:if>

        </div>

    </jsp:body>
</t:genericpage>