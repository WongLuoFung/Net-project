<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bread.aspx.cs" Inherits="WebApplication2.Bread" %>
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
            <h1 class="auto-style2" style="text-align:center">Breads</h1>
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
                            <asp:ListItem Value="30.00">Ciabatta</asp:ListItem>
                            <asp:ListItem Value="20.00">Sourdough</asp:ListItem>
                            <asp:ListItem Value="15.00">Whole Wheat Bread</asp:ListItem>
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
                            <asp:ListItem Value="5.50">Vegan garlic sauce (+ RM 0.00)</asp:ListItem>
                            <asp:ListItem Value="6.00">Tomato & White Bean Soup (+ RM 0.80)</asp:ListItem>
                            <asp:ListItem Value="0.00">Naked (+ RM 1.40)</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        Decoration:<br />
                        <asp:CheckBoxList ID="cbl1" runat="server" AutoPostBack="True" Width="400px">
                            <asp:ListItem Value="3.00">Scoring (+ RM 7.00)</asp:ListItem>
                            <asp:ListItem Value="2.00">Lattice (+ RM 8.00)</asp:ListItem>
                            <asp:ListItem Value="5.50">Braiding (+ RM 9.00)</asp:ListItem>
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
                        <a class="btn btn-default" runat="server" href="~/Cake">Cake &raquo;</a>
                        <a class="btn btn-default" runat="server" href="~/Donut" style="margin-left:10px">Donuts &raquo;</a>
                    </td>
                    <td style="vertical-align:top;" width="50%">
                        <asp:Panel ID="Panel1" runat="server">
                            <br />
                            <p style="margin-left:10px;">ORDER DETAILS:</p>
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" style="margin:10px 10px;" />
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
