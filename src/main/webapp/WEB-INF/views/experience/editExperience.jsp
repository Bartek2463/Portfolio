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
                <form method="post" action='<c:url value="/editExperience/${experience.id}"/>'>

                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Stanowiska</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="jobTitle"
                                                   value="${experience.jobTitle}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Firmy</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="companyName"
                                                   value="${experience.companyName}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Projektu</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="projectName"
                                                   value="${experience.projectName}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Początek Daty zatrudnienia</label>
                                        <div class="col-10">
                                            <input class="form-control" name="startJob" value='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${experience.startJob}"/>' min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" placeholder="">

                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Koniec Daty zatrudnienia</label>
                                        <div class="col-10">
                                            <input class="form-control" name="endJob" value='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${experience.endJob}"/>' min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" placeholder="">
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Opis Doświdczenia</label>
                                        <div class="col-10">
                                <textarea class="form-control" rows="5" id="start" name="descriptionExp"
                                          >${experience.descriptionExp}</textarea>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Zapisz" id="searchButton"></input>
                </form>
                <form method="post" action='<c:url value="/deleteExperience/${experience.id}"/> '>
                    <input class="btn btn-danger" type="submit" value="Usun">
                </form>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
        <%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>
