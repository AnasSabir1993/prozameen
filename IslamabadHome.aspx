<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IslamabadHome.aspx.cs" Inherits="Islamabad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pro Zameen</title>
<meta charset="utf-8"/>

    <%--css Folder--%>
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>

   <%-- js Folder--%>
<script src="js/jquery-1.6.js" ></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Didact_Gothic_400.font.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script>
<script src="js/atooltip.jquery.js"></script>
<script src="js/jquery.jqtransform.js" ></script>
<script src="js/script.js"></script>
<script src="js/jquery.easing.1.3.js"></script>

    <%--javascriptauto Folder--%>
<%--    <script src="javascriptauto/Gruntfile.js"></script>
    
   
  
    <script src="javascriptauto/jquery-ui.custom.js"></script>
    <script src="javascriptauto/jquery-ui.custom.min.js"></
    <script src="javascriptauto/jquery.ui.menu.js"></script>
    <script src="javascriptauto/jquery.ui.menu.min.js"></script>
    <script src="javascriptauto/jquery.ui.position.js"></script>
    <script src="javascriptauto/jquery.ui.position.min.js"></script>
    <script src="javascriptauto/jquery.ui.widget.js"></script>
    <script src="javascriptauto/jquery.ui.widget.min.js"></script>--%>
    <script src="javascriptauto/jquery.ui.core.js"></script>
    <script src="javascriptauto/jquery.ui.core.min.js"></script>
    <script src="javascriptauto/jquery.ui.autocomplete.js"></script>
    <script src="javascriptauto/jquery.ui.autocomplete.min.js"></script>

     <script src="javascriptauto/jquery-1.10.2.js"></script>
      <script src="javascriptauto/jquery-ui-1.10.4.custom.js"></script>
      <script src="javascriptauto/jquery-ui-1.10.4.custom.min.js"></script>
     <link href="javascriptauto/jquery-ui-1.10.4.custom.css" rel="stylesheet" />

    <link href="javascriptauto/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
    <%--Script for Fetching Areas--%>
  <script type="text/javascript" language="javascript">

      $(function () {
          $('#<%= txtArea.ClientID %>').autocomplete({
              source: function (request, response) {
                  $.ajax({
                      
                      url: "AutoService.asmx/GetAreaNames",
                      data: "{'Area_Name': '" + request.term + "'}",
                      type: "POST",
                      dataType: "json",
                      contentType: "application/json;charset=utf-8",
                      success: function (result) {
                          response(result.d);
                      },
                      error: function (result) {
                          alert('There is a problem processing your  request');
                      }
                  });
              }

          });

      });

   </script>


<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<style type="text/css">.bg{behavior:url("js/PIE.htc");}</style>
<![endif]-->

      <style>

        input.text {
            width: 78px;
            background:#fff;
	        font:12px Arial, Helvetica, sans-serif;
	        color:#191919;
	        float:left;
	        padding:3px 10px;
	        height:14px;
           
        }
        .input1 {
	background:#fff;
	font:12px Arial, Helvetica, sans-serif;
	color:#191919;
	float:left;
	padding:3px 10px;
	height:14px;
	width:195px !important
}
        row1 {
	            min-height:46px;
	            width:100%;
	            overflow:hidden
            }
            #form_1 .row_select1 {
	            min-height:46px;
	            width:100%
            }

          .list {  color:black;padding: 0; margin: 0;}
    </style>
</head>
<body id="page1">
    <div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <h1><a href="home.aspx" id="logo"></a></h1>
      <div class="wrapper">
        <ul id="icons">
          <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""/></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""/></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""/></a></li>
        </ul>
      </div>
      <nav>
        <ul id="menu">
          <li id="menu_active"><a href="Home.aspx">Main Page</a></li>
          <li><a href="buying.aspx">Buying Estate</a></li>
          <li><a href="selling.aspx">Selling Estate</a></li>
          <li><a href="renting.aspx">Renting Estate</a></li>
          <li><a href="finance.aspx">Finance</a></li>
          <li class="end"><a href="ContactUs.aspx">Contact Us</a></li>
        </ul>
      </nav>
    </header>
    <!-- / header -->
  </div>
