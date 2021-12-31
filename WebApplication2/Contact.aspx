<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron" style="background-image:linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)) , url('Images/bakery1.jpg'); ">
        <h1 style="color:white"><%: Title %></h1>
        <p class="lead" style="color:white">Feel Free To Get In Touch With Us</p>
    </div>
    <div class="container">
        <div class="row" style="display:flex;">
            <div class="col-md-6" style="background-color:#DEB887; padding:20px 50px 30px 50px;">
                <h3>Address</h3>
                <address style="padding-left:20px;">
                    One Microsoft Way<br />
                    Redmond, WA 98052-6399<br />
                    <abbr title="Phone">P:</abbr>
                    425.555.0100
                </address>

                <address">
                    <strong>Support:</strong>   <a style="color:black;" href="mailto:Support@example.com">Support@example.com</a><br />
                    <strong>Marketing:</strong> <a style="color:black;" href="mailto:Marketing@example.com">Marketing@example.com</a>
                </address>

                <hr style="border-color:black;">

                <h3>Working hour:</h3>
                   <div style="padding-left:20px;"> Monday ~ Friday: 9:00 a.m. ~ 5:00 p.m.
                       <br>Saturday: 9:00 a.m. ~ 1:00 p.m.
                       <br>Sunday & Public holiday: Do not open.
                   </div>
            </div>
            <div class="col-md-6" style="background-color:#e6ca94; padding:20px 50px 30px 50px;">
                <h2>Have Any Question?</h2>
                <br>
                <p>Name:</p>
                <p>
                    <asp:TextBox ID="tname" runat="server" CssClass="form-control" ></asp:TextBox>
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
                    <asp:TextBox ID="tmessage" runat="server" CssClass="form-control" Height="100px" Rows="2" TextMode="MultiLine"></asp:TextBox>
                </p>
                    <asp:Button ID="csubmit" runat="server" OnClick="csubmit_Click" Text="Submit" CssClass="btn btn-primary" />
                    <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn" OnClick="Reset_Click" />
                    <asp:Label ID="Label1" runat="server" ForeColor="Lime"></asp:Label>
            </div>
        </div>   
    </div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.3991240739106!2d101.79057671525236!3d2.98660425496203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdcb841d3762c7%3A0x4dc97330d731c530!2sNew%20Era%20University%20College!5e0!3m2!1sen!2smy!4v1640156610258!5m2!1sen!2smy" height="450" style="border:3px solid black; width:100%;" allowfullscreen="" loading="lazy"></iframe>
</asp:Content>
