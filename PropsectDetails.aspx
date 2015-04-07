<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PropsectDetails.aspx.vb" Inherits="PropsectDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prospect Details</title>
    <link rel="stylesheet" type="text/css" href="~/css/Style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pFN], [pLN], [pUni], [pHeight], [pPPG], [pPosition], [pWeight], [pRPG], [pAPG] FROM [amquick_HW7] WHERE ([pID] = @pID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pID" QueryStringField="pID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:detailsview runat="server" height="50px" width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
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
        </asp:detailsview>
    </div>
    </form>
</body>
</html>
