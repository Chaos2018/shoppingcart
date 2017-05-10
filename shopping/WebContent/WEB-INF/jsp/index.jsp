<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*,com.neusoft.user.controller.CommodityController" pageEncoding="UTF-8"%>
<%@ page import="com.neusoft.user.pojo.Commodity" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>主页</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="../js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="../js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="../js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <!-- animation-effect -->
    <link href="../css/animate.min.css" rel="stylesheet">
    <script src="../js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
    <%--<link href='http://fonts.useso.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>--%>
    <%--<link href='http://fonts.useso.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>--%>
</head>

<body>
<!-- header -->
<div class="header">
    <div class="header-grid">
        <div class="container">
            <div class="header-left animated wow fadeInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-headphones"></i><a href="#">24x7 客服服务</a></li>
                    <li><i class="glyphicon glyphicon-envelope" ></i><a  href="mailto:info@example.com">xiyeming@163.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" ></i>+86 186-3359-5156</li>

                </ul>
            </div>
            <div class="header-right animated wow fadeInRight" data-wow-delay=".5s">
                <div class="header-right1 ">
                    <ul>

                        <li id="logli"><i id="login" class="glyphicon glyphicon-log-in" ></i><a id="loga" href="${pageContext.request.contextPath}/view/login">登入</a></li>
                        <li id="logli2"><i id="login2" class="glyphicon glyphicon-book" ></i><a id="loga2" href="${pageContext.request.contextPath}/view/register">注册</a></li>
                    </ul>
                </div>
                <div class="header-right2">
                    <div class="cart box_1">
                        <a href="${pageContext.request.contextPath}/view/checkout">
                            <h3> <div class="total">
                                <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</div>
                                <img src="../images/cart.png" alt="" />
                            </h3>
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="container">
        <div class="logo-nav">

            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header nav_2">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand logo-nav-left ">
                        <h1 class="animated wow pulse" data-wow-delay=".5s"><a href="${pageContext.request.contextPath}/view/index">美丽说<span>魅力无限</span></a></h1>
                    </div>

                </div>
                <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="${pageContext.request.contextPath}/view/index" class="act">主页</a></li>
                        <!-- Mega Menu -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">女装 <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/view/women">女装</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">配件</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">新到货</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">连衣裙</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">休闲衬衫</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">短裤</a></li>
                            </ul>

                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">男装 <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/view/men">男装</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">配件</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">大衣 & 夹克</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">牛仔裤</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">新到货</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">西装</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">休闲衬衫</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/view/contact">关于我们</a></li>
                    </ul>
                </div>
            </nav>
        </div>

    </div>
</div>
<!-- //header -->


