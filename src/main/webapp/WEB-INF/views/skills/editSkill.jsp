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
                <form method="post" action='<c:url value="${skill.id}"/>'>

                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Rodzaj umiejetności</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="type"
                                                   value="${skill.type}">
                                        </div>

                                    </div>
                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Umiejetnosci</label>
                                        <div class="col-10">
                                            <textarea class="form-control" rows="5" id="start" name="skills"
                                                      rows="5">${skill.skills}</textarea>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <input class="btn btn-success pull-left" type="submit" value="Zapisz" id="searchButton"></input>
                </form>
                <form method="post" action='<c:url value="/skill/delete/${skill.id}"/> '>
                    <input class="btn btn-danger" type="submit" value="Usun">
                </form>


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
        <%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>

