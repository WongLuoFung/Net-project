<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>WOW Bakery</h1>
        <p class="lead">Welcome to WOW Bakery where we put our heart and passion into baking artisanal bread and pastries.We believe in complete transparency where all the bread is baked from scratch with no added flavoring and coloring in the process, using the finest ingredients, traditional techniques and original recipes which all come together in the hands of our expert bread artisans to deliver the most authentic flavors and experiences.</p>

    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl="~/Images/cake.jpg" Width="100%" />
            </h2>
            <h2>Cake</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/WebForm1">Buy Now &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:Image ID="Image2" runat="server" Height="100%" ImageUrl="~/Images/donut.jpg" Width="100%" />
            </h2>
            <h2>Donut</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" runat="server" href="~/Donut">Buy Now &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:Image ID="Image3" runat="server" Height="100%" ImageUrl="~/Images/bread.jpg" Width="100%" />
            </h2>
            <h2>Bread</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Buy Now &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
