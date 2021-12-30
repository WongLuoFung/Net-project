<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cake.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        </style>
</head>
<body>
        <div>
        <div class="jumbotron" style="background-image:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)) , url('Images/cake jum222.jpg'); margin-left:173px; width:70%; height:70%">
        <h1 style="color:white">Cake</h1>
        <p class="lead" style="color:white">Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. cakes now cover a wide range of preparations that can be simple or elaborate.Our cake using only natural freshest ingredients to make. </p>
        </div>

            <table align="center" cellpadding="10" cellspacing="1" class="auto-style1" border="1">
                <tr>
                    <td style="vertical-align:top; padding-left: 10px;" width="50%">
                        <br />
                        Email: <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Flavor: 
                        <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="75.00">Red Velvet</asp:ListItem>
                            <asp:ListItem Value="80.00">Blueberry</asp:ListItem>
                            <asp:ListItem Value="89.00">Black Forest</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Quantity (1 to 5):<br />
                        <asp:TextBox ID="txtQty" runat="server" AutoPostBack="True">1</asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQty" EnableClientScript="False" ErrorMessage="The Quantity is Not in Range." ForeColor="Red" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        <br />
                        <br />
                        Topping:<br />
                        <asp:RadioButtonList ID="rbl1" runat="server" AutoPostBack="True" Width="400px">
                            <asp:ListItem Value="0.00">&nbsp;Fondant (+ RM 0.00)</asp:ListItem>
                            <asp:ListItem Value="0.80">&nbsp;Buttercream (+ RM 0.80)</asp:ListItem>
                            <asp:ListItem Value="1.40">&nbsp;Naked (+ RM 1.40)</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        Decoration:<br />
                        <asp:CheckBoxList ID="cbl1" runat="server" AutoPostBack="True" Width="400px">
                            <asp:ListItem Value="7.00">&nbsp;M&amp;M (+ RM 7.00)</asp:ListItem>
                            <asp:ListItem Value="8.00">&nbsp;Snickers (+ RM 8.00)</asp:ListItem>
                            <asp:ListItem Value="8.50">&nbsp;Oreo (+ RM 9.00)</asp:ListItem>
                        </asp:CheckBoxList>
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" OnClick="Button1_Click" />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Error message" />
                    </td>
                    <td style="vertical-align:top;" width="50%">
                        <asp:Panel ID="Panel1" runat="server">
                            <br />
                            <p style="margin-left:10px;">ORDER DETAILS:</p>
                            <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" style="margin:0px 10px 10px 10px;" />
                            <br />
                            <p style="margin-left:10px;">Email:
                            <asp:Label ID="Label6" runat="server"></asp:Label></p>
                            <br />
                            <p style="margin-left:10px;margin-top:-20px;">Flavor:
                            <asp:Label ID="Label1" runat="server"></asp:Label></p>
                            <br />
                            <p style="margin-left:10px;margin-top:-20px;">Quantity:
                            <asp:Label ID="Label2" runat="server"></asp:Label></p>
                            <br />
                            <p style="margin-left:10px;margin-top:-20px;">Topping:
                            <asp:Label ID="Label3" runat="server"></asp:Label></p>
                            <br />
                            <p style="margin-left:10px;margin-top:-20px;">Decoration:
                            <asp:Label ID="Label4" runat="server"></asp:Label></p>
                            <br />
                            <p style="margin-left:10px;margin-top:-20px;">Total Price:
                            <asp:Label ID="Label5" runat="server"></asp:Label></p>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtQty" EnableClientScript="False" ErrorMessage="Please complete the order to view the detail" ForeColor="Red" MaximumValue="5" MinimumValue="1" Type="Integer" style="margin-left:10px;margin-top:-20px;" ></asp:RangeValidator>
                            <br />
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
</body>
</html>


</asp:Content>