<!-- banner -->
<div class="banner">


    <div class="banner-right">
        <ul id="flexiselDemo2">
            <script>
                $.ajax({
                    url:'${pageContext.request.contextPath}/com/admin/selectall',
                    dataType:'json',
                    success:function(data){
                        $("<li></li>").attr("id","comli").appendTo($('#flexiselDemo2'));
                        $('<div></div>').attr("class",'banner-grid').appendTo($('#comli'));
                        $('<h2></h2>').text("热门商品").appendTo($('.banner-grid'));
                        $('<div></div>').attr("class","wome").appendTo($('.banner-grid'));
                        $('<a></a>').attr("class","coma").attr("href","${pageContext.request.contextPath}/view/single").appendTo($('.wome'));
                        $('<img/>').attr("class","img-responsive").attr("src","../images/bi1.jpg").attr("alt","''").appendTo($('.coma'));
                        $('<div></div>').attr("class","women simpleCart_shelfItem").appendTo($('.wome'));
                        $('<a></a>').attr("class","coma2").attr("href","#").appendTo($('.women simpleCart_shelfItem'));
                        $('<img>').attr("src","../images/ll.png").attr("alt","''").appendTo($('.coma2'));
                        $('<h6></h6>').attr("class","comh6").appendTo($('.women simpleCart_shelfItem'));
                        $('<a></a>').attr("class","coma2").attr("href","${pageContext.request.contextPath}/view/single").text("Sed ut perspiciatis unde").appendTo($('.comh6'));
                        $('<p></p>').attr("class","ba-price").appendTo($('.women simpleCart_shelfItem'));
                        $('<del></del>').text('$100.00').appendTo($('.ba-price'));
                        $('<em></em>').text("$70.00").attr("class","item_price").appendTo($('.ba-price'));
                        $('<a></a>').attr("class","but-hover1 item_add").attr("href","#").attr("data-text","添加到购物车").appendTo($('.women simpleCart_shelfItem'));
                    },
                    error:function(a,b,c){
                        alert(c);
                    }
                })
            </script>
            <%--<li>
                <div class="banner-grid">
                    <h2>热门商品</h2>
                    <div class="wome">
                    <a href="${pageContext.request.contextPath}/view/single" ><img class="img-responsive" src="../images/bi1.jpg" alt="" />
                    </a>
                        <div class="women simpleCart_shelfItem">
                            <a href="#"><img src="../images/ll.png" alt=""></a>
                            <h6 ><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                            <p class="ba-price"><del>$100.00</del><em class="item_price">$70.00</em></p>
                            <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                        </div>
                    </div>
                </div>
            </li>--%>
        </ul>
        <script type="text/javascript">
            $(window).load(function() {
                $("#flexiselDemo2").flexisel({
                    visibleItems: 1,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 5000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint:480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint:640,
                            visibleItems: 1
                        },
                        tablet: {
                            changePoint:768,
                            visibleItems: 1
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="../js/jquery.flexisel.js"></script>

    </div>


</div>

</div>
<!-- //banner -->
<!--content-->
<div class="content">
    <div class="content-head">

        <div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
            <div class="col-1">
                <div class="col-md-6 col-2">
                    <a href="${pageContext.request.contextPath}/view/single"><img src="../images/pi3.jpg" class="img-responsive" alt="">
                    </a></div>
                <div class="col-md-6 col-p">
                    <h5>For All Collections</h5>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                        praesentium voluptatum deleniti atque</p>
                    <a href="${pageContext.request.contextPath}/view/single" class="shop" data-hover="点击查看">点击查看</a>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-1">
                <div class="col-md-6 col-p">
                    <h5>For All Collections</h5>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                        praesentium voluptatum deleniti atque</p>
                    <a href="${pageContext.request.contextPath}/view/single" class="shop" data-hover="点击查看">点击查看</a>
                </div>
                <div class="col-md-6 col-2">
                    <a href="${pageContext.request.contextPath}/view/single"><img src="../images/pi.jpg" class="img-responsive" alt="">
                    </a></div>
                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s">

            <!---->
            <!-- requried-jsfiles-for owl -->
            <link href="../css/owl.carousel.css" rel="stylesheet">
            <script src="../js/owl.carousel.js"></script>
            <script>
                $(document).ready(function() {
                    $("#owl-demo").owlCarousel({
                        items : 2,
                        lazyLoad : false,
                        autoPlay : true,
                        navigation : true,
                        navigationText :  true,
                        pagination : false,
                    });
                });
            </script>
            <!-- //requried-jsfiles-for owl -->
            <!-- start content_slider -->
            <div id="owl-demo" class="owl-carousel">
                <div class="item">

                    <a href="${pageContext.request.contextPath}/view/single"><img class="img-responsive" src="../images/bb.png" alt="" /></a>
                    <a href="${pageContext.request.contextPath}/view/single" class="shop-2" >点击查看</a>

                </div>
                <div class="item">

                    <a href="${pageContext.request.contextPath}/view/single"><img class="img-responsive" src="../images/bb1.png" alt="" /></a>
                    <a href="${pageContext.request.contextPath}/view/single" class="shop-2">点击查看</a>

                </div>

                <div class="item">

                    <a href="${pageContext.request.contextPath}/view/single"><img class="img-responsive" src="../images/bb.png" alt="" /> </a>
                    <a href="${pageContext.request.contextPath}/view/single" class="shop-2">点击查看</a>

                </div>
                <div class="item">

                    <a href="${pageContext.request.contextPath}/view/single"><img class="img-responsive" src="../images/bb1.png" alt="" /></a>
                    <a href="${pageContext.request.contextPath}/view/single" class="shop-2">点击查看</a>

                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<!---->

<div class="content-top">
    <div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
        <div class="col-3">
            <a href="${pageContext.request.contextPath}/view/women"><img src="../images/pi1.jpg" class="img-responsive " alt="">
                <div class="col-pic">
                    <h5> 魅力女装</h5>
                    <p>点击查看详情</p>
                </div></a>
        </div>

    </div>
    <div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
        <div class="col-sm-4 item-grid simpleCart_shelfItem">
            <div class="grid-pro">
                <div  class=" grid-product " >
                    <figure>
                        <a href="${pageContext.request.contextPath}/view/single">
                            <div class="grid-img">
                                <img src="../images/pr1.jpg" class="img-responsive" alt="">
                            </div>
                            <div class="grid-img">
                                <img src="../images/pr.jpg" class="img-responsive" alt="">
                            </div>
                        </a>
                    </figure>
                </div>
                <div class="women">
                    <a href="#"><img src="../images/ll.png" alt=""></a>
                    <h6><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                    <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
                    <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                </div>
            </div>
        </div>

        <div class="col-sm-4 item-grid simpleCart_shelfItem">
            <div class="grid-pro">
                <div  class=" grid-product " >
                    <figure>
                        <a href="${pageContext.request.contextPath}/view/single">
                            <div class="grid-img">
                                <img src="../images/pr3.jpg" class="img-responsive" alt="">
                            </div>
                            <div class="grid-img">
                                <img src="../images/pr2.jpg" class="img-responsive" alt="">
                            </div>
                        </a>
                    </figure>
                </div>
                <div class="women">
                    <a href="#"><img src="../images/ll.png" alt=""></a>
                    <h6><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                    <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
                    <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4 item-grid simpleCart_shelfItem">
            <div class="grid-pro">
                <div  class=" grid-product " >
                    <figure>
                        <a href="${pageContext.request.contextPath}/view/single">
                            <div class="grid-img">
                                <img src="../images/pr5.jpg" class="img-responsive" alt="">
                            </div>
                            <div class="grid-img">
                                <img src="../images/pr4.jpg" class="img-responsive" alt="">
                            </div>
                        </a>
                    </figure>
                </div>
                <div class="women">
                    <a href="#"><img src="../images/ll.png" alt=""></a>
                    <h6><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                    <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
                    <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
</div>
<!----->
<!---->
<div class="content-top">

    <div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
        <div class="col-sm-4 item-grid simpleCart_shelfItem">
            <div class="grid-pro">
                <div  class=" grid-product " >
                    <figure>
                        <a href="${pageContext.request.contextPath}/view/single">
                            <div class="grid-img">
                                <img src="../images/pr6.jpg" class="img-responsive" alt="">
                            </div>
                            <div class="grid-img">
                                <img src="../images/pr7.jpg" class="img-responsive" alt="">
                            </div>
                        </a>
                    </figure>
                </div>
                <div class="women">
                    <a href="#"><img src="../images/ll.png" alt=""></a>
                    <h6><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                    <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
                    <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                </div>
            </div>

        </div>

        <div class="col-sm-4 item-grid simpleCart_shelfItem">
            <div class="grid-pro">
                <div  class=" grid-product " >
                    <figure>
                        <a href="${pageContext.request.contextPath}/view/single">
                            <div class="grid-img">
                                <img src="../images/pr9.jpg" class="img-responsive" alt="">
                            </div>
                            <div class="grid-img">
                                <img src="../images/pr8.jpg" class="img-responsive" alt="">
                            </div>
                        </a>
                    </figure>
                </div>
                <div class="women">
                    <a href="#"><img src="../images/ll.png" alt=""></a>
                    <h6><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                    <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
                    <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4 item-grid simpleCart_shelfItem">
            <div class="grid-pro">
                <div  class=" grid-product " >
                    <figure>
                        <a href="${pageContext.request.contextPath}/view/single">
                            <div class="grid-img">
                                <img src="../images/pr10.jpg" class="img-responsive" alt="">
                            </div>
                            <div class="grid-img">
                                <img src="../images/pr11.jpg" class="img-responsive" alt="">
                            </div>
                        </a>
                    </figure>
                </div>
                <div class="women">
                    <a href="#"><img src="../images/ll.png" alt=""></a>
                    <h6><a href="${pageContext.request.contextPath}/view/single">Sed ut perspiciatis unde</a></h6>
                    <p ><del>$100.00</del><em class="item_price">$70.00</em></p>
                    <a href="#" data-text="添加到购物车" class="but-hover1 item_add">添加到购物车</a>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
        <div class="col-3">
            <a href="${pageContext.request.contextPath}/view/men"><img src="../images/pi2.jpg" class="img-responsive " alt="">
                <div class="col-pic">
                    <h5> 非凡男装</h5>
                    <p>点击查看详情</p>
                </div></a>
        </div>

    </div>
    <div class="clearfix"></div>
</div>


<!--products-->


<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-top">
            <div class="clearfix"> </div>
        </div>
        <div class="footer-grids">
            <div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".5s">
                <h3>关于我们</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse.<span>Excepteur sint occaecat cupidatat
						non proident, sunt in culpa qui officia deserunt mollit.</span></p>
            </div>
            <div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".6s">
                <h3>联系方式</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" ></i>辽宁省，沈阳市，<span>新秀街2号</span></li>
                    <li class="foot-mid"><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:xiyeming@163.com">xiyeming@163.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" ></i>+86 186-3359-5156</li>
                </ul>
            </div>
            <div class="col-md-4 footer-grid animated wow fadeInLeft" data-wow-delay=".7s">
                <h3>技术支持</h3>
                <ul>
                    <li></i>开发人员：<span>郗野明</span></li>
                    <li class="foot-mid"><i class="glyphicon glyphicon-envelope" ></i><a href="mailto:xiyeming@163.com">xiyeming@163.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" ></i>+86 186-3359-5156</li>
                </ul>

            </div>

            <div class="clearfix"> </div>
        </div>

        <div class="copy-right animated wow fadeInUp" data-wow-delay=".5s">
            <p>版权所有 &copy; 2017.本公司保留所有权利。</p>
        </div>
    </div>
</div>
<!-- //footer -->
<script type="text/javascript">
$(function () {
        var users = ${user}"";
        if(users != null && users != ""){
            $('#login').remove();
            $('#login2').remove();
            $('#loga').remove();
            $('#loga2').remove();
            $("<i></i>").attr("class","glyphicon glyphicon-user").appendTo($('#logli'));
            $("<i></i>").attr("class","glyphicon glyphicon-log-out").appendTo($('#logli2'));
            $("<a></a>").text("欢迎您：" + users.nick).appendTo($('#logli'));
            $("<a></a>").attr("class","logina").attr("href","").text("退出").appendTo($('#logli2')).click(function(){
                $.ajax({
                    url:'${pageContext.request.contextPath}/user/user/logout',
                    dataType:'json',
                    success:function (data) {
                        if(data.error_code == 1000){
                            document.location ="${pageContext.request.contextPath}/view/index";
                        }else if(data.error_code == 1001){
                            alert(data.result);
                        }else{
                            alert(data.result);
                        }
                    },
                    error:function(a,b,c){
                        alert(c);
                    }
                })
            });

        }
})
</script>
</body>
</html>
