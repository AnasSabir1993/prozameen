﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="finance.aspx.cs" Inherits="finance" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Real Estate | Finance</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script src="js/jquery-1.6.js" ></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Didact_Gothic_400.font.js"></script>
<script src="js/atooltip.jquery.js"></script>
<script src="js/jquery.jqtransform.js" ></script>
<script src="js/script.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<style type="text/css">.bg{behavior:url("js/PIE.htc");}</style>
<![endif]-->
      <style>

        input.text {
            width: 78px;
            /*background-color: yellow;*/
        }
    </style>

</head>
<body id="page5">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <h1><a href="index.html" id="logo"></a></h1>
      <div class="wrapper">
        <ul id="icons">
          <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""></a></li>
        </ul>
      </div>
      <nav>
        <ul id="menu">
          <li ><a href="Home.aspx">Main Page</a></li>
          <li><a href="buying.aspx">Buying Estate</a></li>
          <li><a href="selling.aspx">Selling Estate</a></li>
          <li><a href="renting.aspx">Renting Estate</a></li>
          <li id="menu_active"><a href="finance.aspx">Finance</a></li>
          <li class="end"><a href="ContactUs.aspx">Contact Us</a></li>
        </ul>
      </nav>
    </header>
    <!-- / header -->
  </div>
</div>
<!-- content -->
<div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">
            <h2 class="pad_bot1 pad_top1">About Financing</h2>
            <div class="wrapper">
              <figure class="left marg_right1"><img src="images/page5_img1.jpg" alt=""></figure>
              <p class="pad_bot1 color2">Nam in dolor eget dolor ultricies dapibus non nec nisl. Nunc interdum convallis est in dictum.</p>
              <p>Mauris elementum dapibus tortor, et posuere libero vulputate quis. Nam imperdiet, mi in mollis adipiscing, leo massa tincidunt augue, id semper nunc nulla in neque. Ut egestas neque ut risus venenatis eget aliquet sem molestie. Integer dui leo, dignissim ut interdum cum sociis natoque penatibus et magnis dis parturient montes.</p>
            </div>
            <p>Curabitur dignissim nunc sit amet odio pharetra hendrerit. Nulla justo ante, posuere sed hendrerit et, lacinia ultricies ligula. Integer ac lacus vel massa venenatis suscipit in vel nulla. Donec quis placerat erat. Nam id lectus at lacus ullamcorper viverra. Mauris lacinia rutrum purus quis pretium. Pellentesque in tortor quam. Quisque et risus dolor, in consequat nunc. Vivamus sagittis consectetur nisi eget luctus.</p>
            <a href="#" class="button">Read more</a> </div>
        </article>
        <article class="col2">
        <form id="form_1" action="#" method="post" runat="server">
            <div class="pad1">
              <h3 style="color:white">Find Your Property</h3>

                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel runat="server" UpdateMode="Conditional" RenderMode="Inline">
                      <ContentTemplate>

                           <div class="row_select"> City: <br />
                  <asp:DropDownList ID="ddlCity" runat="server" Width="102%" CssClass="jqTransformInputWrapper;jqTransformSelectOpen;jqTransformHidden" AutoPostBack="true">
                      <asp:ListItem Selected="true">--Select--</asp:ListItem>
                      <asp:ListItem>Karachi</asp:ListItem>
                      <asp:ListItem>Lahore</asp:ListItem>
                      <asp:ListItem>Islamabad</asp:ListItem>
                      <asp:ListItem>Peshawar</asp:ListItem>
                      <asp:ListItem>Multan</asp:ListItem>
                      <asp:ListItem>Hyderabad</asp:ListItem>
                      <asp:ListItem>Gawadar</asp:ListItem>
                      <asp:ListItem>Sukker</asp:ListItem>
                      <asp:ListItem>Ghotki</asp:ListItem>

                  </asp:DropDownList>

                          <div class="row_select"> Search Area: <br />
              
                              <asp:TextBox ID="txtArea" runat="server" CssClass="input"></asp:TextBox>
              
                         </div>
                </div>
                           </ContentTemplate>
                      <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlCity" />
                </Triggers>
                  </asp:UpdatePanel>
              <div class="row_select"> Category: <br />

                  <asp:DropDownList ID="ddlCat" runat="server" Width="102%" CssClass="jqTransformInputWrapper;jqTransformSelectOpen;jqTransformHidden">
                      <asp:ListItem>--Any Type--</asp:ListItem>
                      <asp:ListItem>--Homes--</asp:ListItem>
                      <asp:ListItem>Houses</asp:ListItem>
                      <asp:ListItem>Flats</asp:ListItem>
                      <asp:ListItem>Upper Portions</asp:ListItem>
                      <asp:ListItem>Lower Portions</asp:ListItem>
                      <asp:ListItem>Rooms</asp:ListItem>
                      <asp:ListItem>Penthouse</asp:ListItem>
                      <asp:ListItem>--Plots--</asp:ListItem>
                      <asp:ListItem>Commercial</asp:ListItem>
                      <asp:ListItem>Residential</asp:ListItem>
                      <asp:ListItem>--Commercial--</asp:ListItem>
                      <asp:ListItem>Offices</asp:ListItem>
                      <asp:ListItem>Building</asp:ListItem>
                  </asp:DropDownList>
              </div>

              <div class="row_select">
                <div class="cols"> Price Range: <br />
                   <asp:TextBox ID="txtPricefrom" runat="server" CssClass="text" ></asp:TextBox>
                </div>
                <div class="cols pad_left1"> to: <br />
                   <asp:TextBox ID="txtBedroomCount" runat="server" CssClass="text" ></asp:TextBox>
                </div>
              </div>
              <div class="row_select">
                <div class="cols"> Bedroom(s): <br />
                  <asp:TextBox ID="txtBathroomCount" runat="server" CssClass="text"></asp:TextBox>
                </div>
                <div class="cols pad_left1"> Bathroom(s): <br />
                   <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox>
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
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">
            <h2 class="pad_bot1">Financing Center</h2>
            <div class="wrapper">
              <figure class="left marg_right1"><img src="images/page5_img2.jpg" alt=""></figure>
              <p>Integer dui leo, dignissim ut interdum ac, ultricies a risus. Cum sociis<br>
                natoque penatibus et magnis dis parturient montes, nascetur ridiculus<br>
                mus. Curabitur dignissim nunc sit amet odio pharetra hendrerit. Nulla <br>
                justo ante, posuere sed hendrerit et, lacinia ultricies ligula. Integer ac <br>
                lacus vel massa venenatis suscipit in vel nulla. Donec quis placerat erat. Nam id lectus at lacus ullamcorper viverra. Mauris lacinia rutrum purus <br>
                quis pretium.</p>
            </div>
            <p>Pellentesque in tortor quam. Quisque et risus dolor, in consequat nunc. Vivamus sagittis consectetur nisi eget luctus. Maecenas pellentesque placerat dui in iaculis. Aenean sit amet felis risus. Morbi vel nisl eget purus dignissim sodales sit amet ut quam. Sed rutrum molestie cursus. Nam mattis pellentesque leo quis tempus. Aenean risus tortor, porttitor a feugiat id, facilisis auctor felis. Morbi fringilla, dui sed pulvinar pharetra, nisi quam luctus nisi, non rutrum lorem arcu sit amet neque.</p>
            <a href="#" class="button">Read more</a> </div>
        </article>
        <article class="col2">
          <div class="pad1">
            <h3>Did You Know?</h3>
            <p><strong>Vestibulum imperdiet ante sit amet tortor pellentesque volutpat. </strong></p>
            <p>Sed dapibus mi sit amet justo faucibus nec porttitor magna feugiat. Sed vulputate consequat bibendum. Curabitur mollis posuere lectus, quis mattis libero dictum vitae. Curabitur sollicitudin, purus in fringilla lobortis, lacus nulla faucibus ipsum, porta.<br>
              congue lorem nibh ac lectus. Nunc interdum pulvinar semid metus lacus, in eleifend metus.</p>
            <a href="#" class="button">Read more</a> </div>
        </article>
      </div>
    </section>
  </div>
</div>
<!-- / content -->
<div class="body4">
  <div class="main">
    <!-- footer -->
    <footer> <span class="call">Call Center: <span>1-800-567-8934</span></span> Copyright &copy;  2017 <a href="http://www.businessexpertspk.com">Business Experts Pakistan</a> All Rights Reserved<br>
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
</body>
</html>
