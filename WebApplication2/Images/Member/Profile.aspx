<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication2.Member.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size:20px;font-weight:bold">
    <br />
    Profile</p>
<p>
    <asp:FormView ID="FormView3" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            PhoneNumber:
            <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            PhoneNumber:
            <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            PhoneNumber:
            <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [UserName], [PhoneNumber]) VALUES (@Id, @Email, @UserName, @PhoneNumber)" OnSelecting="SqlDataSource1_Selecting1" SelectCommand="SELECT [Id], [Email], [UserName], [PhoneNumber] FROM [AspNetUsers] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [UserName] = @UserName, [PhoneNumber] = @PhoneNumber WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="Id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
    <p>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="ImageId" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                ImageId:
                <asp:Label ID="ImageIdLabel1" runat="server" Text='<%# Eval("ImageId") %>' />
                <br />
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                ImageUpload:
                <asp:TextBox ID="ImageUploadTextBox" runat="server" Text='<%# Bind("ImageUpload") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                ImageUpload:
                <asp:TextBox ID="ImageUploadTextBox" runat="server" Text='<%# Bind("ImageUpload") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                <asp:Image ID="Image1" runat="server" Height="30%" ImageUrl='<%# "~/ImageHandler.ashx?ImageId="+Eval("ImageId") %>' Width="30%" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [Image] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:Parameter Name="Id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p style="font-size:20px;font-weight:bold">
        Order Detail</p>
    <p >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource3">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @OrderId" InsertCommand="INSERT INTO [Order] ([Id], [OrderEmail], [Flavor], [Quantity], [Topping], [Decoration], [TotalPrice]) VALUES (@Id, @OrderEmail, @Flavor, @Quantity, @Topping, @Decoration, @TotalPrice)" OnSelecting="SqlDataSource3_Selecting" SelectCommand="SELECT * FROM [Order] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Order] SET [Id] = @Id, [OrderEmail] = @OrderEmail, [Flavor] = @Flavor, [Quantity] = @Quantity, [Topping] = @Topping, [Decoration] = @Decoration, [TotalPrice] = @TotalPrice WHERE [OrderId] = @OrderId">
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
            <SelectParameters>
                <asp:Parameter Name="Id" Type="String" />
            </SelectParameters>
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
</asp:Content>
