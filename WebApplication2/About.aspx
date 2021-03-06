<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron" style="background-image:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)) , url('Images/bakery1.jpg'); ">
        <h1 style="color:white">About Us</h1>
        <p class="lead" style="color:white">WOW Bakery started as a bakery. It is our everyday goal to produce foods that will not only nourish your body but also delight your senses, leaving you a wonderful memory. We ensure top quality and wide selection of bakery goods catered specially for our customers. All individual bakery products are made with precision and the utmost attention to detail.All items are by special order and can be tailored to fit the client’s needs.</p>
        </div>
&nbsp;

    <table class="nav-justified" style="margin-top:50px">
        <tr >
            <td style="width:60%;"> 
              <p style="font-weight:bold;font-size:30px;margin:10px 40px; ">Our beliefs </p>
              <p style="margin:10px 40px;font-size:20px;" >Produce safe and quality products with no added preservatives, pork, lard and/or alcohol Support local farmers and various purveyors in producing exceptional ingredients Honesty, passion and care in everything we do</p>
              <p >&nbsp;</p>
            </td>
            <td style="width:40%;">
                <asp:Image ID="Image2" runat="server" Height="100%" ImageUrl="~/Images/about1.jpg" Width="100%" />
            </td>
        </tr>
        </table>
        <table class="nav-justified" style="margin-top:50px">
        <tr>
            <td style="width:40%;">
                <asp:Image ID="Image3" runat="server" Height="100%" ImageUrl="~/Images/about2.jpg" Width="100%" />
            </td>
            <td style="width:60%;"> 
              <p style="font-weight:bold;font-size:30px;margin:10px 40px ">Advantages </p>
              <p style="margin:10px 40px;font-size:20px; " >Our niche is having a strong team of consultants ably assisting our world&#39;s top bakers from Malaysia. Rest assured by our stringent selection of the ingredients andraw materials right from production to displaying our products on our trays for sale are well established to improve the quality control procedures to ensure that our products comply with all relevant standards.</p>
              <p >&nbsp;</p>
            </td>
        </tr>
        </table>
        <table class="nav-justified" style="margin-top:50px">
        <tr>
            <td style="width:60%;"> 
              <p style="font-weight:bold;font-size:30px;margin:10px 40px ">Natural Yeast Bread </p>
              <p style="margin:10px 40px;font-size:20px; " >We choose to use the yeast which is naturally from the fruit to produce our dough when the yeast has propagated to sufficient amounts. We proudly introduces our natural yeast bread with no preservatives or any other non-organic substance added. Its yeast is originated from natural fruit and these are definitely in line with nowadays’ emphasis on healthy eating trend.</p>
              <p >&nbsp;</p>
            </td>
            <td style="width:40%;">
                <asp:Image ID="Image4" runat="server" Height="100%" ImageUrl="~/Images/about3.jpg" Width="100%" />
            </td>
        </tr>
    </table>
</asp:Content>
