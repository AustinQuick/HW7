
Partial Class login_login
    Inherits System.Web.UI.Page



    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "Admin") = True Then
            Response.Redirect("~/Admin/PlayesPage.aspx")

        Else : Response.Redirect("~/Default.aspx")

        End If
    End Sub
End Class
