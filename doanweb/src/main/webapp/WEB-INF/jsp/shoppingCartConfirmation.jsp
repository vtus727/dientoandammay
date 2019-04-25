shoppingCartCustomer.jspshoppingCartCustomer.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>San Pham List</title>
    <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../../public/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="../../public/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../public/js/move-top.js"></script>
    <script type="text/javascript" src="../../public/js/easing.js"></script>
    <script type="text/javascript" src="../../public/js/startstop-slider.js"></script>
</head>

<header>
    <jsp:include page="header2.jsp"></jsp:include>
</header>
<body>
<div class="container" >
    <div class="content_top">
        <div class="heading">
            <h3>Confirmation</h3>
        </div>

        <div class="clear"></div>
    </div>
    <div class="container">
        <table class="table table-striped">
            <tbody>
            <tr>
                <th scope="row">TenKH</th>
                <td><b>${myCart.customerInfo.tenkh}</b></td>

            </tr>
            <tr>
                <th scope="row">Phone</th>
                <td><b>${myCart.customerInfo.sodienthoai}</b></td>

            </tr>
            <tr>
                <th scope="row">Address</th>
                <td><b>${myCart.customerInfo.diachi}</b></td>

            </tr>
            <tr>
                <th scope="row">Total Quantity</th>
                <td><b>${myCart.quantityTotal}</b></td>

            </tr>
            <tr>
                <th scope="row">Total Amount</th>
                <td><b>${myCart.amountTotal}</b></td>

            </tr>
            </tbody>
        </table>
    </div>
</div>
<<form:form action="${pageContext.request.contextPath}/shoppingCartConfirmation" method="post">
    <div class="text-center" style="padding-bottom: 50px">
        <!-- Edit Cart -->
        <td><spring:url value="/shoppingCart"
                        var="editCartURL" /> <a class="btn btn-success btn-lg active"
                                                href="${editCartURL }" role="button">Edit Cart</a></td>
        <!-- Edit Customer Info -->
        <td><spring:url value="/shoppingCartCustomer"
                        var="editCusURL" /> <a class="btn btn-success btn-lg active"
                                               href="${editCusURL }" role="button">Edit Customer Info</a></td>
        <!-- Send/Save -->
        <input type="submit" value="Send" class="btn btn-success btn-lg active" />
    </div>
</form:form>
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>