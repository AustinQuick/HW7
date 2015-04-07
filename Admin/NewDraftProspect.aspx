<%@ Page Title="" Language="VB" MasterPageFile="~/Prospects.master" AutoEventWireup="false" CodeFile="NewDraftProspect.aspx.vb" Inherits="Admin_NewDraftProspect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" ValidateRequestMode="Disabled">
    <asp:SqlDataSource ID="Sql_PlayerData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [amquick_HW7] WHERE [pID] = @pID" InsertCommand="INSERT INTO [amquick_HW7] ([pFN], [pLN], [pUni], [pHeight], [pWeight], [pPosition], [pPPG], [pRPG], [pAPG]) VALUES (@pFN, @pLN, @pUni, @pHeight, @pWeight, @pPosition, @pPPG, @pRPG, @pAPG)" SelectCommand="SELECT * FROM [amquick_HW7]" UpdateCommand="UPDATE [amquick_HW7] SET [pFN] = @pFN, [pLN] = @pLN, [pUni] = @pUni, [pHeight] = @pHeight, [pWeight] = @pWeight, [pPosition] = @pPosition, [pPPG] = @pPPG, [pRPG] = @pRPG, [pAPG] = @pAPG WHERE [pID] = @pID">
            <DeleteParameters>
                <asp:Parameter Name="pID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pFN" Type="String" />
                <asp:Parameter Name="pLN" Type="String" />
                <asp:Parameter Name="pUni" Type="String" />
                <asp:Parameter Name="pHeight" Type="String" />
                <asp:Parameter Name="pWeight" Type="Int32" />
                <asp:Parameter Name="pPosition" Type="String" />
                <asp:Parameter Name="pPPG" Type="String" />
                <asp:Parameter Name="pRPG" Type="String" />
                <asp:Parameter Name="pAPG" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pFN" Type="String" />
                <asp:Parameter Name="pLN" Type="String" />
                <asp:Parameter Name="pUni" Type="String" />
                <asp:Parameter Name="pHeight" Type="String" />
                <asp:Parameter Name="pWeight" Type="Int32" />
                <asp:Parameter Name="pPosition" Type="String" />
                <asp:Parameter Name="pPPG" Type="String" />
                <asp:Parameter Name="pRPG" Type="String" />
                <asp:Parameter Name="pAPG" Type="String" />
                <asp:Parameter Name="pID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

<asp:detailsview runat="server" height="50px" width="125px" AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="Sql_PlayerData" ID="DetailsView1" DefaultMode="Insert" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <EditRowStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" />
    <EmptyDataTemplate>
        Please enter a value!
    </EmptyDataTemplate>
    <Fields>
        <asp:BoundField DataField="pFN" HeaderText="First Name" SortExpression="pFN" />
        <asp:BoundField DataField="pLN" HeaderText="Last Name" SortExpression="pLN" />
        <asp:BoundField DataField="pUni" HeaderText="University" SortExpression="pUni" />
        <asp:BoundField DataField="pHeight" HeaderText="Height" SortExpression="pHeight" />
        <asp:BoundField DataField="pWeight" HeaderText="Weight" SortExpression="pWeight" />
        <asp:BoundField DataField="pPosition" HeaderText="Position" SortExpression="pPosition" />
        <asp:BoundField DataField="pPPG" HeaderText="Points Per Game" SortExpression="pPPG" />
        <asp:BoundField DataField="pRPG" HeaderText="Rebounds Per Game" SortExpression="pRPG" />
        <asp:BoundField DataField="pAPG" HeaderText="Assists Per Game" SortExpression="pAPG" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>

        <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

        </asp:detailsview>
</asp:Content>

