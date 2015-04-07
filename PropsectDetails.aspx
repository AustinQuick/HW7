<%@ Page Title="" Language="VB" MasterPageFile="~/Prospects.master" AutoEventWireup="false" CodeFile="PropsectDetails.aspx.vb" Inherits="ProspectDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pFN], [pLN], [pUni], [pHeight], [pPPG], [pPosition], [pWeight], [pRPG], [pAPG] FROM [amquick_HW7] WHERE ([pID] = @pID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pID" QueryStringField="pID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:detailsview runat="server" height="50px" width="250px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FF6600" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="pFN" HeaderText="First Name" SortExpression="pFN" />
                <asp:BoundField DataField="pLN" HeaderText="Last Name" SortExpression="pLN" />
                <asp:BoundField DataField="pUni" HeaderText="University" SortExpression="pUni" />
                <asp:BoundField DataField="pHeight" HeaderText="Height" SortExpression="pHeight" />
                <asp:BoundField DataField="pWeight" HeaderText="Weight" SortExpression="pWeight" />
                <asp:BoundField DataField="pPosition" HeaderText="Position" SortExpression="pPosition" />
                <asp:BoundField DataField="pPPG" HeaderText="PPG" SortExpression="pPPG" />
                <asp:BoundField DataField="pRPG" HeaderText="RPG" SortExpression="pRPG" />
                <asp:BoundField DataField="pAPG" HeaderText="APG" SortExpression="pAPG" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:detailsview>

</asp:Content>

