<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Home.aspx.cs" Inherits="Home" %>

 

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<%--<script src="javascriptauto/Gruntfile.js"></script>
    <script src="javascriptauto/jquery-1.10.2.js"></script>
    <link href="javascriptauto/jquery-ui-1.10.4.custom.css" rel="stylesheet" />
    <script src="javascriptauto/jquery-ui-1.10.4.custom.js"></script>
    <link href="javascriptauto/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
    <script src="javascriptauto/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="javascriptauto/jquery-ui.custom.js"></script>
    <script src="javascriptauto/jquery-ui.custom.min.js"></script>
    <script src="javascriptauto/jquery.ui.menu.js"></script>
    <script src="javascriptauto/jquery.ui.menu.min.js"></script>
    <script src="javascriptauto/jquery.ui.position.js"></script>
    <script src="javascriptauto/jquery.ui.position.min.js"></script>
    <script src="javascriptauto/jquery.ui.widget.js"></script>
    <script src="javascriptauto/jquery.ui.widget.min.js"></script>
     <script src="javascriptauto/jquery.ui.core.js"></script>
    <script src="javascriptauto/jquery.ui.core.min.js"></script>
   <script src="javascriptauto/jquery.ui.autocomplete.js"></script>
    <script src="javascriptauto/jquery.ui.autocomplete.min.js"></script>
 
      <script src="javascriptauto/jquery-1.10.2.js"></script>
      <script src="javascriptauto/jquery-ui-1.10.4.custom.js"></script>
      <script src="javascriptauto/jquery-ui-1.10.4.custom.min.js"></script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="js/jquery-1.6.js" ></script>
   <script>
       $(document).ready(function () {
           debugger;
           $('#ContentPlaceHolder1_ddlCity').change(function () {
               debugger;

               $.ajax({
                   type: "POST",
                   url: "Home.aspx/FillAreas",
                   data: '{ID: "' + $(this).val() + '" }',
                   contentType: "application/json; charset=utf-8",
                   dataType: "json",
                   success: OnSuccess,
                   failure: function (response) {
                       alert(response.d);
                   }
               });

               function OnSuccess(response) {
                   debugger;
                   FillAreaDDL(response.d)
                   // alert(response.d);
                   //$.each(response.d, function () {
                   //    debugger;
                   //    $("#ddlAreas").append($("<option></option>").val(this['ID']).html(this['Values']));
                   //});
                   //var abc = '';
                   //for (var i = 0; i < response.d.length; i++) {
                   //    debugger;
                   //   abc = "<option value='" + response.d[i].ID + "'>'"+response.d[i].Values+"'</option>";
                   //}

                   $("#ddlAreas").append($("<option value='" + response.d[i].ID + "'>'"+response.d[i].Values+"'</option>"));
               }
           });
       });
       <%-- $(function () {
            $('#<%= txtArea.ClientID %>').autocomplete({
              source: function (request, response) {
                  $.ajax({
                      url: "AutoService.asmx/HelloWorld",
                      data: "{ID: '" + request.term + "'}",
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

      });--%>

       function FillAreaDDL(ddlData) {

       }
  </script>

    <!-- Content Start -->
   <div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div id="slider">
              <img src="images/img1.jpg" alt="" title="<strong>Villa Neverland, 2006</strong><span>9 rooms, 3 baths, 6 beds, building size: 5000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 600 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"/> 
              <img src="images/img2.jpg" alt="" title="<strong>Villa Lipsum, 2008</strong><span>8 rooms, 4 baths, 4 beds, building size: 4500 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 500 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"/> 
              <img src="images/img3.jpg" alt="" title="<strong>Villa Dolor Sid, 2007</strong><span>11 rooms, 3 baths, 5 beds, building size: 6000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 650 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"/> 
              <img src="images/img4.jpg" alt="" title="<strong>Villa Nemo Enim, 2010</strong><span>5 rooms, 2 baths, 4 beds, building size: 3000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 400 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"/>
              <img src="images/img5.jpg" alt="" title="<strong>Villa Nam Libero, 2003</strong><span>7 rooms, 4 baths, 6 beds, building size: 7000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 700 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>"/>
          </div>
        </article>
        <article class="col2">
          <form id="form_1" action="#" method="post" runat="server">
            <div class="pad1">
              <h3 style="color:white">Find Your Property</h3>

                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel runat="server" UpdateMode="Conditional" RenderMode="Inline">
                      <ContentTemplate>

                           <div class="row_select"> City: <br />
                  <asp:DropDownList ID="ddlCity" runat="server" Width="102%" CssClass="jqTransformInputWrapper;jqTransformSelectOpen;jqTransformHidden" AutoPostBack="true" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">

                  </asp:DropDownList>

                          <div class="row_select"> Search Area: <br />
              
                            <%--  <asp:TextBox ID="txtArea" runat="server" CssClass="input"></asp:TextBox>--%>

              <select id = "ddlAreas">
</select>
                         </div>
                </div>
                           </ContentTemplate>
                      <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlCity" EventName="SelectedIndexChanged" />
                </Triggers>
                  </asp:UpdatePanel>
              <div class="row_select"> Category: <br />
                    <asp:DropDownList ID="ddlCat" runat="server" Width="102%" CssClass="jqTransformInputWrapper;jqTransformSelectOpen;jqTransformHidden" AutoPostBack="true" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                         </asp:DropDownList>
<%--                  <asp:DropDownList ID="ddlCat" runat="server" Width="102%" CssClass="jqTransformInputWrapper;jqTransformSelectOpen;jqTransformHidden">
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
                      </asp:DropDownList>--%>
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
          <div class="pad_left1">
            <h2 class="pad_bot1">Buyers. Sellers. Proprietors. Agents.</h2>
            <div class="wrapper">
              <article class="cols">
                <h4 class="img1">Selling</h4>
                <p class="pad_bot1"><strong class="color1">Welcome one of  <br />
                  free website templates</strong></p>
                <p class="pad_bot2"> created by TemplateMonster.com team, optimized for 1024X768 px.</p>
                <a href="#" class="button">Read more</a> </article>
              <article class="cols pad_left1">
                <h4 class="img2">Investing</h4>
                <p class="pad_bot1"><strong class="color1">Free website template for <br />
                  Real Estate business</strong></p>
                <p class="pad_bot2"> goes with PSD source files and without them.</p>
                <a href="#" class="button">Read more</a> </article>
              <article class="cols pad_left1">
                <h4 class="img3">Renting</h4>
                <p class="pad_bot1"><strong class="color1">Template has several pages</strong></p>
                <p class="pad_bot2"> <a href="index.html" class="color2">Main</a>, <a href="buying.html" class="color2">Buying</a>, <a href="selling.html" class="color2">Selling</a>, <a href="renting.html" class="color2">Renting</a>, <a href="finance.html" class="color2">Finance</a>, <a href="contacts.html" class="color2">Contacts</a> (note that contact us form – doesn’t work).</p>
                <a href="#" class="button">Read more</a> </article>
            </div>
          </div>
        </article>
        <article class="col2">
          <div class="pad1">
            <h3>Special Offers</h3>
            <ul class="list1;list" style="list-style-type: disc; color:black">
              <li><a href="#">Home Loan Offer</a></li>
              <li><a href="#">Free Calculators</a></li>
              <li><a href="#">Free Loan Tools</a></li>
              <li><a href="#">Value Your Home</a></li>
              <li><a href="#">Recently Sold Properties</a></li>
              <li><a href="#">Suburb Statistics</a></li>
              <li><a href="#">Compare Property Prices</a></li>
            </ul>
          </div>
        </article>
      </div>
    </section>
  </div>
</div>
<div class="body3">
  <div class="main">
    <section id="content2">
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">
            <h2>Remodeling Rooms</h2>
            <div class="wrapper pad_bot3">
              <figure class="left marg_right1"><img src="images/page1_img4.jpg" alt=""></figure>
              <p class="pad_bot1"><strong class="color2">2006, 3 baths, 6 beds, building size: 5000 sq. ft.<br>
                Price: <span class="color1">$ 600 000</span></strong></p>
              <p class="pad_bot2"> Massa dictum ementum velitumo od consequat ante oremsumas ame consectetueraipiscing eliteli ueedlorAliquam conguen nisauris accusalla vel deinol tincidunt ligula magna semper ipsum.</p>
              <a href="#" class="button">Read more</a> </div>
            <div class="wrapper">
              <figure class="left marg_right1"><img src="images/page1_img5.jpg" alt=""></figure>
              <p class="pad_bot1"><strong class="color2">2006, 3 baths, 6 beds, building size: 5000 sq. ft.<br>
                Price: <span class="color1">$ 600 000</span></strong></p>
              <p class="pad_bot2"> Massa dictum ementum velitumo od consequat ante oremsumas ame consectetueraipiscing eliteli ueedlorAliquam conguen nisauris accusalla vel deinol tincidunt ligula magna semper ipsum.</p>
              <a href="#" class="button">Read more</a> 
            </div>
              <br/><br /><br />
              <div class="wrapper" style="border-width: medium; background-color:lightgray;">
                <div>
                    <h3 style="color:#87a310;background-color:#5C5C5C; text-align:center; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; background-image: url('images/background.png');font-size:xx-large"><b>Where do you Want a Property in Karachi</b></h3>
                </div>

                  <div>
                      <h2 style="color:#87a310; margin-left:25px">Properties For Sale:</h2>
                  </div>
                 
                 <%-- <div>
                      <h3 style="color:#87a310; margin-left:20px">Most Popular Locations for Homes:</h3>
                  </div>--%>
                  <table>
                      <tr>
                           
                             <td style="padding-left:20PX"><b><a style=" color:black" href="KarachiHome.aspx">KARACHI</a></b></td> 
                             <td> &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                             <td><b><a style="color:black" href="IslamabadHome.aspx">ISLAMABAD</a></b></td>
                             <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                             <td style="padding-right:50px"><b><a style=" color:black" href="HydrabadHome.aspx">HYDRABAD</a></b></td>
                            

                         </tr>
                        <tr>
                            <td style="padding-left:20PX; "><b><a style="color:black" href="SukkurHome.aspx">SUKKUR</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td ><b><a style="color:black" href="GhotkiHome.aspx">GHOTKI</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td style="padding-right:50px; "><b><a style="color:black" href="PeshawerHome.aspx">PESHAWAR</a></b></td>
                        </tr>

                       <tr>
                            <td style="padding-left:20PX; "><b><a style="color:black" href="LahoreHome.aspx">LAHORE</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td><b><a style="color:black" href="MultanHome.aspx">MULTAN</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td style="padding-right:50px; "><b><a style="color:black" href="GawadarHome.aspx">GAWADAR</a></b></td>
                        </tr>
                  </table>

                 <%-- <div>
                      <h3 style="color:#87a310; margin-left:20px">Most Popular Locations for Plots:</h3>
                  </div>--%>
                   <%--<table>
                       <tr>
                           
                             <td style="padding-left:20PX"><b><a style=" color:black" href="Karachi/KarachiPlots.aspx">KARACHI</a></b></td> 
                             <td> &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                             <td><b><a style="color:black" href="Islamabad/IslamabadPlots.aspx">ISLAMABAD</a></b></td>
                             <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                             <td style="padding-right:50px"><b><a style=" color:black" href="Hydrabad/HydrabadPlots.aspx">HYDRABAD</a></b></td>
                            

                         </tr>
                        <tr>
                            <td style="padding-left:20PX; "><b><a style="color:black" href="Sukkur/SukkurPlots.aspx">SUKKUR</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td ><b><a style="color:black" href="Ghotki/GhotkiPlots.aspx">GHOTKI</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td style="padding-right:50px; "><b><a style="color:black" href="Peshawar/PeshawarPlots.aspx">PESHAWAR</a></b></td>
                        </tr>

                       <tr>
                            <td style="padding-left:20PX; "><b><a style="color:black" href="Lahore/LahorePlots.aspx">LAHORE</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td><b><a style="color:black" href="Multan/MultanPlots.aspx">MULTAN</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td style="padding-right:50px; "><b><a style="color:black" href="Gawadar/GawadarPlots.aspx">GAWADAR</a></b></td>
                        </tr>
                  </table>--%>

 

                 <%-- <div>
                      <h3 style="color:#87a310; margin-left:20px">Popular Locations for Rent:</h3>
                  </div>--%>
                  <%-- <table>
                       <tr>
                           
                             <td style="padding-left:20PX"><b><a style=" color:black" href="Karachi/KarachiRent.aspx">KARACHI</a></b></td> 
                             <td> &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                             <td><b><a style="color:black" href="Islamabad/IslamabadRent.aspx">ISLAMABAD</a></b></td>
                             <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                             <td style="padding-right:50px"><b><a style=" color:black" href="Hydrabad/HydrabadRent.aspx">HYDRABAD</a></b></td>
                            

                         </tr>
                        <tr>
                            <td style="padding-left:20PX; "><b><a style="color:black" href="Sukkur/SukkurRent.aspx">SUKKUR</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td ><b><a style="color:black" href="Ghotki/GhotkiRent.aspx">GHOTKI</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td style="padding-right:50px; "><b><a style="color:black" href="Peshawar/PeshawarRent.aspx">PESHAWAR</a></b></td>
                        </tr>

                       <tr>
                            <td style="padding-left:20PX; "><b><a style="color:black" href="Lahore/LahoreRent.aspx">LAHORE</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td><b><a style="color:black" href="Multan/MultanRent.aspx">MULTAN</a></b></td>
                            <td> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</td>
                            <td style="padding-right:50px; "><b><a style="color:black" href="Gawadar/GawadarRent.aspx">GAWADAR</a></b></td>
                        </tr>
                  </table>--%>

               </div>
          </div>

        </article>
        <article class="col2">
          <div class="pad1">
            <h3>Recent News</h3>
            <div class="wrapper"> <span class="date"><strong>28</strong><span>may</span></span>
              <p><a href="#" class="color2">Donec consequat risus</a><br>
                Hendrerit conghdim entum diam metus fringilla nisl, in porta sapien purus quis odiosem... <a href="#">more</a></p>
            </div>
            <div class="wrapper"> <span class="date"><strong>25</strong><span>may</span></span>
              <p><a href="#" class="color2">Nullam dignissim</a><br>
                Laoreet neque, quis sollicitudin orci tempus etiam viverra leo euismod pulvinar accumsan... <a href="#">more</a></p>
            </div>
            <div class="wrapper"> <span class="date"><strong>22</strong><span>may</span></span>
              <p><a href="#" class="color2">Quisque nunc lorem</a><br>
                Feugiat nec sodales quis, iaculis sed libero. Cras vel nisl justo, ac posuere est nulla facilisi... <a href="#">more</a></p>
            </div>
          </div>
        </article>
      </div>
    </section>
  </div>
</div>
    <!-- Content End -->
   <%-- <script>Cufon.now();</script>
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
</script>--%>
    <!-- Footer Start -->
</asp:Content>