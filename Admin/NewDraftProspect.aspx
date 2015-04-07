<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewDraftProspect.aspx.vb" Inherits="NewDraftProspect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Prospect</title>
    <link rel="stylesheet" type="text/css" href="~/css/Style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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

<asp:detailsview runat="server" height="50px" width="125px" AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="Sql_PlayerData" ID="DetailsView1" DefaultMode="Insert">
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

        </asp:detailsview>





    </div>
    </form>
</body>
</html>

