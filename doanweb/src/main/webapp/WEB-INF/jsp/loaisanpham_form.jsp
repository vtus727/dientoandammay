<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Product Type Form</title>
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
    <spring:url value="/loaisanpham/saveLoaiSanPham" var="saveURL" />
    <form:form modelAttribute="loaiSanPhamForm" method="post" action="${saveURL }" cssClass="form" >
        <form:hidden path="maloaisp"/>
        <div class="form-group">
            <label>Product Type Name</label>
            <form:input path="tenloaisp" cssClass="form-control" id="tenloaisp" />
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
    </form:form>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>