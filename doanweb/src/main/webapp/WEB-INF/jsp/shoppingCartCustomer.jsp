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

    <link href="../../public/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../../public/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="../../public/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../../public/js/move-top.js"></script>
    <script type="text/javascript" src="../../public/js/easing.js"></script>
    <script type="text/javascript" src="../../public/js/startstop-slider.js"></script>
</head>

<header>
    <jsp:include page="header.jsp"></jsp:include>
</header>
<body>
<div class="container">
            <div class="content_top">
                <div class="heading">
                    <h3>Customer Information</h3>
                </div>

                <div class="clear"></div>

            </div>
            <div>
                <form:form action="/shoppingCartCustomer" modelAttribute="customerForm" method="post">
                    <div class="new_arrivals_agile_w3ls_info" style="padding-top:0px">
                         <div class="container">

                         <div class="form-group">
                             <label>Name</label>
                                 <input name="tenkh" type="text" class="form-control" id="tenkh" />
                         </div>
                             <div class="form-group">
                             <label>Phone</label>
                                  <input name="sodienthoai" type="text" class="form-control" id="sodienthoai"  />
                         </div>
                        <div class="form-group">
                            <label>Address</label>
                                 <input name="diachi" type="text" class="form-control" id="diachi"  />
                         </div>
                         <div class="text-center">
                                 <input class="btn btn-success btn-lg active" type="submit" value="Save"/>
                                 <input class="btn btn-success btn-lg active" type="reset" value="Reset" />
                         </div>
                         </div>
                    </div>
                </form:form>
            </div>
        </div>

</div>
</body>
<footer>
    <jsp:include page="footer.jsp"></jsp:include>
</footer>

</html>