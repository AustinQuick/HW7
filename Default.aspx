<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick's NBA Draft Rankings</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [amquick_HW7]" ID="sql_Default"></asp:sqldatasource>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="sql_Default" AutoGenerateColumns="False" DataKeyNames="pID">
            <Columns>
                <asp:BoundField DataField="pID" HeaderText="Player ID" InsertVisible="false" ReadOnly="true" sortExpression="pID" />
                <asp:BoundField DataField="pFN" HeaderText="First Name" sortExpression="pFN" />
                <asp:BoundField DataField="pLN" HeaderText="Last Name" sortExpression="pLN" />
                <asp:BoundField DataField="pUni" HeaderText="University" sortExpression="pUni" />
                <asp:BoundField DataField="pHeight" HeaderText="Height" sortExpression="pHeight" />
                <asp:BoundField DataField="pWeight" HeaderText="Weight" sortExpression="pWeight" />
                <asp:BoundField DataField="pPosition" HeaderText="Position" sortExpression="pPosition" />
                <asp:BoundField DataField="pPPG" HeaderText="Points Per Game" sortExpression="pPPG" />
                <asp:BoundField DataField="pRPG" HeaderText="Rebounds Per Game" sortExpression="pRPG" />
                <asp:BoundField DataField="pAPG" HeaderText="Assists Per Game" sortExpression="pAPG" />
            </Columns>

        </asp:GridView>

    </div>
    </form>
</body>
</html>