</div>

    <!-- Content Start -->
    <div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div  id="slider" style="background-image: url('http://localhost:57519/images/islamabad.png')"></div>
        </article>
        <article class="col2">
          <form id="form_1" action="#" method="post" runat="server">
            <div class="pad1">
              <h3 style="color:white">Find Your Property</h3>

                

                          <div class="row_select"> Search Area: <br />
              
                              <asp:TextBox ID="txtArea" runat="server" CssClass="input1" Width="215px"></asp:TextBox>
              
                         </div>
            
        
              <div class="row_select1"> Type of Home: <br />
                <select style="width:215px;height:20px">
                   <option>--Any Type--</option>
                        <option>--Homes--</option>
                        <option>Houses</option>
                        <option>Flats</option>
                        <option>Upper Portions </option>
                        <option>Lower Portions</option>
                        <option>Rooms</option>
                        <option>Penthouse</option>
                        <option>--Plots-- </option>
                        <option>Commercial </option>
                        <option>Residential</option>
                        <option>--Commercial--</option>
                        <option>Offices</option>
                        <option>Building</option>
                         
                </select>
              </div>

              <div class="row_select">
                <div class="cols"> Price Range: <br />
                    <asp:TextBox ID="txtPricefrom" runat="server" CssClass="text" ></asp:TextBox>
                </div>
                <div class="cols pad_left1"> to: <br />
                  <asp:TextBox ID="txtPriceto" runat="server" CssClass="text" ></asp:TextBox>
                </div>
              </div>
              <div class="row_select">
                <div class="cols"> Bedroom(s): <br />
                   <asp:TextBox ID="txtBedroomCount" runat="server" CssClass="text" ></asp:TextBox>
                </div>
                <div class="cols pad_left1"> Bathroom(s): <br />
                   <asp:TextBox ID="txtBathroomCount" runat="server" CssClass="text"></asp:TextBox>
                </div>
              </div>
              <div class="row_select pad_bot1">
                <%--<div class="cols"> Radius: <br />
                  <select>
                    <option>&nbsp;</option>
                    <option>...</option>
                    <option>...</option>
                  </select>
                </div>--%>
                <div class="cols pad_left1" style="float:left"> <a href="#" class="button">Proposals</a> </div>
              </div>
              <%--Know exactly what you want?  <br />
              Try our <a href="#">Advanced Search</a> --%>
            </div>
          </form>
        </article>
      </div>
      
    </section>
  </div>
</div>

    
    <!-- Content End -->

    <!-- Footer Start -->
<div class="body4">
  <div class="main">
    <!-- footer -->
    <footer> <span class="call">Call Center: <span>1-800-567-8934</span></span> Copyright &copy;  2017 <a href="http://www.businessexpertspk.com">Business Experts Pakistan</a> All Rights Reserved <br />
      Design by <a target="_blank" href="http://www.software.businessexpertspk.com">Experts Software Development</a>

         <br />
        <br />
        <a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""/></a> &nbsp&nbsp
        <a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""/></a> &nbsp&nbsp
        <a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""/></a>

      <!-- {%FOOTER_LINK} -->
    </footer>
    <!-- / footer -->
  </div>
</div>
<script>Cufon.now();</script>
<script>
    $(window).load(function () {
        $('#slider').nivoSlider({
            effect: 'sliceUpDown', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft'
            slices: 17,
            animSpeed: 500,
            pauseTime: 6000,
            startSlide: 0, //Set starting Slide (0 index)
            directionNav: false, //Next & Prev
            directionNavHide: false, //Only show on hover
            controlNav: true, //1,2,3...
            controlNavThumbs: false, //Use thumbnails for Control Nav
            controlNavThumbsFromRel: false, //Use image rel for thumbs
            controlNavThumbsSearch: '.jpg', //Replace this with...
            controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
            keyboardNav: true, //Use left & right arrows
            pauseOnHover: true, //Stop animation while hovering
            manualAdvance: false, //Force manual transitions
            captionOpacity: 1, //Universal caption opacity
            beforeChange: function () {
                $('.nivo-caption').animate({
                    bottom: '-110'
                }, 400, 'easeInBack')
            },
            afterChange: function () {
                Cufon.refresh();
                $('.nivo-caption').animate({
                    bottom: '-20'
                }, 400, 'easeOutBack')
            },
            slideshowEnd: function () { } //Triggers after all slides have been shown
        });
        Cufon.refresh();
    });
</script>
</body>
</html>
