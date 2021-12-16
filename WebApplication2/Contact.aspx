<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p>Name:</p>
    <p>
        <asp:TextBox ID="tname" runat="server" Width="305px"></asp:TextBox>
    </p>
    <p>Email:</p>
    <p>
        <asp:TextBox ID="temail" runat="server" Width="302px"></asp:TextBox>
    </p>
    <p>Subject:</p>
    <p>
        <asp:TextBox ID="tsubject" runat="server" Width="297px"></asp:TextBox>
    </p>
    <p>Message</p>
    <p>
        <asp:TextBox ID="tmessage" runat="server" Height="81px" Width="342px"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="csubmit" runat="server" OnClick="csubmit_Click" Text="Submit" />
        <asp:Label ID="Label1" runat="server" ForeColor="Lime"></asp:Label>
    </p>
    </asp:Content>
