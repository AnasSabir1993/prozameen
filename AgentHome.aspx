<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentHome.aspx.cs" Inherits="AgentHome" %>

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
    <style>
        .h3 {
	font-size:30px;
	color:black;
	line-height:1.2em;
	padding:42px 0 19px 0;
    width:100%;
    height:50px;
   
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
            <li> <div class="cols pad_left1" style="float:right;width:99px"> <a href="#" class="button">+Add Property</a> </div></li>
            <li style="font-size:15px"><a href="Login.aspx">Logout</a></li>
             <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
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
   <div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">
         
       <form runat="server">
        
           <img src="images/AddProperty.png" />

           <br /><br />

           <style>
               
                .table {
                    border-collapse: collapse;
                }

                .td {
                    padding-top:8px;
                    padding-bottom:8px;
                    
                }
                .label{
                    display:block; 
                    text-align:right;
                }

               
           </style>
           <asp:Table ID="Table" runat="server" HorizontalAlign="Center" CssClass="table" >
               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProtitle" runat="server" ForeColor="Black" Text="Property Title: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtTitle" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProtype" runat="server" ForeColor="Black" Text="Property Type: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtType" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProCity" runat="server" ForeColor="Black" Text="Property City: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtCity" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProLoc" runat="server" ForeColor="Black" Text="Property Location: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtLocation" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProAddress" runat="server" ForeColor="Black" Text="Property Address: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtAddress" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProDesc" runat="server" ForeColor="Black" Text="Property Description: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtDescription" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>


               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProPrice" runat="server" ForeColor="Black" Text="Property Price: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtPrice" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProSize" runat="server" ForeColor="Black" Text="Property Size: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtSize" runat="server" class="input"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</asp:TableCell> 
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblProUnit" runat="server" ForeColor="Black" Text="Property Unit: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtUnit" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>


                 <asp:TableRow>
                   <asp:TableCell CssClass="td label"><asp:Label ID="lblContactNo" runat="server" ForeColor="Black" Text="Agent Contact Number: "></asp:Label>&nbsp&nbsp&nbsp</asp:TableCell>
                   <asp:TableCell CssClass="td"><asp:TextBox ID="txtContactNo" runat="server" class="input"></asp:TextBox></asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell></asp:TableCell>
                   <asp:TableCell>
                       <asp:Button ID="btnSubmit" runat="server" CssClass="button" OnClick="btnSubmit_Click" Text="Submit" />
                   </asp:TableCell>
               </asp:TableRow>

           </asp:Table>
     
</form>
        </div>

        </article>

      </div>

    </section>

  </div>
        </div>
         <!-- Footer Start -->
<div class="body4">
  <div class="main">
    <!-- footer -->
     
    <footer> <span class="call">Call Center: <span>1-800-567-8934</span></span> Copyright &copy;  2017  <a href="http://www.businessexpertspk.com">Business Experts Pakistan</a> All Rights Reserved <br />
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
