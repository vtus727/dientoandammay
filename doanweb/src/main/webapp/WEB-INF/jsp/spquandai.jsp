<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all"/>

    <link href="../../public/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="../../public/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../public/js/move-top.js"></script>
    <script type="text/javascript" src="../../public/js/easing.js"></script>
    <script type="text/javascript" src="../../public/js/startstop-slider.js"></script>
</head>
<body>
<div class="wrap">
    <div class="header">
        <div class="headertop_desc">
            <div class="call">
                <p><span>Need help?</span> Call us <span class="number">+84-905365078</span></p>
            </div>
            <div class="account_desc">
                <ul>
                    <li><a style="font-size: 15px" href="/login">Login</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="header_top">
            <div class="logo">
                <a href="/sanpham/list"><img src="../../public/images/cybex2-min.png" alt=""/></a>
            </div>
            <script type="text/javascript">
                function DropDown(el) {
                    this.dd = el;
                    this.initEvents();
                }

                DropDown.prototype = {
                    initEvents: function () {
                        var obj = this;

                        obj.dd.on('click', function (event) {
                            $(this).toggleClass('active');
                            event.stopPropagation();
                        });
                    }
                }

                $(function () {

                    var dd = new DropDown($('#dd'));

                    $(document).click(function () {
                        // all dropdowns
                        $('.wrapper-dropdown-2').removeClass('active');
                    });

                });

            </script>
            <div class="clear"></div>
        </div>
        <div class="header_bottom">
            <div class="menu">
                <ul>
                    <li class="active"><a href="/sanpham/list">Home</a></li>
                    <%--<li><a href="contact.html">Contact</a></li>--%>
                    <li><a href="/shoppingCart">Shopping Cart</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="header_slide">
            <div class="header_bottom_left">
                <div class="categories">
                    <ul>
                        <h3>Categories</h3>
                        <li><a href="/sanpham/spaothidau">T-shirt</a></li>
                        <li><a href="/sanpham/spgiay">Shoes</a></li>
                        <li><a href="/sanpham/spgangtay">Gloves</a></li>
                        <li><a href="/sanpham/spaokhoac">Coat</a></li>
                        <li><a href="/sanpham/spquandai">Pants</a></li>
                        <li><a href="/sanpham/spbongtd">Balls</a></li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>
                        <li style="color:transparent">Balls</li>

                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class="header_bottom_right">
                <div class="slider">
                    <div id="slider">
                        <div class="slider-img">
                            <img src="../../public/images/35be2bcb9d05cdb0e9596bc95a122ab0.jpg" alt="learn more" />
                        </div>

                    </div>
                </div>


            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="section group">
    <c:forEach items="${sanPhamList }" var="sanpham">
        <c:if test="${sanpham.maloaisp==1511006}" var="booleanValue">
            <div class="grid_1_of_4 images_1_of_4">
                <a href="/sanpham/chitietsanpham/${sanpham.masp}"><img
                        src="${pageContext.request.contextPath}../sanpham/productImage?masp=${sanpham.masp}"
                        alt=""/></a>
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
<div class="footer">
    <div class="wrap">
        <div class="section group">
            <div class="col_1_of_4 span_1_of_4">
                <h4>Address</h4>
                <ul>
                    <p>01 Vo Van Ngan St, Linh Chieu Award, Thu Duc Dist, Ho Chi Minh City </p>
                </ul>
            </div>

            <div class="col_1_of_4 span_1_of_4">
                <h4>Contact</h4>
                <ul>
                    <li><span>Phone: +84-905353508</span></li>
                    <li><span>Email: ttv.it@gmail.com</span></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <div class="social-icons">
                    <h4>Follow Us</h4>
                    <ul>
                        <li><a href="https://www.facebook.com/hoangviet290398" target="_blank"><img src="../../public/images/facebook.png" alt="" /></a></li>
                        <li><a href="#" target="_blank"><img src="../../public/images/twitter.png" alt="" /></a></li>
                        <li><a href="#" target="_blank"><img src="../../public/images/skype.png" alt="" /> </a></li>
                        <li><a href="#" target="_blank"> <img src="../../public/images/dribbble.png" alt="" /></a></li>
                        <li><a href="#" target="_blank"> <img src="../../public/images/linkedin.png" alt="" /></a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copy_right">
        <p>&copy; 2018 TTV | Design by TTV</p>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>

</body>
</html>

