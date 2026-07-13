Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionF
    'Inherits System.Web.UI.Page
    Inherits BasePage
    Public CurrentYear As String = GetYear()
    Public PreviousYear As String = GetYear() - 1
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
            '    SY3.Text = ConfigurationManager.AppSettings("year")
            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            SY3.Text = GetYear()

            rfvMedDirectorPY.ErrorMessage = "Medical Director FY" & PreviousYear & " is required"
            rfvMedDirectorCY.ErrorMessage = "Medical Director FY" & CurrentYear & " is required"
            rfvAdminPY.ErrorMessage = "Administrator FY" & PreviousYear & " is required"
            rfvAdminCY.ErrorMessage = "Administrator FY" & CurrentYear & " is required"
            '------------------------------------------------------------------------------
            '------------------------------------------------------------------------------

            LoadSurvey()
            msave.Visible = False
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
        Response.Redirect("SectionF2.aspx")
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
            If Len(DBReader("FTEDirNursing") & "") > 0 Then FTEDirNursing.Text = DBReader("FTEDirNursing")
            If Len(DBReader("TotEmployDirNursing") & "") > 0 Then TotEmployDirNursing.Text = DBReader("TotEmployDirNursing")
            If Len(DBReader("TotPRNDirNursing") & "") > 0 Then TotPRNDirNursing.Text = DBReader("TotPRNDirNursing")
            If Len(DBReader("TotSepDirNursing") & "") > 0 Then TotSepDirNursing.Text = DBReader("TotSepDirNursing")
            If Len(DBReader("FTEIndNursing") & "") > 0 Then FTEIndNursing.Text = DBReader("FTEIndNursing")
            If Len(DBReader("TotEmployIndNursing") & "") > 0 Then TotEmployIndNursing.Text = DBReader("TotEmployIndNursing")
            If Len(DBReader("TotPRNIndNursing") & "") > 0 Then TotPRNIndNursing.Text = DBReader("TotPRNIndNursing")
            If Len(DBReader("TotSepIndNursing") & "") > 0 Then TotSepIndNursing.Text = DBReader("TotSepIndNursing")
            If Len(DBReader("FTEPractNursing") & "") > 0 Then FTEPractNursing.Text = DBReader("FTEPractNursing")
            If Len(DBReader("TotEmployPractNursing") & "") > 0 Then TotEmployPractNursing.Text = DBReader("TotEmployPractNursing")
            If Len(DBReader("TotPRNPractNursing") & "") > 0 Then TotPRNPractNursing.Text = DBReader("TotPRNPractNursing")
            If Len(DBReader("TotSepPractNursing") & "") > 0 Then TotSepPractNursing.Text = DBReader("TotSepPractNursing")
            If Len(DBReader("FTESocial") & "") > 0 Then FTESocial.Text = DBReader("FTESocial")
            If Len(DBReader("TotEmploySocial") & "") > 0 Then TotEmploySocial.Text = DBReader("TotEmploySocial")
            If Len(DBReader("TotPRNSocial") & "") > 0 Then TotPRNSocial.Text = DBReader("TotPRNSocial")
            If Len(DBReader("TotSepSocial") & "") > 0 Then TotSepSocial.Text = DBReader("TotSepSocial")
            If Len(DBReader("FTEHHA") & "") > 0 Then FTEHHA.Text = DBReader("FTEHHA")
            If Len(DBReader("TotEmployHHA") & "") > 0 Then TotEmployHHA.Text = DBReader("TotEmployHHA")
            If Len(DBReader("TotPRNHHA") & "") > 0 Then TotPRNHHA.Text = DBReader("TotPRNHHA")
            If Len(DBReader("TotSepHHA") & "") > 0 Then TotSepHHA.Text = DBReader("TotSepHHA")
            If Len(DBReader("FTEMD") & "") > 0 Then FTEMD.Text = DBReader("FTEMD")
            If Len(DBReader("TotEmployMD") & "") > 0 Then TotEmployMD.Text = DBReader("TotEmployMD")
            If Len(DBReader("TotPRNMD") & "") > 0 Then TotPRNMD.Text = DBReader("TotPRNMD")
            If Len(DBReader("TotSepMD") & "") > 0 Then TotSepMD.Text = DBReader("TotSepMD")
            If Len(DBReader("FTEMDVol") & "") > 0 Then FTEMDVol.Text = DBReader("FTEMDVol")
            If Len(DBReader("TotEmployMDVol") & "") > 0 Then TotEmployMDVol.Text = DBReader("TotEmployMDVol")
            If Len(DBReader("TotPRNMDVol") & "") > 0 Then TotPRNMDVol.Text = DBReader("TotPRNMDVol")
            If Len(DBReader("TotSepMDVol") & "") > 0 Then TotSepMDVol.Text = DBReader("TotSepMDVol")
            If Len(DBReader("FTEChap") & "") > 0 Then FTEChap.Text = DBReader("FTEChap")
            If Len(DBReader("TotEmployChap") & "") > 0 Then TotEmployChap.Text = DBReader("TotEmployChap")
            If Len(DBReader("TotPRNChap") & "") > 0 Then TotPRNChap.Text = DBReader("TotPRNChap")
            If Len(DBReader("TotSepChap") & "") > 0 Then TotSepChap.Text = DBReader("TotSepChap")
            If Len(DBReader("FTEOtherClinical") & "") > 0 Then FTEOtherClinical.Text = DBReader("FTEOtherClinical")
            If Len(DBReader("TotEmployOtherClinical") & "") > 0 Then TotEmployOtherClinical.Text = DBReader("TotEmployOtherClinical")
            If Len(DBReader("TotPRNOtherClinical") & "") > 0 Then TotPRNOtherClinical.Text = DBReader("TotPRNOtherClinical")
            If Len(DBReader("TotSepOtherClinical") & "") > 0 Then TotSepOtherClinical.Text = DBReader("TotSepOtherClinical")
            If Len(DBReader("FTEBereavement") & "") > 0 Then FTEBereavement.Text = DBReader("FTEBereavement")
            If Len(DBReader("TotEmployBereavement") & "") > 0 Then TotEmployBereavement.Text = DBReader("TotEmployBereavement")
            If Len(DBReader("TotPRNBereavement") & "") > 0 Then TotPRNBereavement.Text = DBReader("TotPRNBereavement")
            If Len(DBReader("TotSepBereavement") & "") > 0 Then TotSepBereavement.Text = DBReader("TotSepBereavement")
            If Len(DBReader("FTEClinical") & "") > 0 Then FTEClinical.Text = DBReader("FTEClinical")
            If Len(DBReader("TotEmployClinical") & "") > 0 Then TotEmployClinical.Text = DBReader("TotEmployClinical")
            If Len(DBReader("TotPRNClinical") & "") > 0 Then TotPRNClinical.Text = DBReader("TotPRNClinical")
            If Len(DBReader("TotSepClinical") & "") > 0 Then TotSepClinical.Text = DBReader("TotSepClinical")
            If Len(DBReader("FTENonClinical") & "") > 0 Then FTENonClinical.Text = DBReader("FTENonClinical")
            If Len(DBReader("TotEmployNonClinical") & "") > 0 Then TotEmployNonClinical.Text = DBReader("TotEmployNonClinical")
            If Len(DBReader("TotPRNNonClinical") & "") > 0 Then TotPRNNonClinical.Text = DBReader("TotPRNNonClinical")
            If Len(DBReader("TotSepNonClinical") & "") > 0 Then TotSepNonClinical.Text = DBReader("TotSepNonClinical")
            If Len(DBReader("FTETotal") & "") > 0 Then FTETotal.Text = DBReader("FTETotal")
            If Len(DBReader("TotEmployTotal") & "") > 0 Then TotEmployTotal.Text = DBReader("TotEmployTotal")
            If Len(DBReader("TotPRNTotal") & "") > 0 Then TotPRNTotal.Text = DBReader("TotPRNTotal")
            If Len(DBReader("TotSepTotal") & "") > 0 Then TotSepTotal.Text = DBReader("TotSepTotal")
            'New code 07/12/2026
            'F1.a new column Total Staffing Agency FTEs
            SetTextBoxValue(DBReader("TotStaffingDirNursing"), TotStaffingDirNursing)
            SetTextBoxValue(DBReader("TotStaffingIndNursing"), TotStaffingIndNursing)
            SetTextBoxValue(DBReader("TotStaffingPractNursing"), TotStaffingPractNursing)
            SetTextBoxValue(DBReader("TotStaffingSocial"), TotStaffingSocial)
            SetTextBoxValue(DBReader("TotStaffingHHA"), TotStaffingHHA)
            SetTextBoxValue(DBReader("TotStaffingMD"), TotStaffingMD)
            SetTextBoxValue(DBReader("TotStaffingMDVol"), TotStaffingMDVol)
            SetTextBoxValue(DBReader("TotStaffingChap"), TotStaffingChap)
            SetTextBoxValue(DBReader("TotStaffingOtherClinical"), TotStaffingOtherClinical)
            SetTextBoxValue(DBReader("TotStaffingBereavement"), TotStaffingBereavement)
            'F1.b new column Total Staffing Agency FTEs
            SetTextBoxValue(DBReader("TotStaffingClinical"), TotStaffingClinical)
            SetTextBoxValue(DBReader("TotStaffingNonClinical"), TotStaffingNonClinical)
            SetTextBoxValue(DBReader("TotStaffingTotal"), TotStaffingTotal)
            'F1b-1. STAFFING AND SUPERVISION
            SetDropdownLstSelection(DBReader("MedDirectorPY"), dlstMedDirectorPY)
            SetDropdownLstSelection(DBReader("MedDirectorCY"), dLstMedDirectorCY)
            SetDropdownLstSelection(DBReader("AdminPY"), dLstAdminPY)
            SetDropdownLstSelection(DBReader("AdminCY"), dLstAdminCY)


        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Sub SaveSurvey(ByVal int As Integer)
        Dim strSQL As String = ""
        'Commented code - JS 
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        strSQL = "Update Survey SET "

        strSQL = strSQL & " FTEDirNursing='" & FTEDirNursing.Text & "',"
        strSQL = strSQL & " TotEmployDirNursing='" & TotEmployDirNursing.Text & "',"
        strSQL = strSQL & " TotPRNDirNursing='" & TotPRNDirNursing.Text & "',"
        strSQL = strSQL & " TotSepDirNursing='" & TotSepDirNursing.Text & "',"
        strSQL = strSQL & " FTEIndNursing='" & FTEIndNursing.Text & "',"
        strSQL = strSQL & " TotEmployIndNursing='" & TotEmployIndNursing.Text & "',"
        strSQL = strSQL & " TotPRNIndNursing='" & TotPRNIndNursing.Text & "',"
        strSQL = strSQL & " TotSepIndNursing='" & TotSepIndNursing.Text & "',"
        strSQL = strSQL & " FTEPractNursing='" & FTEPractNursing.Text & "',"
        strSQL = strSQL & " TotEmployPractNursing='" & TotEmployPractNursing.Text & "',"
        strSQL = strSQL & " TotPRNPractNursing='" & TotPRNPractNursing.Text & "',"
        strSQL = strSQL & " TotSepPractNursing='" & TotSepPractNursing.Text & "',"
        strSQL = strSQL & " FTESocial='" & FTESocial.Text & "',"
        strSQL = strSQL & " TotEmploySocial='" & TotEmploySocial.Text & "',"
        strSQL = strSQL & " TotPRNSocial='" & TotPRNSocial.Text & "',"
        strSQL = strSQL & " TotSepSocial='" & TotSepSocial.Text & "',"
        strSQL = strSQL & " FTEHHA='" & FTEHHA.Text & "',"
        strSQL = strSQL & " TotEmployHHA='" & TotEmployHHA.Text & "',"
        strSQL = strSQL & " TotPRNHHA='" & TotPRNHHA.Text & "',"
        strSQL = strSQL & " TotSepHHA='" & TotSepHHA.Text & "',"
        strSQL = strSQL & " FTEMD='" & FTEMD.Text & "',"
        strSQL = strSQL & " TotEmployMD='" & TotEmployMD.Text & "',"
        strSQL = strSQL & " TotPRNMD='" & TotPRNMD.Text & "',"
        strSQL = strSQL & " TotSepMD='" & TotSepMD.Text & "',"
        strSQL = strSQL & " FTEMDVol='" & FTEMDVol.Text & "',"
        strSQL = strSQL & " TotEmployMDVol='" & TotEmployMDVol.Text & "',"
        strSQL = strSQL & " TotPRNMDVol='" & TotPRNMDVol.Text & "',"
        strSQL = strSQL & " TotSepMDVol='" & TotSepMDVol.Text & "',"
        strSQL = strSQL & " FTEChap='" & FTEChap.Text & "',"
        strSQL = strSQL & " TotEmployChap='" & TotEmployChap.Text & "',"
        strSQL = strSQL & " TotPRNChap='" & TotPRNChap.Text & "',"
        strSQL = strSQL & " TotSepChap='" & TotSepChap.Text & "',"
        strSQL = strSQL & " FTEOtherClinical='" & FTEOtherClinical.Text & "',"
        strSQL = strSQL & " TotEmployOtherClinical='" & TotEmployOtherClinical.Text & "',"
        strSQL = strSQL & " TotPRNOtherClinical='" & TotPRNOtherClinical.Text & "',"
        strSQL = strSQL & " TotSepOtherClinical='" & TotSepOtherClinical.Text & "',"
        strSQL = strSQL & " FTEBereavement='" & FTEBereavement.Text & "',"
        strSQL = strSQL & " TotEmployBereavement='" & TotEmployBereavement.Text & "',"
        strSQL = strSQL & " TotPRNBereavement='" & TotPRNBereavement.Text & "',"
        strSQL = strSQL & " TotSepBereavement='" & TotSepBereavement.Text & "',"
        strSQL = strSQL & " FTEClinical='" & FTEClinical.Text & "',"
        strSQL = strSQL & " TotEmployClinical='" & TotEmployClinical.Text & "',"
        strSQL = strSQL & " TotPRNClinical='" & TotPRNClinical.Text & "',"
        strSQL = strSQL & " TotSepClinical='" & TotSepClinical.Text & "',"
        strSQL = strSQL & " FTENonClinical='" & FTENonClinical.Text & "',"
        strSQL = strSQL & " TotEmployNonClinical='" & TotEmployNonClinical.Text & "',"
        strSQL = strSQL & " TotPRNNonClinical='" & TotPRNNonClinical.Text & "',"
        strSQL = strSQL & " TotSepNonClinical='" & TotSepNonClinical.Text & "',"
        strSQL = strSQL & " FTETotal='" & FTETotal.Text & "',"
        strSQL = strSQL & " TotEmployTotal='" & TotEmployTotal.Text & "',"
        strSQL = strSQL & " TotPRNTotal='" & TotPRNTotal.Text & "',"
        strSQL = strSQL & " TotSepTotal='" & TotSepTotal.Text & "',"

        'New code 07/12/2026
        'F1.a new column Total Staffing Agency FTEs
        strSQL = strSQL & MapTextValueField(TotStaffingDirNursing, "TotStaffingDirNursing", False)
        strSQL = strSQL & MapTextValueField(TotStaffingIndNursing, "TotStaffingIndNursing", False)
        strSQL = strSQL & MapTextValueField(TotStaffingPractNursing, "TotStaffingPractNursing", False)
        strSQL = strSQL & MapTextValueField(TotStaffingSocial, "TotStaffingSocial", False)
        strSQL = strSQL & MapTextValueField(TotStaffingHHA, "TotStaffingHHA", False)
        strSQL = strSQL & MapTextValueField(TotStaffingMD, "TotStaffingMD", False)
        strSQL = strSQL & MapTextValueField(TotStaffingMDVol, "TotStaffingMDVol", False)
        strSQL = strSQL & MapTextValueField(TotStaffingChap, "TotStaffingChap", False)
        strSQL = strSQL & MapTextValueField(TotStaffingOtherClinical, "TotStaffingOtherClinical", False)
        strSQL = strSQL & MapTextValueField(TotStaffingBereavement, "TotStaffingBereavement", False)
        'F1.b new column Total Staffing Agency FTEs
        strSQL = strSQL & MapTextValueField(TotStaffingClinical, "TotStaffingClinical", False)
        strSQL = strSQL & MapTextValueField(TotStaffingNonClinical, "TotStaffingNonClinical", False)
        strSQL = strSQL & MapTextValueField(TotStaffingTotal, "TotStaffingTotal", False)
        'F1b-1. STAFFING AND SUPERVISION
        strSQL = strSQL & " MedDirectorPY = '" & dlstMedDirectorPY.SelectedValue & "',"
        strSQL = strSQL & " MedDirectorCY = '" & dLstMedDirectorCY.SelectedValue & "',"
        strSQL = strSQL & " AdminPY = '" & dLstAdminPY.SelectedValue & "',"
        strSQL = strSQL & " AdminCY = '" & dLstAdminCY.SelectedValue & "',"

        strSQL = strSQL & " SectionF='" & int & "'"
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
    Private Sub SetDropdownLstSelection(ByVal dbReaderValue As Object, ByVal ddList As DropDownList)
        If Not IsDBNull(dbReaderValue) Then
            ddList.Items.FindByValue(dbReaderValue).Selected = True
        End If
    End Sub
#End Region
End Class
