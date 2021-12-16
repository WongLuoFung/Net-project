<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication2.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
</p>
<p style="font-size:20px;font-weight:bold;">
    Member List</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [PhoneNumber]) VALUES (@Id, @Email, @PhoneNumber)" SelectCommand="SELECT [Id], [Email], [PhoneNumber] FROM [AspNetUsers]" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [PhoneNumber] = @PhoneNumber WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p style="font-size:20px;font-weight:bold;">
        Order Detail</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="OrderEmail" HeaderText="OrderEmail" SortExpression="OrderEmail" />
                <asp:BoundField DataField="Flavor" HeaderText="Flavor" SortExpression="Flavor" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Topping" HeaderText="Topping" SortExpression="Topping" />
                <asp:BoundField DataField="Decoration" HeaderText="Decoration" SortExpression="Decoration" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @OrderId" InsertCommand="INSERT INTO [Order] ([Id], [OrderEmail], [Flavor], [Quantity], [Topping], [Decoration], [TotalPrice]) VALUES (@Id, @OrderEmail, @Flavor, @Quantity, @Topping, @Decoration, @TotalPrice)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [Id] = @Id, [OrderEmail] = @OrderEmail, [Flavor] = @Flavor, [Quantity] = @Quantity, [Topping] = @Topping, [Decoration] = @Decoration, [TotalPrice] = @TotalPrice WHERE [OrderId] = @OrderId">
            <DeleteParameters>
                <asp:Parameter Name="OrderId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="OrderEmail" Type="String" />
                <asp:Parameter Name="Flavor" Type="String" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Topping" Type="String" />
                <asp:Parameter Name="Decoration" Type="String" />
                <asp:Parameter Name="TotalPrice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="OrderEmail" Type="String" />
                <asp:Parameter Name="Flavor" Type="String" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Topping" Type="String" />
                <asp:Parameter Name="Decoration" Type="String" />
                <asp:Parameter Name="TotalPrice" Type="String" />
                <asp:Parameter Name="OrderId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p style="font-size:20px;font-weight:bold;">
        Customer Message</p>
    <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="MessageId" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="MessageId" HeaderText="MessageId" InsertVisible="False" ReadOnly="True" SortExpression="MessageId" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="MessageEmail" HeaderText="MessageEmail" SortExpression="MessageEmail" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [contact] WHERE [MessageId] = @MessageId" InsertCommand="INSERT INTO [contact] ([Id], [MessageEmail], [Name], [Subject], [Message]) VALUES (@Id, @MessageEmail, @Name, @Subject, @Message)" SelectCommand="SELECT * FROM [contact]" UpdateCommand="UPDATE [contact] SET [Id] = @Id, [MessageEmail] = @MessageEmail, [Name] = @Name, [Subject] = @Subject, [Message] = @Message WHERE [MessageId] = @MessageId">
            <DeleteParameters>
                <asp:Parameter Name="MessageId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="MessageEmail" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="MessageEmail" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="MessageId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
