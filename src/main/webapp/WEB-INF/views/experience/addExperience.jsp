<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <%@include file="../dynamic/navigationMain.jspf" %>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <div id="content">
            <!-- Begin Page Content -->
            <div class="container-fluid">
                <form method="post" action='<c:url value="/addExperience"/>'>
                    <!-- Content Row -->
                    <select class="form-control" name="about.id">
                        <option hidden>wybierz</option>
                        <c:forEach items="${about}" var="title">
                            <option value="${title.id}">${title.firstName} ${title.lastName}</option>
                        </c:forEach>
                    </select>

                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Stanowiska</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="jobTitle"
                                                   placeholder="uzupełnij nazwe Stanowiska">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Firmy</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="companyName"
                                                   placeholder="uzupełnij nazwę firmy">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Projektu</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="projectName"
                                                   placeholder="uzupełnij nazwę Projektu">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Początek Daty zatrudnienia</label>
                                        <div class="col-10">
                                            <input class="form-control" name="startJob" min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" placeholder="">
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Koniec Daty zatrudnienia</label>
                                        <div class="col-10">
                                            <input class="form-control" name="endJob" min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" max="now" placeholder="">
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Opis Doświdczenia</label>
                                        <div class="col-10">
                                <textarea class="form-control" rows="5" id="start" name="descriptionExp"
                                          placeholder="napisz kilka słów o swoim doświadczeniu"></textarea>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>
                </form>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
        <%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>
