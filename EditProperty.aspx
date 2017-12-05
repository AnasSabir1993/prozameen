<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProperty.aspx.cs" Inherits="EditProperty" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css"> 
   .mygrid input[type="text"]{width:90px;}

    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <form id="form1" runat="server">
   
   <div class="body2">
  <div class="main">
    <section id="content">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pro %>" DeleteCommand="DELETE FROM [Property] WHERE [Property_Title] = @Property_Title" InsertCommand="INSERT INTO [Property] ([USerId], [Property_Title], [Property_Type], [Property_City], [Property_Location], [Property_Address], [Property_Description], [Property_Price], [Property_Size], [Property_Unit], [ContactNo]) VALUES (@USerId, @Property_Title, @Property_Type, @Property_City, @Property_Location, @Property_Address, @Property_Description, @Property_Price, @Property_Size, @Property_Unit, @ContactNo)" SelectCommand="SELECT [Property_Title], [Property_Type], [Property_City], [Property_Location], [Property_Address], [Property_Description], [Property_Price], [Property_Size], [Property_Unit], [ContactNo] FROM [Property] WHERE ([USerId] = @USerId)" UpdateCommand="UPDATE Property SET Property_Type = @Property_Type, Property_City = @Property_City, Property_Location = @Property_Location, Property_Address = @Property_Address, Property_Description = @Property_Description, Property_Price = @Property_Price, Property_Size = @Property_Size, Property_Unit = @Property_Unit, ContactNo = @ContactNo WHERE (Property_Title = @Property_Title)">
                  <DeleteParameters>
                      <asp:Parameter Name="Property_Title" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="USerId" Type="Int32" />
                      <asp:Parameter Name="Property_Title" Type="String" />
                      <asp:Parameter Name="Property_Type" Type="String" />
                      <asp:Parameter Name="Property_City" Type="String" />
                      <asp:Parameter Name="Property_Location" Type="String" />
                      <asp:Parameter Name="Property_Address" Type="String" />
                      <asp:Parameter Name="Property_Description" Type="String" />
                      <asp:Parameter Name="Property_Price" Type="String" />
                      <asp:Parameter Name="Property_Size" Type="String" />
                      <asp:Parameter Name="Property_Unit" Type="String" />
                      <asp:Parameter Name="ContactNo" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:ControlParameter ControlID="Label1" Name="USerId" PropertyName="Text" Type="Int32" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Property_Type" Type="String" />
                      <asp:Parameter Name="Property_City" Type="String" />
                      <asp:Parameter Name="Property_Location" Type="String" />
                      <asp:Parameter Name="Property_Address" Type="String" />
                      <asp:Parameter Name="Property_Description" Type="String" />
                      <asp:Parameter Name="Property_Price" Type="String" />
                      <asp:Parameter Name="Property_Size" Type="String" />
                      <asp:Parameter Name="Property_Unit" Type="String" />
                      <asp:Parameter Name="ContactNo" Type="String" />
                      <asp:Parameter Name="Property_Title" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
            
              <asp:GridView ID="GridView1" runat="server" CellSpacing="5" CssClass="mygrid" AutoGenerateColumns="False" DataKeyNames="Property_Title" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="Black" Width="138px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" HorizontalAlign="Center">
                  <Columns>
                      <asp:CommandField ShowEditButton="True" />
                      <asp:BoundField DataField="Property_Title" HeaderText="Property_Title" SortExpression="Property_Title" ReadOnly="True" />
                      <asp:BoundField DataField="Property_Type" HeaderText="Property_Type" SortExpression="Property_Type" />
                      <asp:BoundField DataField="Property_City" HeaderText="Property_City" SortExpression="Property_City" />
                      <asp:BoundField DataField="Property_Location" HeaderText="Property_Location" SortExpression="Property_Location" />
                      <asp:BoundField DataField="Property_Address" HeaderText="Property_Address" SortExpression="Property_Address" />
                      <asp:BoundField DataField="Property_Description" HeaderText="Property_Description" SortExpression="Property_Description" />
                      <asp:BoundField DataField="Property_Price" HeaderText="Property_Price" SortExpression="Property_Price" />
                      <asp:BoundField DataField="Property_Size" HeaderText="Property_Size" SortExpression="Property_Size" />
                      <asp:BoundField DataField="Property_Unit" HeaderText="Property_Unit" SortExpression="Property_Unit" />
                      <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                  </Columns>
                  <FooterStyle BackColor="#CCCCCC" />
                  <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                  <RowStyle BackColor="White" HorizontalAlign="Center"/>
                  <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#808080" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#383838" />
              </asp:GridView>
          
      <div class="wrapper">
        <article class="col1">
          <div>
         
 
              
              <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
          
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

    
       
    </form>

    
       
</asp:Content>