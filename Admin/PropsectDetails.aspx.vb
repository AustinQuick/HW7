
Partial Class PropsectDetails
    Inherits System.Web.UI.Page



    Protected Sub DetailsView_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView.ItemDeleted

        Dim fDeletedProspect As String = e.Values("pFN").ToString
        Dim lDeletedProspect As String = e.Values("pLN").ToString

        lbl_deletedProspect.Text = fDeletedProspect & lDeletedProspect & " has been deleted from the database"

        Response.AddHeader("Refresh", "3;Url=PlayesPage.aspx")

    End Sub


    Protected Sub DetailsView_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView.ItemUpdated

        Response.Redirect("~/Admin/PlayesPage.aspx")

    End Sub
End Class
