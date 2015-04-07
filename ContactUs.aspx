<%@ Page Title="" Language="VB" MasterPageFile="~/Prospects.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head></head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <!-- Check to see if you are in postback.  If not, display the contact form. -->

        <% If Not IsPostBack Then%>




    <p style="text-align: left; margin-left: 200px;">

        <br /><br /><br />




        Your Email Address:




        <br /><br />




        <asp:TextBox ID="tEmail" runat="server" Height="20px" Width="260px"></asp:TextBox>




        <br /><br /><br /><br />




        Your Message: <br /><br />




        <asp:TextBox ID="tMessage" runat="server" Height="100px" Width="400px"></asp:TextBox>




        <br /><br /><br />




        </p>




        <p style="text-align: center">

        <asp:Button ID="sendMail" runat="server" Text="Send Message" Height="35px" Width="150px"/>




<!-- If you are in postback, display the confirmation label. -->

        <%Else%>




        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>




        <!-- End your 'If' statement. -->

        <%End If%>





        </p>

</asp:Content>

