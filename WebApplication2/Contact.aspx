<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p>Name:</p>
    <p>
        <asp:TextBox ID="tname" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tname"></asp:RequiredFieldValidator>
    </p>
    <p>Email:</p>
    <p>
        <asp:TextBox ID="temail" runat="server" CssClass="form-control"></asp:TextBox>
    </p>
    <p>Subject:</p>
    <p>
        <asp:TextBox ID="tsubject" runat="server" CssClass="form-control"></asp:TextBox>
    </p>
    <p>Message</p>
    <p>
        <asp:TextBox ID="tmessage" runat="server" CssClass="form-control" Height="81px" MaxWidth="280px"></asp:TextBox>
    </p>
        <asp:Button ID="csubmit" runat="server" OnClick="csubmit_Click" Text="Submit" CssClass="btn btn-primary" />
        <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn" OnClick="Reset_Click" />
        <asp:Label ID="Label1" runat="server" ForeColor="Lime"></asp:Label>
    </asp:Content>
