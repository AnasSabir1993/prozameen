<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Real Estate | Contacts</title>
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
</head>
<body id="page6">
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
<!-- content -->
<div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">
            <h2 class="pad_bot1 pad_top1">Contact Form</h2>
            <form id="ContactForm" action="#" runat="server">
             
              
                 <asp:Label ID="pass" runat="server" Text="Business007" Visible="False"></asp:Label>
                <asp:Label ID="fromaddress" runat="server" Text="expertspropertys@gmail.com" Visible="False" BackColor="Black" ForeColor="Black"></asp:Label>
                <asp:Label ID="toaddress" runat="server" Text="anas.sabir1993@gmail.com" Visible="False" BackColor="Black" ForeColor="Black" ></asp:Label>

                 
                 <table>
                      <tr>
                          <td>
                              <span style="color:black">Your Name:</span>
                          </td> 
                          <td>
                              <asp:TextBox ID="name" class="input" runat="server" placeholder="Enter name" title="Please enter your name (at least 2 characters)" required ></asp:TextBox>
                          </td>
                      </tr>
                     <tr>
                          <td><br /></td>
                     </tr>
                      <tr>
                          <td><span style="color:black">Your E-mail:</span></td>
                          <td><asp:TextBox ID="email" name="email" class="input" runat="server" placeholder="Enter email" title="Please enter a valid email address" required></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                          <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="500px"></asp:RegularExpressionValidator></td>
                      </tr>
                     <tr>
                         <td><br /></td>
                     </tr>
                       <tr>
                          <td>
                             <span style="color:black">Your Subject:</span>
                          </td>
                          <td>
                              <asp:TextBox ID="subject" class="input" runat="server" placeholder="Enter name" required ></asp:TextBox>
                          </td>
                           <td><br /></td>
                      </tr>
                     <tr>
                         <td><br /></td>
                     </tr>
                      <tr>
                          <td> <span style="color:black">Your Message:</span></td>
                          <td><asp:TextBox ID="comments"   name="comments" runat="server" placeholder="Enter your message…" title="Please enter your message (at least 10 characters)" required TextMode="MultiLine"></asp:TextBox></td>
                          <td></td>
                      </tr>
                     <tr>
                         <td><br /></td>
                     </tr>
                      <tr>
                          <td></td>
                          <td>
                              <asp:Button ID="btnClear" runat="server" CssClass="button" Text="Clear" OnClick="btnClear_Click" /> &nbsp&nbsp&nbsp&nbsp
                              <asp:Button ID="btnSend" runat="server" CssClass="button" Text="Send" OnClick="btnSend_Click" />
                          </td>
                      </tr>
                  </table>
            </form>
          </div>
        </article>
       
      </div><br /><br />

        <h2><b>Find Us on Map:</b></h2>
             <div style="width: 100%" class="google-maps">
                                <iframe width="100%" height="600" src="https://www.mapsdirections.info/en/custom-google-maps/map.php?width=100%&height=600&hl=ru&coord=24.836245,67.03352089999998&q=Glass%20Tower%20Karachi+(Pro%20Zameen%20Pakistan%20%2C%20Suite%20%23%2055%2C%201st%20Floor)&ie=UTF8&t=&z=18&iwloc=A&output=embed" frameborder="1" scrolling="NO" marginheight="0" marginwidth="0" title="Suite # 55, 1st Floor Glass Tower, near Teen Talwar Clifton" align="middle"></iframe>
                        </div>
                     
      <div class="wrapper">
        <%--<article class="col1">
          <div class="pad2">
            <h2 class="pad_bot1">Useful Links</h2>
            <p class="pad_bot1"><strong>Integer dui leo, dignissim ut interdum ac, ultricies a risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur dignissim nunc sit amet odio pharetra hendrerit. </strong></p>
            <p class="pad_bot2">Nulla justo ante, posuere sed hendrerit et, lacinia ultricies ligula. Integer ac lacus vel massa venenatis suscipit in vel nulla. Donec quis placerat erat. Nam id lectus at lacus ullamcorper viverra. Mauris lacinia rutrum purus quis pretium. Pellentesque in tortor quam. Quisque et risus dolor, in consequat nunc. Vivamus sagittis consectetur nisi eget luctus. Maecenas pellentesque placerat dui in iaculis.</p>
          </div>
          <div class="pad_left1">
            <div class="wrapper pad_bot3">
              <article class="cols">
                <ul class="list2">
                  <li><a href="#">Maecenas mattis venenatis</a></li>
                  <li><a href="#">Nam accumsan miac</a></li>
                  <li><a href="#">Rhoncus luctus erat nisl</a></li>
                  <li><a href="#">Ultrices neque, vel placerat</a></li>
                  <li><a href="#">Morbi ut augue ut risus</a></li>
                </ul>
              </article>
              <article class="cols pad_left1">
                <ul class="list2">
                  <li><a href="#">Quisque eget erat eget</a></li>
                  <li><a href="#">Laoreet pharetra eget sed</a></li>
                  <li><a href="#">Vestibulum scelerisque</a></li>
                  <li><a href="#">Integerros massa viverra quis</a></li>
                  <li><a href="#">Pharetra ultrices mauris </a></li>
                </ul>
              </article>
              <article class="cols pad_left1">
                <ul class="list2">
                  <li><a href="#">Phasellus purus sapien</a></li>
                  <li><a href="#">Adipiscing et tempus eget</a></li>
                  <li><a href="#">Faucibus vel leo pellentesque</a></li>
                  <li><a href="#">Ullamcorper ac dignissim</a></li>
                  <li><a href="#">Malesuada eget augue</a></li>
                </ul>
              </article>
            </div>
          </div>
          <div class="pad2"> <a href="#" class="button">Read more</a> </div>
        </article>--%>
        <%--<article class="col2">
          <div class="pad1">
            <h3>Our Contacts</h3>
            <div class="address"> 8901 Marmora Road, <br />
              Glasgow, D04 89GR. <br />
              <span> Freephone: <br />
              Telephone: <br />
              E-mail: </span> +1 800 559 6580 <br />
              +1 959 603 6035 <br />
              <a href="#">mail@demolink.org</a> </div>
            <h3 class="pad_top1">Miscellaneous Info</h3>
            <p>Lorem ipsum dolor sit amet, consecte- tur adipiscing elit. Fusce condimentum ante velit, vel pharetra ipsum. Nulla mi velit, accumsan dictum mattis sed, dictum id nunc. Nullam varius cursus</p>
            <a href="#" class="button">Read more</a> </div>
        </article>--%>
      </div>
    </section>
  </div>
</div>
<!-- / content -->
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
    <!-- footer -->
  </div>
</div>
<script>Cufon.now();</script>
</body>
</html>
