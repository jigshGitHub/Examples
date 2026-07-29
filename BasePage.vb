Imports System.Data.SqlClient
Imports System.Web
Imports Mhcc.Hospice
Imports Microsoft.VisualBasic
Public Class BasePage
    Inherits System.Web.UI.Page

    Private _UserName As String
    Private _FirstName As String
    Private _LastName As String
    Private _IsAdmin As Boolean = False
    Private _Year As String = ConfigurationManager.AppSettings("year")

    Protected dbOperationManager As DBOperationManager = New DBOperationManager()
    Protected Function GetAdmin() As String
        Return _IsAdmin
    End Function
    Protected Sub SetAdmin(value As Boolean)
        _IsAdmin = value
    End Sub
    Protected Function GetYear() As String
        Return _Year
    End Function
    Protected Function GetUserName() As String
        Return _UserName
    End Function

    Protected Sub SetUserName(AutoPropertyValue As String)
        _UserName = AutoPropertyValue
    End Sub

    Protected Function GetFirstName() As String
        Return _FirstName
    End Function

    Protected Sub SetFirstName(AutoPropertyValue As String)
        _FirstName = AutoPropertyValue
    End Sub
    Protected Function GetLastName() As String
        Return _LastName
    End Function

    Protected Sub SetLastName(AutoPropertyValue As String)
        _LastName = AutoPropertyValue
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim userName As String = ""
            Dim firstName As String = ""
            userName = Request.QueryString("username")
            firstName = Request.QueryString("firstName")
            If String.IsNullOrEmpty(userName) Then
                userName = Session("UserName")
                firstName = Session("FirstName")
                If String.IsNullOrEmpty(userName) Then
                    LogOutAndRedirectToIndex()
                End If
                SetFirstName(firstName)
                SetLastName(Session("LastName"))
            End If
            'SetUserName(Session("UserName"))
            SetUserName(userName)
            SetFirstName(firstName)
            If Not String.IsNullOrEmpty(Request.QueryString("admin")) Then
                SetAdmin(Request.QueryString("admin") = "1")
            End If
        End If
    End Sub
    Protected Sub LogOutAndRedirectToIndex()
        Session.Abandon()
        FormsAuthentication.SignOut()
        Response.Redirect("index.aspx")
    End Sub
    Protected Overridable Sub MapTextValueField(ByVal cmdInsert As SqlCommand, ByVal txtBx As TextBox, ByVal dbField As String, Optional defaultVal As String = "")
        If Len(txtBx.Text & "") > 0 Then
            cmdInsert.Parameters.AddWithValue(dbField, txtBx.Text)
        ElseIf Not String.IsNullOrEmpty(defaultVal) Then
            cmdInsert.Parameters.AddWithValue(dbField, defaultVal)
        End If
    End Sub
    Protected Overridable Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String, Optional defaultVal As String = "") As String
        Return IIf(Len(txtBx.Text & "") > 0, " " & dbField & "='" & txtBx.Text & "', ", " " & dbField & "='" & defaultVal & "', ")
    End Function
    Protected Overridable Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String, Optional includeComa As Boolean = True) As String
        Return IIf(txtBx.Text.Length > 0, dbField & " = '" & txtBx.Text & "'" & IIf(includeComa, ",", ""), "")
    End Function
    Protected Overridable Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String) As String
        Return IIf(txtBx.Text.Length > 0, dbField & " = '" & txtBx.Text & "', ", "")
    End Function
    Protected Overridable Sub SetTextBoxValue(ByVal dbReaderValue As Object, ByVal txtBx As TextBox)
        If Not IsDBNull(dbReaderValue) And Len(dbReaderValue & "") > 0 Then
            txtBx.Text = dbReaderValue
        End If
    End Sub
    Protected Overridable Sub SetCheckboxSelection(ByVal dbReaderValue As Object, ByVal chkBx As CheckBox)
        If Not IsDBNull(dbReaderValue) Then
            chkBx.Checked = dbReaderValue
        End If
    End Sub
    Protected Overridable Sub SetRadiobuttonLstSelection(ByVal dbReaderValue As Object, ByVal rbList As RadioButtonList)
        If Not IsDBNull(dbReaderValue) Then
            rbList.Items.FindByValue(dbReaderValue).Selected = True
        End If
    End Sub
    Protected Overridable Sub SetDropdownLstSelection(ByVal dbReaderValue As Object, ByVal ddList As DropDownList)
        If Not IsDBNull(dbReaderValue) Then
            ddList.Items.FindByValue(dbReaderValue).Selected = True
        End If
    End Sub
End Class
