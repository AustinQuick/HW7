<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PlayesPage.aspx.vb" Inherits="Admin_PlayesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick's Top NBA Draft Prospects</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [amquick_HW7]" ID="sql_Default" DeleteCommand="DELETE FROM [amquick_HW7] WHERE [pID] = @pID" InsertCommand="INSERT INTO [amquick_HW7] ([pFN], [pLN], [pUni], [pHeight], [pWeight], [pPosition], [pPPG], [pRPG], [pAPG]) VALUES (@pFN, @pLN, @pUni, @pHeight, @pWeight, @pPosition, @pPPG, @pRPG, @pAPG)" UpdateCommand="UPDATE [amquick_HW7] SET [pFN] = @pFN, [pLN] = @pLN, [pUni] = @pUni, [pHeight] = @pHeight, [pWeight] = @pWeight, [pPosition] = @pPosition, [pPPG] = @pPPG, [pRPG] = @pRPG, [pAPG] = @pAPG WHERE [pID] = @pID">
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
                <asp:Parameter Name="pPPG" Type="Single" />
                <asp:Parameter Name="pRPG" Type="Single" />
                <asp:Parameter Name="pAPG" Type="Single" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pFN" Type="String" />
                <asp:Parameter Name="pLN" Type="String" />
                <asp:Parameter Name="pUni" Type="String" />
                <asp:Parameter Name="pHeight" Type="String" />
                <asp:Parameter Name="pWeight" Type="Int32" />
                <asp:Parameter Name="pPosition" Type="String" />
                <asp:Parameter Name="pPPG" Type="Single" />
                <asp:Parameter Name="pRPG" Type="Single" />
                <asp:Parameter Name="pAPG" Type="Single" />
            </UpdateParameters>
        </asp:sqldatasource>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="sql_Default" AutoGenerateColumns="False" DataKeyNames="pID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pFN" HeaderText="First Name" sortExpression="pFN" />
                <asp:BoundField DataField="pLN" HeaderText="Last Name" sortExpression="pLN" />
                <asp:BoundField DataField="pUni" HeaderText="University" sortExpression="pLN" />
                <asp:HyperLinkField DataNavigateUrlFields="pID" DataNavigateUrlFormatString="PropsectDetails.aspx?pID={0}" Text="View Prospect" />
            </Columns>

        </asp:GridView>
        
    </div>

        <br />
     

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/NewDraftProspect.aspx">Add A New Prospect</asp:HyperLink>
   
        <br />
        <br />    

        <asp:Label ID="lbl_DeletedProspect" runat="server" Text="Label"></asp:Label> 

    </form>
</body>
</html>
