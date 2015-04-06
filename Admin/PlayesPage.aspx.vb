
Partial Class Admin_PlayesPage
    Inherits System.Web.UI.Page



    Protected Sub GridView1_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView1.RowDeleted

    
        Dim fDeletedProspect As String = e.Values("pFN").ToString
        Dim lDeletedProspect As String = e.Values("pLN").ToString

        lbl_DeletedProspect.Text = fDeletedProspect & lDeletedProspect & " has been deleted from the database"

        Response.AddHeader("Refresh", "3;Url=PlayesPage.aspx")

    End Sub
End Class
