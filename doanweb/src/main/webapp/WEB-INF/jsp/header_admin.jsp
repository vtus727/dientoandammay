<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body>
<div class="wrap">
    <div class="header">
        <div class="headertop_desc">
            <div class="account_desc">
                <ul>
                    <li><a style="font-size: 15px" href="/login">Login</a></li>
                    <li><a style="font-size: 15px" href="#">Hi! ${username}</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="header_top">
            <div class="logo">
                <a href="/sanpham/listadmin"><img src="../../public/images/cybex2-min.png" alt="" /></a>
            </div>

            <script type="text/javascript">
                function DropDown(el) {
                    this.dd = el;
                    this.initEvents();
                }
                DropDown.prototype = {
                    initEvents : function() {
                        var obj = this;

                        obj.dd.on('click', function(event){
                            $(this).toggleClass('active');
                            event.stopPropagation();
                        });
                    }
                }

                $(function() {

                    var dd = new DropDown( $('#dd') );

                    $(document).click(function() {
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
                    <li class="active"><a href="/sanpham/listadmin">Product</a></li>
                    <%--<li><a href="/nhanvien/list">Employee</a></li>--%>
                    <li><a href="/loaisanpham/list">Product Type</a></li>
                    <li><a href="/khachhang/list">Customer</a></li>
                    <li><a href="/hoadon/list">Bill</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="clear"></div>
        </div>

    </div>
</div>
</body>