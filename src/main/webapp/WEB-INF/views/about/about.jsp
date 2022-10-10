<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">
<%@include file="../dynamic/navigationMain.jspf"%>
<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- About-->
    <section class="resume-section" id="about">
        <div class="resume-section-content">
            <td>
                <a href='<c:url value="/addAbout"/> '
                   class="btn-right btn btn-info" role="button">Dodaj</a>
            </td>
            <c:forEach items="${about}" var="title">

                <tr>
            <h1 class="mb-0">

                ${title.firstName}
                <span class="text-primary">${title.lastName}</span>
                    <td>
                        <a href='<c:url value="/editAbout/${title.id}"/> '
                           class="btn-right btn btn-primary" role="button">Edytuj</a>
                    </td>
            </h1>
            <div class="subheading mb-5">
                ${title.adres} · ${title.zipCode}, ${title.postOffice} · ${title.numberPhone} ·
                <a href="mailto:name@email.com">${title.adresEmail}</a>
            </div>
            <p class="lead mb-5">${title.aboutPerson}.</p>
                </tr>

            </c:forEach>
            <div class="social-icons">
                <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
            </div>
        </div>
    </section>
    <hr class="m-0" />

    <!-- Bootstrap core JS-->
       <%@include file="../dynamic/javaScript.jspf"%>
</body>
</html>
