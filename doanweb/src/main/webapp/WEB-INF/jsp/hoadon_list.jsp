<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <title>Bill List</title>
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
    <table class="table table-striped">
        <thead>
        <th scope="row">Bill ID</th>
        <th scope="row">Customer ID</th>
        <th scope="row">Employee ID</th>
        <th scope="row">Order Date</th>
        <th scope="row">Received Date</th>
        </thead>
        <tbody>
        <c:forEach items="${hoaDonList }" var="hoadon" >
            <tr>
                <td>${hoadon.mahd }</td>
                <td>${hoadon.makh }</td>
                <td>${hoadon.manv }</td>
                <td>${hoadon.ngaylaphd }</td>
                <td>${hoadon.ngaynhanhang }</td>
                <td>
                    <spring:url value="/hoadon/updateHoaDon/${hoadon.mahd}" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="/hoadon/deleteHoaDon/${hoadon.mahd}" var="deleteURL" />
                    <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/hoadon/addHoaDon/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Add New Bill</a>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>