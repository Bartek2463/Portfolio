<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">
<%@include file="../dynamic/navigationMain.jspf" %>
<!-- Page Content-->
<div class="container-fluid p-0">
    <section class="resume-section" id="experience">
        <div class="resume-section-content">
            <td>
                <a href='<c:url value="/addExperience"/> '
                   class="btn-right btn btn-info" role="button">Dodaj</a>
            </td>
            <h2 class="mb-5">Experience</h2>

            <c:forEach items="${experiences}" var="title">

                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                    <div class="flex-grow-1">
                        <h3 class="mb-0">${title.jobTitle}</h3>
                        <div class="subheading mb-3">${title.projectName}</div>
                        <p>${title.descriptionExp}</p>
                    </div>
                    <div class="flex-shrink-0">
                        <span class="text-primary"><fmt:formatDate pattern="yyyy-MM"
                                                                   value="${title.startJob}"/> - <fmt:formatDate
                                pattern="yyyy-MM" value="${title.endJob}"/></span>
                        <td>
                            <a href='<c:url value="/editExperience/${title.id}"/> '
                               class="btn-right btn btn-primary" role="button">Edytuj</a>
                        </td>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
    <hr class="m-0"/>

    <!-- Bootstrap core JS-->
    <%@include file="../dynamic/javaScript.jspf" %>
</body>
</html>