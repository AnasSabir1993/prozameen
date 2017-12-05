<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AgentHome.aspx.cs" Inherits="AgentHome" %>

<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   <div class="body2">
  <div class="main">
    <section id="content">
      <div class="wrapper">
        <article class="col1">
          <div class="pad2">
         
        
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
     
 </div>

        </article>

      </div>

    </section>

  </div>
        </div>
         <!-- Footer Start -->

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

    
       
</asp:Content>