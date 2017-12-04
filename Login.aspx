<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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

    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        input
        {
            width: 200px;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
</head>
<body id="page1">
      <div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <h1><a href="index.html" id="logo"></a></h1>
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

    <form id="form1" runat="server">
        <center>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <th colspan="3">
                Login
            </th>
        </tr>
        <tr>
            <td>
                Username
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                    runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Password
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            </td>
            <td>
                <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                    runat="server" />
            </td>
        </tr>
      
        <tr>
            <td>
            </td>
            <td>
                <asp:Button Text="Login" runat="server" OnClick="btnlogin" ID="btnLogin" />
            </td>
            <td>
            </td>
        </tr>

          <tr>
            <td>
            </td>
            <td>
                <asp:HyperLink ID="hlRegistration" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx">Not a Member? Click here to Register</asp:HyperLink>
            </td>
            <td>
            </td>
        </tr>

    </table>
            </center>
    </form>

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
