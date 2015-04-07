
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tbFN_TextChanged(sender As Object, e As EventArgs) Handles tbFN.TextChanged
        Dim searchWord As String
        searchWord = "Select * From amquick_HW7 where (pFN Like '%" + tbFN.Text.ToString() + "%') or (pLN Like '%" + tbFN.Text.ToString() + "%') or (pUni Like '%" + tbFN.Text.ToString() + "%') or (pPosition Like '%" + tbFN.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub


    Protected Sub tbFN1_TextChanged(sender As Object, e As EventArgs) Handles tbFN1.TextChanged
        Dim searchWord As String
        searchWord = "Select * From amquick_HW7 where (pFN Like '%" + tbFN1.Text.ToString() + "%') or (pLN Like '%" + tbFN1.Text.ToString() + "%') or (pUni Like '%" + tbFN1.Text.ToString() + "%') or (pPosition Like '%" + tbFN1.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
