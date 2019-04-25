<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<head>
    <title>Free Home Shoppe Website Template | Preview :: w3layouts</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="../../public/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../public/js/move-top.js"></script>
    <script type="text/javascript" src="../../public/js/easing.js"></script>
    <script src="../../public/js/easyResponsiveTabs.js" type="text/javascript"></script>
    <link href="../../public/css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="../../public/css/global.css">
    <script src="../../public/js/slides.min.jquery.js"></script>
    <script>
        $(function(){
            $('#products').slides({
                preload: true,
                preloadImage: 'img/loading.gif',
                effect: 'slide, fade',
                crossfade: true,
                slideSpeed: 350,
                fadeSpeed: 500,
                generateNextPrev: true,
                generatePagination: false
            });
        });
    </script>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
<div class="wrap">
    <div class="main">
        <div class="content">
            <div class="content_top">
                <div class="back-links">
                     <%--<p><a href="index.html">Home</a> >>>> <a href="#">Electronics</a></p>--%>
                </div>
                <div class="clear"></div>
            </div>
            <div class="section group">
                <spring:url value="/chitietsanpham" var="detailURL" />
                <form:form modelAttribute="chiTietSanPham" method="post" action="${detailURL }" cssClass="form" >
                <div class="cont-desc span_1_of_2">
                    <div class="product-details">
                        <div class="grid images_3_of_2">
                            <div id="container">
                                <div id="products_example">
                                    <div id="products">
                                        <div class="slides_container">

                                            <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/sanpham/productImage?masp=${chiTietSanPham.masp}" alt=" " /></a>
                                        </div>
                                        <ul class="pagination">
                                            <li><a href="#"><img src="${pageContext.request.contextPath}/sanpham/productImage?masp=${chiTietSanPham.masp}" alt=" " /></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="desc span_3_of_2">
                            <h2>${chiTietSanPham.tensp} </h2>
                            <p>${chiTietSanPham.motasp}</p>
                            <div class="price">
                                <p>Price: <span>$${chiTietSanPham.dongia}</span></p>
                            </div>

                            <div class="share-desc">
                                <div class="share">
                                    <p>Share Product :</p>
                                    <ul>
                                        <li><a href="#"><img src="../../public/images/facebook.png" alt="" /></a></li>
                                        <li><a href="#"><img src="../../public/images/twitter.png" alt="" /></a></li>
                                    </ul>
                                </div>

                                <div class="button"><span><spring:url value="${pageContext.request.contextPath}/addCart?masp=${chiTietSanPham.masp}"
                                                                      var="cartURL"/><a href="${cartURL}">Add to Cart</a></span></div>

                                <div class="clear"></div>
                            </div>
                            <div class="wish-list">

                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="product_desc">
                        <div id="horizontalTab">
                            <ul class="resp-tabs-list">
                                <li>Product Details</li>

                                <div class="clear"></div>
                            </ul>
                            <div class="resp-tabs-container">
                                <div class="product-desc">
                                    <p>${chiTietSanPham.motasp}</p>

                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>

                    </div>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>