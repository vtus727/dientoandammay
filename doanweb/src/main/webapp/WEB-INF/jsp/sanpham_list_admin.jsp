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
    <title>Admin Page</title>
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
        <th scope="row">Product ID</th>
        <th scope="row">Product Name</th>
        <th scope="row">Price</th>
        <th scope="row">Image Product</th>
        <th scope="row">Product Type ID</th>
        <th scope="row">Product Description</th>

        </thead>
        <tbody>
        <c:forEach items="${sanPhamListAdmin }" var="sanpham" >
            <tr>
                <td>${sanpham.masp }</td>
                <td>${sanpham.tensp }</td>
                <td>${sanpham.dongia }</td>
                <td>${sanpham.hinhsp }</td>
                <td>${sanpham.maloaisp }</td>
                <td>${sanpham.motasp }</td>
                <td>
                <td>
                    <spring:url value="/sanpham/updateSanPham2/${sanpham.masp}" var="updateURL" />
                    <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
                </td>
                <td>
                    <spring:url value="/sanpham/deleteSanPham1/${sanpham.masp}" var="deleteURL" />
                    <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/sanpham/addSanPham2/" var="addURL" />
    <a class="btn btn-primary" href="${addURL }" role="button" >Add New Product</a>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>