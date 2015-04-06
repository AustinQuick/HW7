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
                <asp:BoundField DataField="pFN" HeaderText="First Name" sortExpression="pFN" />
                <asp:BoundField DataField="pLN" HeaderText="Last Name" sortExpression="pLN" />
                <asp:BoundField DataField="pUni" HeaderText="University" sortExpression="pUni" />
                <asp:HyperLinkField DataNavigateUrlFields="pID" DataNavigateUrlFormatString="PropsectDetails.aspx?pID={0}" Text="View Prospect" />
            </Columns>

        </asp:GridView>

    </div>
    </form>
</body>
</html>
