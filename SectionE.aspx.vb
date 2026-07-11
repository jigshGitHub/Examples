Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionE
    'Inherits System.Web.UI.Page
    Inherits BasePage

    Protected Overloads Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'Commented following code - JS
            '' Read cookie ------------------------------------------------------------
            'Dim cookie As HttpCookie
            'cookie = Request.Cookies.Get("Hospiceusersettings")
            ''

            'If (cookie Is Nothing) Then
            '    Response.Redirect("noaccess.html")
            'Else
            '    UserName.Text = Request.Cookies("Hospiceusersettings")("UserName")
            '    lblFirstname.Text = Request.Cookies("Hospiceusersettings")("FirstName")
            '    lblLastName.Text = Request.Cookies("Hospiceusersettings")("LastName")
            '    SY1.Text = ConfigurationManager.AppSettings("year")
            '    SY2.Text = ConfigurationManager.AppSettings("year")

            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            '------------------------------------------------------------------------------
            '------------------------------------------------------------------------------

            LoadSurvey()
            msave.Visible = False
            merror.Visible = False
        End If
    End Sub
    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect("menu.aspx")

    End Sub

    Protected Sub btnMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMenu.Click
        SaveSurvey(1)
        msave.Visible = True
    End Sub

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        Response.Redirect("SectionF.aspx")
    End Sub
    Sub LoadSurvey()
        'Commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()
            If Len(DBReader("Certification1") & "") > 0 Then
                Certi1.Text = DBReader("Certification1")
                If Certi1.Text = "True" Then
                    btnMenu.Enabled = False
                End If
            End If
            If Len(DBReader("VolDirectNum") & "") > 0 Then VolDirectNum.Text = DBReader("VolDirectNum")
            If Len(DBReader("VolDirectHours") & "") > 0 Then VolDirectHours.Text = DBReader("VolDirectHours")
            If Len(DBReader("VolDirectVisits") & "") > 0 Then VolDirectVisits.Text = DBReader("VolDirectVisits")
            If Len(DBReader("VolPCSupNum") & "") > 0 Then VolPCSupNum.Text = DBReader("VolPCSupNum")
            If Len(DBReader("VolPCSupHours") & "") > 0 Then VolPCSupHours.Text = DBReader("VolPCSupHours")
            If Len(DBReader("VolGenSupNum") & "") > 0 Then VolGenSupNum.Text = DBReader("VolGenSupNum")
            If Len(DBReader("VolGenSupHours") & "") > 0 Then VolGenSupHours.Text = DBReader("VolGenSupHours")
            If Len(DBReader("VolAllNum") & "") > 0 Then VolAllNum.Text = DBReader("VolAllNum")
            If Len(DBReader("VolAllHours") & "") > 0 Then VolAllHours.Text = DBReader("VolAllHours")
            If Len(DBReader("VolAllVisits") & "") > 0 Then VolAllVisits.Text = DBReader("VolAllVisits")
            If Len(DBReader("BerContFam") & "") > 0 Then BerContFam.Text = DBReader("BerContFam")
            If Len(DBReader("BerContComm") & "") > 0 Then BerContComm.Text = DBReader("BerContComm")
            If Len(DBReader("BerContTotal") & "") > 0 Then BerContTotal.Text = DBReader("BerContTotal")
            If Len(DBReader("BerPhonFam") & "") > 0 Then BerPhonFam.Text = DBReader("BerPhonFam")
            If Len(DBReader("BerPhonComm") & "") > 0 Then BerPhonComm.Text = DBReader("BerPhonComm")
            If Len(DBReader("BerPhonTotal") & "") > 0 Then BerPhonTotal.Text = DBReader("BerPhonTotal")
            If Len(DBReader("BerMailFam") & "") > 0 Then BerMailFam.Text = DBReader("BerMailFam")
            If Len(DBReader("BerMailComm") & "") > 0 Then BerMailComm.Text = DBReader("BerMailComm")
            If Len(DBReader("BerMailTotal") & "") > 0 Then BerMailTotal.Text = DBReader("BerMailTotal")
            If Len(DBReader("BerServIndFam") & "") > 0 Then BerServIndFam.Text = DBReader("BerServIndFam")
            If Len(DBReader("BerServIndComm") & "") > 0 Then BerServIndComm.Text = DBReader("BerServIndComm")
            If Len(DBReader("BerServIndTotal") & "") > 0 Then BerServIndTotal.Text = DBReader("BerServIndTotal")

            'New Code July 2026
            'E3.	ON-CALL SUPPORT
            SetTextBoxValue(DBReader("DirectPatientStaffPY"), txtDirectPatientStaffPY)
            SetTextBoxValue(DBReader("DirectPatientStaffHrsPY"), txtDirectPatientStaffHrsPY)
            SetTextBoxValue(DBReader("DirectPatientStaffCY"), txtDirectPatientStaffCY)
            SetTextBoxValue(DBReader("DirectPatientStaffHrsCY"), txtDirectPatientStaffHrsCY)
            SetTextBoxValue(DBReader("ClinicalStaffPY"), txtClinicalStaffPY)
            SetTextBoxValue(DBReader("ClinicalStaffHrsPY"), txtClinicalStaffHrsPY)
            SetTextBoxValue(DBReader("ClinicalStaffCY"), txtClinicalStaffCY)
            SetTextBoxValue(DBReader("ClinicalStaffHrsCY"), txtClinicalStaffHrsCY)
            SetTextBoxValue(DBReader("GeneralStaffPY"), txtGeneralStaffPY)
            SetTextBoxValue(DBReader("GeneralStaffHrsPY"), txtGeneralStaffHrsPY)
            SetTextBoxValue(DBReader("GeneralStaffCY"), txtGeneralStaffCY)
            SetTextBoxValue(DBReader("GeneralStaffHrsCY"), txtGeneralStaffHrsCY)
            SetTextBoxValue(DBReader("TotalOnCallStaffPY"), txtTotalOnCallStaffPY)
            SetTextBoxValue(DBReader("TotalOnCallStaffHrsPY"), txtTotalOnCallStaffHrsPY)
            SetTextBoxValue(DBReader("TotalOnCallStaffCY"), txtTotalOnCallStaffCY)
            SetTextBoxValue(DBReader("TotalOnCallStaffHrsCY"), txtTotalOnCallStaffHrsCY)
            'E4.OTHER Services
            SetTextBoxValue(DBReader("PainMgtPY"), txtPainMgtPY)
            SetTextBoxValue(DBReader("PainMgtCY"), txtPainMgtCY)
            SetTextBoxValue(DBReader("NursingVisitPY"), txtNursingVisitPY)
            SetTextBoxValue(DBReader("NursingVisitCY"), txtNursingVisitCY)
            SetTextBoxValue(DBReader("HospiceAidePY"), txtHospiceAidePY)
            SetTextBoxValue(DBReader("HospiceAideCY"), txtHospiceAideCY)
            SetTextBoxValue(DBReader("MedicalSocialPY"), txtMedicalSocialPY)
            SetTextBoxValue(DBReader("MedicalSocialCY"), txtMedicalSocialCY)
            SetTextBoxValue(DBReader("SpiritualPY"), txtSpiritualPY)
            SetTextBoxValue(DBReader("SpiritualCY"), txtSpiritualCY)
            SetTextBoxValue(DBReader("BereavementPY"), txtBereavementPY)
            SetTextBoxValue(DBReader("BereavementCY"), txtBereavementCY)
            SetTextBoxValue(DBReader("MedEquipPY"), txtMedEquipPY)
            SetTextBoxValue(DBReader("MedEquipCY"), txtMedEquipCY)
            SetTextBoxValue(DBReader("MedDeliveryPY"), txtMedDeliveryPY)
            SetTextBoxValue(DBReader("MedDeliveryCY"), txtMedDeliveryCY)
            SetTextBoxValue(DBReader("TherapeuticPY"), txtTherapeuticPY)
            SetTextBoxValue(DBReader("TherapeuticCY"), txtTherapeuticCY)
            SetTextBoxValue(DBReader("TotalOtherSevPY"), txtTotalOtherSevPY)
            SetTextBoxValue(DBReader("TotalOtherSevCY"), txtTotalOtherSevCY)
        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Sub SaveSurvey(ByVal int As Integer)
        Dim strSQL As String = ""
        'Commented code - JS 03/07
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        strSQL = "Update Survey SET "

        strSQL = strSQL & " VolDirectNum='" & VolDirectNum.Text & "',"
            strSQL = strSQL & " VolDirectHours='" & VolDirectHours.Text & "',"
        strSQL = strSQL & " VolDirectVisits='" & VolDirectVisits.Text & "',"
        strSQL = strSQL & " VolPCSupNum='" & VolPCSupNum.Text & "',"
        strSQL = strSQL & " VolPCSupHours='" & VolPCSupHours.Text & "',"
        strSQL = strSQL & " VolGenSupNum='" & VolGenSupNum.Text & "',"
        strSQL = strSQL & " VolGenSupHours='" & VolGenSupHours.Text & "',"
        strSQL = strSQL & " VolAllNum='" & VolAllNum.Text & "',"
        strSQL = strSQL & " VolAllHours='" & VolAllHours.Text & "',"
        strSQL = strSQL & " VolAllVisits='" & VolAllVisits.Text & "',"
        strSQL = strSQL & " BerContFam='" & BerContFam.Text & "',"
        strSQL = strSQL & " BerContComm='" & BerContComm.Text & "',"
        strSQL = strSQL & " BerContTotal='" & BerContTotal.Text & "',"
        strSQL = strSQL & " BerPhonFam='" & BerPhonFam.Text & "',"
        strSQL = strSQL & " BerPhonComm='" & BerPhonComm.Text & "',"
        strSQL = strSQL & " BerPhonTotal='" & BerPhonTotal.Text & "',"
        strSQL = strSQL & " BerMailFam='" & BerMailFam.Text & "',"
        strSQL = strSQL & " BerMailComm='" & BerMailComm.Text & "',"
        strSQL = strSQL & " BerMailTotal='" & BerMailTotal.Text & "',"
        strSQL = strSQL & " BerServIndFam='" & BerServIndFam.Text & "',"
        strSQL = strSQL & " BerServIndComm='" & BerServIndComm.Text & "',"
        strSQL = strSQL & " BerServIndTotal='" & BerServIndTotal.Text & "',"

        'New code 07/10/2026
        'E3.	ON-CALL SUPPORT
        strSQL = strSQL & MapTextValueField(txtDirectPatientStaffPY, "DirectPatientStaffPY", False)
        strSQL = strSQL & MapTextValueField(txtDirectPatientStaffHrsPY, "DirectPatientStaffHrsPY", False)
        strSQL = strSQL & MapTextValueField(txtDirectPatientStaffCY, "DirectPatientStaffCY", False)
        strSQL = strSQL & MapTextValueField(txtDirectPatientStaffHrsCY, "DirectPatientStaffHrsCY", False)
        strSQL = strSQL & MapTextValueField(txtClinicalStaffPY, "ClinicalStaffPY", False)
        strSQL = strSQL & MapTextValueField(txtClinicalStaffHrsPY, "ClinicalStaffHrsPY", False)
        strSQL = strSQL & MapTextValueField(txtClinicalStaffCY, "ClinicalStaffCY", False)
        strSQL = strSQL & MapTextValueField(txtClinicalStaffHrsCY, "ClinicalStaffHrsCY", False)
        strSQL = strSQL & MapTextValueField(txtGeneralStaffPY, "GeneralStaffPY", False)
        strSQL = strSQL & MapTextValueField(txtGeneralStaffHrsPY, "GeneralStaffHrsPY", False)
        strSQL = strSQL & MapTextValueField(txtGeneralStaffCY, "GeneralStaffCY", False)
        strSQL = strSQL & MapTextValueField(txtGeneralStaffHrsCY, "GeneralStaffHrsCY", False)
        strSQL = strSQL & MapTextValueField(txtTotalOnCallStaffPY, "TotalOnCallStaffPY", False)
        strSQL = strSQL & MapTextValueField(txtTotalOnCallStaffHrsPY, "TotalOnCallStaffHrsPY", False)
        strSQL = strSQL & MapTextValueField(txtTotalOnCallStaffCY, "TotalOnCallStaffCY", False)
        strSQL = strSQL & MapTextValueField(txtTotalOnCallStaffHrsCY, "TotalOnCallStaffHrsCY", False)
        'E4.	OTHER SERVICES
        strSQL = strSQL & MapTextValueField(txtPainMgtPY, "PainMgtPY")
        strSQL = strSQL & MapTextValueField(txtPainMgtCY, "PainMgtCY")
        strSQL = strSQL & MapTextValueField(txtNursingVisitPY, "NursingVisitPY")
        strSQL = strSQL & MapTextValueField(txtNursingVisitCY, "NursingVisitCY")
        strSQL = strSQL & MapTextValueField(txtHospiceAidePY, "HospiceAidePY")
        strSQL = strSQL & MapTextValueField(txtHospiceAideCY, "HospiceAideCY")
        strSQL = strSQL & MapTextValueField(txtMedicalSocialPY, "MedicalSocialPY")
        strSQL = strSQL & MapTextValueField(txtMedicalSocialCY, "MedicalSocialCY")
        strSQL = strSQL & MapTextValueField(txtSpiritualPY, "SpiritualPY")
        strSQL = strSQL & MapTextValueField(txtSpiritualCY, "SpiritualCY")
        strSQL = strSQL & MapTextValueField(txtBereavementPY, "BereavementPY")
        strSQL = strSQL & MapTextValueField(txtBereavementCY, "BereavementCY")
        strSQL = strSQL & MapTextValueField(txtMedEquipPY, "MedEquipPY")
        strSQL = strSQL & MapTextValueField(txtMedEquipCY, "MedEquipCY")
        strSQL = strSQL & MapTextValueField(txtMedDeliveryPY, "MedDeliveryPY")
        strSQL = strSQL & MapTextValueField(txtMedDeliveryCY, "MedDeliveryCY")
        strSQL = strSQL & MapTextValueField(txtTherapeuticPY, "TherapeuticPY")
        strSQL = strSQL & MapTextValueField(txtTherapeuticCY, "TherapeuticCY")
        strSQL = strSQL & MapTextValueField(txtTotalOtherSevPY, "TotalOtherSevPY")
        strSQL = strSQL & MapTextValueField(txtTotalOtherSevCY, "TotalOtherSevCY")

        strSQL = strSQL & " SectionE='" & int & "'"
        strSQL = strSQL & " where UserName='" & UserName.Text & "'"

        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey(strSQL)
    End Sub
#Region "Newcode functions"
    Private Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String, Optional includeSQuote As Boolean = True, Optional includeComa As Boolean = True) As String
        Return IIf(txtBx.Text.Length > 0, dbField & " = " & IIf(includeSQuote, "'", "") & txtBx.Text & IIf(includeSQuote, "'", "") & IIf(includeComa, ",", ""), "")
    End Function
    Private Sub SetTextBoxValue(ByVal dbReaderValue As Object, ByVal txtBx As TextBox)
        If Not IsDBNull(dbReaderValue) And Len(dbReaderValue & "") > 0 Then
            txtBx.Text = dbReaderValue
        End If
    End Sub
#End Region
End Class
