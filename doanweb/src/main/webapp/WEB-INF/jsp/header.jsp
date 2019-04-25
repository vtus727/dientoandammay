<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
                    <%--<li><a href="/sanpham/contact">Contact</a></li>--%>
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
            </div>
            <div class="header_bottom_right">
                <div class="slider">
                    <div id="slider">
                        <div class="slider-img">
                            <img src="../../public/images/j4087cklyatlwe6knfaz.jpg" alt="learn more"/>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
</div>
</body>