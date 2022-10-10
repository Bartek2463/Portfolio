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
                <form method="post" action='<c:url value="/education/add"/>'>
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
                                        <label class="col-2 col-form-label">Nazwa Szkoly</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="schoolName"
                                                   placeholder="uzupełnij nazwe Szkoły">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Kierunku</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="direction"
                                                   placeholder="uzupełnij nazwę kierunku">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwa Specjalizacji</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="specialization"
                                                   placeholder="uzupełnij nazwę Projektu">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Początek Daty rozpoczecia Szkoły</label>
                                        <div class="col-10">
                                            <input class="form-control" name="startSience" min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" placeholder="">
                                        </div>
                                    </div>


                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Koniec Daty zatrudnienia</label>
                                        <div class="col-10">
                                            <input class="form-control" name="endSience" min="now" max='<fmt:formatDate pattern = "yyyy-MM-dd"
         value = "${now}"/>' type="date" max="now" placeholder="">
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

