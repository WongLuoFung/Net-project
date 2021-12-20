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
    </style>
</head>
<body>
        <div>
            <h1 class="auto-style2" style="text-align:center">Donuts</h1>
            <br />
            <table align="center" cellpadding="10" cellspacing="1" class="auto-style1" border="1">
                <tr>
                    <td style="vertical-align:top;" width="50%">
                        <br />
                        Email:<asp:TextBox ID="Email" runat="server"></asp:TextBox>
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
                            <asp:ListItem Value="6.00">Ice Cream Sundae (+ RM 3.00)</asp:ListItem>
                            <asp:ListItem Value="2.80">Strawberry Shortcake (+ RM 0.80)</asp:ListItem>
                            <asp:ListItem Value="3.40">Caramel Delight (+ RM 1.40)</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        Decoration:<br />
                        <asp:CheckBoxList ID="cbl1" runat="server" AutoPostBack="True" Width="400px">
                            <asp:ListItem Value="5.00">Ombre strawberry lemonade (+ RM 3.00)</asp:ListItem>
                            <asp:ListItem Value="2.00">Coconuts (+ RM 1.00)</asp:ListItem>
                            <asp:ListItem Value="3.50">Maple bacon (+ RM 1.00)</asp:ListItem>
                        </asp:CheckBoxList>
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Order" OnClick="Button1_Click" />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Error message" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <a class="btn btn-default" runat="server" href="~/WebForm1">Cake &raquo;</a>
                        <a class="btn btn-default" runat="server" href="~/Bread" style="margin-left:10px">Bread &raquo;</a>
                    </td>
                    <td style="vertical-align:top;" width="50%">
                        <asp:Panel ID="Panel1" runat="server">
                            <br />
                            ORDER DETAILS:<br />
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" />
                            <br />
                            Email:<asp:Label ID="Label6" runat="server"></asp:Label>
                            <br />
                            Flavor:
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br />
                            Quantity:
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <br />
                            Topping:
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <br />
                            Decoration:
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                            <br />
                            Total Price:
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtQty" EnableClientScript="False" ErrorMessage="Please complete the order to view the detail" ForeColor="Red" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <p>&nbsp;</p>
        </div>
</body>
</html>


</asp:Content>
