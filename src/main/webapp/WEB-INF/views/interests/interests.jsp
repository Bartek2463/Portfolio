<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<body id="page-top">
<%@include file="../dynamic/navigationMain.jspf"%>
<!-- Page Content-->
<div class="container-fluid p-0">

    <!-- Interests-->
    <section class="resume-section" id="interests">
        <div class="resume-section-content">
            <td>
                <a href='<c:url value="/interests/add"/> '
                   class="btn-right btn btn-info" role="button">Dodaj Zainteresowania</a>

            </td>
            <h2 class="mb-5">Interests</h2>
            <c:forEach items="${interest}" var="title">


                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">

                    <div class="flex-grow-1">


                                <span class="fa-li"><i class="fas fa-check"></i></span>
                                    ${title.interest}

                    </div>
                    <div class="flex-shrink-0">
                        <td>
                            <a href='<c:url value="/interests/${title.id}"/> '
                               class="btn-right btn btn-primary" role="button">Edytuj</a>
                        </td>

                    </div>
                </div>
            </c:forEach>

        </div>
    </section>
    <hr class="m-0"/>
</div>
<!-- Bootstrap core JS-->
<%@include file="../dynamic/javaScript.jspf"%>
</body>
</html>
