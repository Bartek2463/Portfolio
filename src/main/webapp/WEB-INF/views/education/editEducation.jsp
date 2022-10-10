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
                <form method="post" action='<c:url value="/education/edit/${education.id}"/>'>

                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Szkoły</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="schoolName"
                                                   value="${education.schoolName}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Kierunek </label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="direction"
                                                   value="${education.direction}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Specializacji</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="specialization"
                                                   value="${education.specialization}">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Data Rozpoczęcia Szkoły</label>
                                        <div class="col-10">
                                            <input class="form-control" name="startSience" value='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${education.startSience}"/>' min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" placeholder="">

                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Data Ukończenia szkoły</label>
                                        <div class="col-10">
                                            <input class="form-control" name="endSience" value='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${education.endSience}"/>' min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" placeholder="">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Zapisz" id="searchButton"></input>
                </form>
                <form method="post" action='<c:url value="/education/${education.id}"/> '>
                    <input class="btn btn-danger" type="submit" value="Usun">
                </form>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
        <%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>
