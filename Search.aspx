

<%@ Page Title="" Language="VB" MasterPageFile="~/Prospects.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [amquick_HW7]"></asp:SqlDataSource>

  
    <br />


<%If Not IsPostBack Then%>

Search For: <asp:TextBox ID="tbFN" runat="server"></asp:TextBox><br />

<%Else%>
Also Search For: <asp:TextBox ID="tbFN1" runat="server"></asp:TextBox><br />


    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="pID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#FF6600" />
        <Columns>
            <asp:BoundField DataField="pFN" HeaderText="First Name" SortExpression="pFN" />
            <asp:BoundField DataField="pLN" HeaderText="Last Name" SortExpression="pLN" />
            <asp:BoundField DataField="pUni" HeaderText="University" SortExpression="pUni" />
            <asp:BoundField DataField="pHeight" HeaderText="Height" SortExpression="pHeight" />
            <asp:BoundField DataField="pWeight" HeaderText="Weight" SortExpression="pWeight" />
            <asp:BoundField DataField="pPosition" HeaderText="Position" SortExpression="pPosition" />
            <asp:BoundField DataField="pPPG" HeaderText="Points Per Game" SortExpression="pPPG" />
            <asp:BoundField DataField="pRPG" HeaderText="Rebounds Per Game" SortExpression="pRPG" />
            <asp:BoundField DataField="pAPG" HeaderText="Assists Per Game" SortExpression="pAPG" />
        </Columns>
        <FooterStyle BackColor="#FF6600" />
        <HeaderStyle BackColor="Blue" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

<%End If%>

</asp:Content>