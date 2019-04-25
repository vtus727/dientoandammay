<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <title>Customer Form</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../../public/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <script type="text/javascript" src="../../public/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../public/js/move-top.js"></script>
    <script type="text/javascript" src="../../public/js/easing.js"></script>
    <script type="text/javascript" src="../../public/js/startstop-slider.js"></script>
</head>
<body>
<jsp:include page="header_admin.jsp"></jsp:include>
<div class="container">
    <spring:url value="/khachhang/saveKhachHang" var="saveURL" />
    <form:form modelAttribute="khachHangForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="makh"/>

        <div class="form-group">
            <label>Customer Name</label>
            <form:input path="tenkh" cssClass="form-control" id="tenkh" />
        </div>
        <div class="form-group">
            <label>Phone</label>
            <form:input path="sodienthoai" cssClass="form-control" id="sodienthoai" />
        </div>
        <div class="form-group">
            <label>Address</label>
            <form:input path="diachi" cssClass="form-control" id="diachi" />
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form:form>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>