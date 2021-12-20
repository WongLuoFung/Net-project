<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <p>
        <asp:Image ID="Image4" runat="server" Height="100%" ImageUrl="~/Images/Home.jpg" Width="100%" />
        <p >&nbsp;</p>
        </p>

    <table class="nav-justified" style="background-color:#c37960;margin-top:10px;">
        <tr>
            <td style="width:50%;">
               <asp:Image ID="Image6" runat="server" Height="100%" ImageUrl="~/Images/bakery.jpg" Width="100%" />
            </td>
            <td style="width:50%;">
              <p style="font-weight:bold;font-size:20px;margin:10px 40px ">WOW Bakery History</p>
              <hr style="height:2px;border-width:0;color:gray;background-color:gray;margin:10px 40px ">
              <p style="margin:10px 40px " >Welcome to WOW Bakery where we put our heart and passion into baking artisanal bread and pastries.</p>
              <p style="margin:10px 40px ">Originated from Malaysia, WOW Bakery is one of the most famous homegrown bakery chains with outlets in Taiwan, China and Malaysia. We believe in complete transparency where all the bread is baked from scratch with no added flavouring and colouring in the process, using the finest ingredients, traditional techniques and original recipes which all come together in the hands of our expert bread artisans to deliver the most authentic flavours and experiences.</p>
              <p >&nbsp;</p>
              <p style="margin:10px 40px">
                <a class="btn btn-default" runat="server" href="~/About">Read More &raquo;</a>
             </p>
            </td>
        </tr>
    </table>

    <table class="nav-justified" style="background-color:#f0d7a7;margin-top:10px;">
        <tr>
            <td style="width:50%;">
              <p style="font-weight:bold;font-size:20px;margin:10px 40px ">Our Purpose</p>
              <hr style="height:2px;border-width:0;color:gray;background-color:gray;margin:10px 40px ">
              <p style="margin:10px 40px " >As Malaysians, having bread and pastries throughout the day is customary. It is convenient, accessible, and affordable for everyone! Baked goods are consumed by people of all ages, from young to old. Bread and pastries are universal, it’s a staple food in many countries.</p>
              <p style="margin:10px 40px ">When we talk about bakery products, everyone will surely think of bakery goods from France or Japan. Who would ever think of Malaysia, would you? And yet Malaysia is a country so rich in culture and diversity, we have so much to share with the world!</p>
              <p style="margin:10px 40px ">Therefore, WOW Bakery is born out of purpose to go above and beyond by connecting and understanding the needs and lifestyle of Malaysians to indulge entirely in all the baked goods.</p>
              <p style="margin:10px 40px ">In WOW Bakery, we ensure top quality and wide selection of bakery goods catered specially for our customers. All individual bakery products are made with precision and the utmost attention to detail to establish a whole new experience and elevate flavours and textures for our patrons.</p>
              <p style="margin:10px 40px ">We aim to be the leading bakery in Malaysia, in time taking over globally with our scrumptious baked goods and top-notch services. It will soon be unnecessary to travel abroad just to have a taste of the finest pastries!</p>
              <p >&nbsp;</p>
            </td>
            <td style="width:50%;">
              <asp:Image ID="Image5" runat="server" Height="100%" ImageUrl="~/Images/donut.jpg" Width="100%"/>
            </td>
        </tr>
    </table>
    <p >&nbsp;</p>

    <div class="jumbotron">
    <p style="text-align:center;color:saddlebrown;">Some Of Our Best Seller Items</p>
    <h2 style="text-align:center">ALL-TIME FAVOURITE</h2>
    <hr style="height:2px;border-width:0;color:gray;background-color:gray;width:50%">
    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl="~/Images/cake.jpg" Width="100%" />
            </h2>
            <h2 style="text-align:center">Cake</h2>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:Image ID="Image2" runat="server" Height="100%" ImageUrl="~/Images/donut.jpg" Width="100%" />
            </h2>
            <h2 style="text-align:center">Donut</h2>
            <p>&nbsp;</p>
            <p style="text-align:center">
                <a class="btn btn-default" runat="server" href="~/Donut">View Menu &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:Image ID="Image3" runat="server" Height="100%" ImageUrl="~/Images/bread.jpg" Width="100%" />
            </h2>
            <h2 style="text-align:center">Bread</h2>
        </div>
        </div>
    </div>

</asp:Content>
