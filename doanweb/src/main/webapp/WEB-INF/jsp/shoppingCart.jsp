<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../../public/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="../../public/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../public/js/move-top.js"></script>
    <script type="text/javascript" src="../../public/js/easing.js"></script>
    <script type="text/javascript" src="../../public/js/startstop-slider.js"></script>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>

<form:form modelAttribute="cartForm" action="${pageContext.request.contextPath}/shoppingCart" method="post">
<div class="container">

    <div class="main">
        <div class="content">
            <div class="content_top">
                <div class="heading">
                    <h3>Shopping Cart</h3>
                </div>

                <div class="see">
                    <p><a href="#"></a></p>
                </div>
                <div class="clear"></div>
            </div>
            <div class="section group">

                <div>
                    <c:forEach items="${cartForm.cartLines }" var="sanpham" varStatus="varStatus">

                        <div class="grid_1_of_4 images_1_of_4">
                            <a href="#"><img src="${pageContext.request.contextPath}../sanpham/productImage?masp=${sanpham.productInfo.masp}" alt="" /></a>
                            <h2>${sanpham.productInfo.tensp} </h2>
                            <div class="price-details">
                                <div class="price-number">
                                    <form:hidden path="cartLines[${varStatus.index}].productInfo.masp" />
                                    <p><span class="rupees">$${sanpham.productInfo.dongia}</span></p>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="form-group">
                                <form:input path="cartLines[${varStatus.index}].quantity" type="number" />
                            </div>
                            <h4><a>Total:  $${sanpham.amount} </a></h4>
                            <br/>
                            <td><spring:url value="${pageContext.request.contextPath}../shoppingCartRemoveProduct?masp=${sanpham.productInfo.masp}"
                                            var="deleteURL" /> <a class="btn btn-danger btn-lg active"
                                                                  href="${deleteURL }" role="button">Detele</a></td>

                        </div>
                    </c:forEach>
                </div>


                    </div>


            </div>
        </div>
    </div>

<div class="txt-center">
    <td><input type="submit" value="Update" class="btn btn-success btn-lg active"></td>
    <td><spring:url value="/shoppingCartCustomer"
                    var="updateURL" /> <a class="btn btn-success btn-lg active"
                                          href="${updateURL }" role="button">Customer Info</a></td>
    <td><spring:url value="/sanpham/list"
                    var="updateURL" /> <a class="btn btn-success btn-lg active"
                                          href="${updateURL }" role="button">Home</a></td>
</div>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>