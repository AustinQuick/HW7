﻿
Partial Class Admin_NewDraftProspect
    Inherits System.Web.UI.Page


    Protected Sub DetailsView1_ItemInserted1(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("~/Admin/PlayesPage.aspx")


    End Sub



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        DetailsView1.Focus()

    End Sub
End Class