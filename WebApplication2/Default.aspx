<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

            <p style="text-align:center">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/slider.xml" Height="700px" Width="1170px" />
                    <asp:Timer ID="Timer1" runat="server" Interval="2766"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            </p>

    <p>&nbsp;</p>
    <table class="nav-justified" style="background-color:#f0d7a7;margin-top:10px;">
        <tr>
            <td style="width:50%;">
               <asp:Image ID="Image6" runat="server" Height="100%" ImageUrl="~/Images/Purpose.jpg" Width="100%" />
            </td>
            <td style="width:50%;">
              <p style="font-weight:bold;font-size:20px;margin:10px 40px ">WOW Bakery History</p>
              <hr style="height:2px;border-width:0;color:gray;background-color:gray;margin:10px 40px ">
              <p style="margin:10px 40px " >Welcome to WOW Bakery where we put our heart and passion into baking artisanal bread and pastries.</p>
              <p style="margin:10px 40px ">Originated from Malaysia, WOW Bakery is one of the most famous homegrown bakery chains with outlets in Taiwan, China and Malaysia. We believe in complete transparency where all the bread is baked from scratch with no added flavouring and colouring in the process, using the finest ingredients, traditional techniques and original recipes which all come together in the hands of our expert bread artisans to deliver the most authentic flavours and experiences.</p>
              <p style="margin:10px 40px">
                <a class="btn btn-default" runat="server" href="~/About">Read More &raquo;</a>
             </p>
            </td>
        </tr>
    </table>

    <p>&nbsp;</p>
    <div class="jumbotron clr1" style="background-color:#e6ca94;">
    <p style="text-align:center;color:saddlebrown;">Some Of Our Best Seller Items</p>
    <h2 style="text-align:center">ALL-TIME FAVOURITE</h2>
    <hr style="height:2px;border-width:0;color:gray;background-color:gray;width:50%">
    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/cake.jpg" runat="server" PostBackUrl="~/Cake.aspx" Height="100%" Width="100%"/>
            </h2>
            <h2 style="text-align:center">Cakes</h2>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/donut.jpg" runat="server" PostBackUrl="~/Donut.aspx" Height="100%" Width="100%"/>
            </h2>
            <h2 style="text-align:center">Donuts</h2>
            <p>&nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/bread.jpg" runat="server" PostBackUrl="~/Bread.aspx" Height="100%" Width="100%"/>
            </h2>
            <h2 style="text-align:center">Breads</h2>
        </div>
        </div>
    </div>

</asp:Content>
