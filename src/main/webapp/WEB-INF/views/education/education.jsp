<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>
<body id="page-top">
<!-- Navigation-->
<%@include file="../dynamic/navigationMain.jspf" %>
<!-- Page Content-->
<div class="container-fluid p-0">
    <section class="resume-section" id="education">
        <div class="resume-section-content">
            <td>
                <a href='<c:url value="/education/add"/> '
                   class="btn-right btn btn-info" role="button">Dodaj</a>
            </td>
            <h2 class="mb-5">Education</h2>


            <c:forEach items="${educationlist}" var="title">

                <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                    <div class="flex-grow-1">
                        <h3 class="mb-0">${title.schoolName}</h3>
                        <div class="subheading mb-3">${title.direction}</div>
                        <div>${title.specialization}</div>
                    </div>
                    <div class="flex-shrink-0">

                    <span class="text-primary"><fmt:formatDate pattern="yyyy-MM"
                                                               value="${title.startSience}"/> - <fmt:formatDate
                            pattern="yyyy-MM" value="${title.endSience}"/></span>
                        <td>
                            <a href='<c:url value="/education/${title.id}"/> '
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
