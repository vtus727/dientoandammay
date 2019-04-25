<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>Cybex Shop</title>
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
<jsp:include page="header.jsp"></jsp:include>

<div class="container">

    <div class="main">
        <div class="content">
            <div class="content_top">
                <div class="heading">
                    <h3>Product</h3>
                </div>
                <div class="clear"></div>
            </div>

            <div class="section group">
                <c:forEach items="${sanPhamList }" var="sanpham" begin="0" end="0" >
                    <c:if test="${sanpham.maloaisp==1511005}" var="booleanValue">
                        <div class="grid_1_of_4 images_1_of_4">
                            <a href="/sanpham/chitietsanpham/${sanpham.masp}"><img src="${pageContext.request.contextPath}../sanpham/productImage?masp=${sanpham.masp}" alt="" /></a>
                            <h2>${sanpham.tensp} </h2>
                            <div class="price-details">
                                <div class="price-number">
                                    <p><span class="rupees">$ ${sanpham.dongia}</span></p>
                                </div>
                                <div class="add-cart">
                                    <h4><spring:url value="${pageContext.request.contextPath}../addCart?masp=${sanpham.masp}"
                                                    var="cartURL" /><a href="${cartURL}">Add to Cart</a></h4>
                                </div>
                                <div class="clear"></div>
                            </div>

                        </div>
                    </c:if>
                </c:forEach>


                <c:forEach items="${sanPhamList }" var="sanpham" begin="0" end="4" >
                <c:if test="${sanpham.maloaisp==1511001}" var="booleanValue">
                    <div class="grid_1_of_4 images_1_of_4">
                        <a href="/sanpham/chitietsanpham/${sanpham.masp}"><img src="${pageContext.request.contextPath}../sanpham/productImage?masp=${sanpham.masp}" alt="" /></a>
                        <h2>${sanpham.tensp} </h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$ ${sanpham.dongia}</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><spring:url value="${pageContext.request.contextPath}../addCart?masp=${sanpham.masp}"
                                                var="cartURL" /><a href="${cartURL}">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>

                    </div>
                </c:if>

                </c:forEach>

                <c:forEach items="${sanPhamList }" var="sanpham" begin="0" end="18" >
                <c:if test="${sanpham.maloaisp==1511002}" var="booleanValue">
                    <div class="grid_1_of_4 images_1_of_4">
                        <a href="/sanpham/chitietsanpham/${sanpham.masp}"><img src="${pageContext.request.contextPath}../sanpham/productImage?masp=${sanpham.masp}" alt="" /></a>
                        <h2>${sanpham.tensp} </h2>
                        <div class="price-details">
                            <div class="price-number">
                                <p><span class="rupees">$${sanpham.dongia}</span></p>
                            </div>
                            <div class="add-cart">
                                <h4><spring:url value="${pageContext.request.contextPath}../addCart?masp=${sanpham.masp}"
                                                var="cartURL" /><a href="${cartURL}">Add to Cart</a></h4>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>

                <c:forEach items="${sanPhamList }" var="sanpham" begin="0" end="26" >
                    <c:if test="${sanpham.maloaisp==1511004}" var="booleanValue">
                        <div class="grid_1_of_4 images_1_of_4">
                            <a href="/sanpham/chitietsanpham/${sanpham.masp}"><img src="${pageContext.request.contextPath}../sanpham/productImage?masp=${sanpham.masp}" alt="" /></a>
                            <h2>${sanpham.tensp} </h2>
                            <div class="price-details">
                                <div class="price-number">
                                    <p><span class="rupees">$${sanpham.dongia}</span></p>
                                </div>
                                <div class="add-cart">
                                    <h4><spring:url value="${pageContext.request.contextPath}../addCart?masp=${sanpham.masp}"
                                                    var="cartURL" /><a href="${cartURL}">Add to Cart</a></h4>
                                </div>
                                <div class="clear"></div>
                            </div>

                        </div>
                    </c:if>

                </c:forEach>
            </div>
        </div>
    </div>
    <spring:url value="/sanpham/addSanPham/" var="addURL" />

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>