<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf"%>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <%@include file="../dynamic/navigationMain.jspf" %>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <div id="content">



            <!-- Begin Page Content -->
            <div class="container-fluid">
                <form method="post" action='<c:url value="/addAbout"/>'>
                    <!-- Content Row -->
                    <div class="row">
                        <div class="col-xl-12 col-md-12 mb-12">
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Imię</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="firstName" placeholder="uzupełnij imię">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Nazwisko</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="lastName"  placeholder="uzupełnij nazwisko">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Adres</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="adres"  placeholder="uzupełnij adres">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Kod Pcztowy</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="zipCode"  placeholder="uzupełnij kod Pocztowy">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Poczta</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="postOffice"  placeholder="uzupełnij pocztę">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Numer Telefonu</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="numberPhone"  placeholder="uzupełnij Numer telefonu">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Adres Email</label>
                                        <div class="col-10">
                                            <input class="form-control" type="text" name="adresEmail"  placeholder="uzupełnij adres Email">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="start" class="col-2 col-form-label">Cos o sobie :</label>
                                        <div class="col-10">
                                <textarea class="form-control" rows="5" id="start" name="aboutPerson"
                                          placeholder="napisz kilka słów co sobie..."></textarea>
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
