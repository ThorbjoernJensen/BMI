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

                <form action="${pageContext.request.contextPath}/fc/bmiresult" method="post">
                    <div class="form-group">

                        <label for="height">Højde:</label>
                        <input type="text" id="height" name="height" value="190" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="weight">Vægt:</label>
                        <input type="text" id="weight" name="weight" value="30" class="form-control"/><br>
                    </div>

                    <input type="radio" id="male" name="gender" value="male">
                    <label for="male">Male</label><br>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label><br>

                    <label for="sport">din primære idræt</label>

                    <select name="sport" id="sport">
                        <option value="1">Fodbold</option>
                        <option value="2">Gymnastik</option>
                        <option value="3">Yoga</option>
                        <option value="4">Badminton</option>
                    </select>
                    <br>

                    <input type="checkbox" id="hobby1" name="hobby" value="1">
                    <label for="hobby1"> Jeg har en hobby</label><br>
                    <input type="checkbox" id="hobby2" name="hobby" value="2">
                    <label for="hobby2"> Jeg går op i sommerhuse</label><br>
                    <input type="checkbox" id="hobby3" name="hobby" value="3">
                    <label for="hobby3"> Jeg har en sund kost</label><br>

                    <c:if test="${requestScope.error != null}">
                        <p style="color:red">
                                ${requestScope.error}
                        </p>
                    </c:if>
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