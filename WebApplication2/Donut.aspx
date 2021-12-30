<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donut.aspx.cs" Inherits="WebApplication2.Donut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            text-align:left;
        }
        .pad{
            padding-left:10px;
        }
    </style>
</head>
<body>
        <div>
            <div class="jumbotron" style="background-image:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)) , url('Images/Donut jum221.jpg'); margin-left:173px; width:70%; height:70%">
            <h1 style="color:white">Donuts</h1>
            <p class="lead" style="color:white">Hanson Gregory, an American, claimed to have invented the ring-shaped doughnut in 1847 aboard a lime-trading ship when he was 16 years old. Gregory was dissatisfied with the greasiness of doughnuts twisted into various shapes and with the raw centre of regular doughnuts.</p>
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
                            <asp:ListItem Value="5.00">Chocolate Frosted Doughnut</asp:ListItem>
                            <asp:ListItem Value="6.00">Cinnamon Twist Doughnut</asp:ListItem>
                            <asp:ListItem Value="3.00">Old-fashioned Doughnut</asp:ListItem>
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
                            <asp:ListItem Value="6.00">&nbsp;Ice Cream Sundae (+ RM 3.00)</asp:ListItem>
                            <asp:ListItem Value="2.80">&nbsp;Strawberry Shortcake (+ RM 0.80)</asp:ListItem>
                            <asp:ListItem Value="3.40">&nbsp;Caramel Delight (+ RM 1.40)</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        Decoration:<br />
                        <asp:CheckBoxList ID="cbl1" runat="server" AutoPostBack="True" Width="400px">
                            <asp:ListItem Value="5.00">&nbsp;Ombre strawberry lemonade (+ RM 3.00)</asp:ListItem>
                            <asp:ListItem Value="2.00">&nbsp;Coconuts (+ RM 1.00)</asp:ListItem>
                            <asp:ListItem Value="3.50">&nbsp;Maple bacon (+ RM 1.00)</asp:ListItem>
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
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtQty" EnableClientScript="False" ErrorMessage="Please complete the order to view the detail" ForeColor="Red" MaximumValue="5" MinimumValue="1" Type="Integer" style="margin-left:10px;margin-top:-20px;"></asp:RangeValidator>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <p>&nbsp;</p>
        </div>
</body>
</html>


</asp:Content>
