<%@ Page Title="" Language="VB" MasterPageFile="~/Prospects.master" AutoEventWireup="false" CodeFile="PlayersPage.aspx.vb" Inherits="PlayersPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [amquick_HW7]" ID="sql_Default"></asp:sqldatasource>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="sql_Default" AutoGenerateColumns="False" DataKeyNames="pID" BorderStyle="Solid" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FF6600" />
            <Columns>
                <asp:BoundField DataField="pFN" HeaderText="First Name" sortExpression="pFN" />
                <asp:BoundField DataField="pLN" HeaderText="Last Name" sortExpression="pLN" />
                <asp:BoundField DataField="pUni" HeaderText="University" sortExpression="pUni" />
                <asp:HyperLinkField DataNavigateUrlFields="pID" DataNavigateUrlFormatString="PropsectDetails.aspx?pID={0}" Text="View Prospect" />
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
</asp:Content>

