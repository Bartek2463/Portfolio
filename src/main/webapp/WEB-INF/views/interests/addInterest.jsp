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
                <form method="post" action='<c:url value="/interests"/>'>
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
                                    </div>
                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Zainteresowania</label>
                                        <div class="col-10">
                                <textarea class="form-control" rows="5" id="start" name="interest"
                                          placeholder="opisz swoje doświadczenie"></textarea>
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
