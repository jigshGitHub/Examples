Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionC2
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
            '    'SY3.Text = ConfigurationManager.AppSettings("year")
            '    'SY4.Text = ConfigurationManager.AppSettings("year")
            '    'SY5.Text = ConfigurationManager.AppSettings("year")
            '    'SY6.Text = ConfigurationManager.AppSettings("year")
            '    'SY7.Text = ConfigurationManager.AppSettings("year")
            '    'SY8.Text = ConfigurationManager.AppSettings("year")
            '    'SY9.Text = ConfigurationManager.AppSettings("year")
            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            '------------------------------------------------------------------------------
            '------------------------------------------------------------------------------
            Panel_ADC.Visible = False
            Panel_ALOS.Visible = False
            LoadSurvey()
            LoadCerti()
            msave.Visible = False
        End If
    End Sub
    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect("menu.aspx")
    End Sub

    Protected Sub btnMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMenu.Click
        SaveSurvey(1)
        SaveSectionC(1)
        msave.Visible = True
    End Sub

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        Response.Redirect("SectionD1.aspx")
    End Sub
    Sub LoadCerti()
        'Commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        DBReader.Read()
        If Len(DBReader("Certification1") & "") > 0 Then
            Certi1.Text = DBReader("Certification1")
            If Certi1.Text = "True" Then
                btnMenu.Enabled = False
            End If
        End If
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub
    Sub LoadSurvey()
        'Commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM PatientVolume_c2 where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim patientVolumeDB As PatientVolumeDBLayer = New PatientVolumeDBLayer()
        Dim DBReader = patientVolumeDB.GetC2ByUserName(UserName.Text)
        While DBReader.Read()

            If Len(DBReader("TotReferrals") & "") > 0 Then TotReferrals.Text = DBReader("TotReferrals")
            If Len(DBReader("RefSourceMD") & "") > 0 Then RefSourceMD.Text = DBReader("RefSourceMD")
            If Len(DBReader("RefSourceHosp") & "") > 0 Then RefSourceHosp.Text = DBReader("RefSourceHosp")
            If Len(DBReader("RefSourceNF") & "") > 0 Then RefSourceNF.Text = DBReader("RefSourceNF")
            If Len(DBReader("RefSourceALF") & "") > 0 Then RefSourceALF.Text = DBReader("RefSourceALF")
            If Len(DBReader("RefSourceHH") & "") > 0 Then RefSourceHH.Text = DBReader("RefSourceHH")
            If Len(DBReader("RefSourceSelf") & "") > 0 Then RefSourceSelf.Text = DBReader("RefSourceSelf")
            If Len(DBReader("RefSourceOther") & "") > 0 Then RefSourceOther.Text = DBReader("RefSourceOther")

            'NewsStyleUriParser code 07/08/2026
            SetTextBoxValue(DBReader("RefSourceOtherSpecify"), RefSourceOtherSpecify)
            SetTextBoxValue(DBReader("PalCareProvider"), PalCareProvider)

            'SOCIAL DETERMINANTS OF HEALTH & COMMUNITY REFERRALS Data
            SetRadiobuttonLstSelection(DBReader("IsSocialDetermin"), rblRefYN)
            pnlSocialRefferal.Visible = rblRefYN.SelectedValue
            chkHousing.Checked = DBReader("IsHousing")
            SetTextBoxValue(DBReader("HousingOrg"), txtHousing)
            SetTextBox(txtHousing, rfvHousing, chkHousing.Checked)
            chkFood.Checked = DBReader("IsFood")
            SetTextBoxValue(DBReader("IsFoodOrg"), txtFood)
            SetTextBox(txtFood, rfvFood, chkFood.Checked)
            chkTransport.Checked = DBReader("IsTransport")
            SetTextBoxValue(DBReader("IsTransportOrg"), txtTransport)
            SetTextBox(txtTransport, rfvTransport, chkTransport.Checked)
            chkUtilities.Checked = DBReader("IsUtilities")
            SetTextBoxValue(DBReader("IsUtilitiesOrg"), txtUtilities)
            SetTextBox(txtUtilities, rfvUtilities, chkUtilities.Checked)
            chkSafety.Checked = DBReader("IsInterSafety")
            SetTextBoxValue(DBReader("IsInterSafetyOrg"), txtSafety)
            SetTextBox(txtSafety, rfvSafety, chkSafety.Checked)
            chkIsolation.Checked = DBReader("IsSocialIsolation")
            SetTextBoxValue(DBReader("IsSocialIsolationOrg"), txtIsolation)
            SetTextBox(txtIsolation, rfvIsolation, chkIsolation.Checked)
            chkLiteracy.Checked = DBReader("IsLiteracy")
            SetTextBoxValue(DBReader("IsLiteracyOrg"), txtLiteracy)
            SetTextBox(txtLiteracy, rfvLiteracy, chkLiteracy.Checked)
            chkSocialOther.Checked = DBReader("IsSocialNeedOther")
            SetTextBoxValue(DBReader("IsSocialNeedOtherOrg"), txtSocialOther)
            SetTextBox(txtSocialOther, rfvSocialOther, chkSocialOther.Checked)
            SetTextBoxValue(DBReader("SocialNeedOtherSpec"), txtSocialNeedOtherSpec)
            SetTextBox(txtSocialNeedOtherSpec, rfvSocialNeedOtherSpec, chkSocialOther.Checked)

            'INCOMPLETE REFERRALS- REASONS FOR FORGONE CARE
            chkClinical.Checked = DBReader("IsClinical")
            SetTextBoxValue(DBReader("ClinicalPatients"), txtClinical)
            SetTextBox(txtClinical, rfvClinical, chkClinical.Checked)
            chkFamilyPref.Checked = DBReader("IsFamilyPref")
            SetTextBoxValue(DBReader("FamilyPrefPatients"), txtFamilyPref)
            SetTextBox(txtFamilyPref, rfvFamilyPref, chkFamilyPref.Checked)
            chkAdminBarrier.Checked = DBReader("IsAdminBarrier")
            SetTextBoxValue(DBReader("AdminBarrierPatients"), txtAdminBarrier)
            SetTextBox(txtAdminBarrier, rfvAdminBarrier, chkAdminBarrier.Checked)
            chkDied.Checked = DBReader("IsDied")
            SetTextBoxValue(DBReader("DiedPatients"), txtDied)
            SetTextBox(txtDied, rfvDied, chkDied.Checked)
            chkFinancial.Checked = DBReader("IsFinancial")
            SetTextBoxValue(DBReader("FinancialPatients"), txtFinancial)
            SetTextBox(txtFinancial, rfvFinancial, chkFinancial.Checked)
            SetTextBoxValue(DBReader("TotalForgonePatients"), txtTotalForgonePatients)

            SetTextBoxValue(DBReader("Died179"), txtDied179)
            SetTextBoxValue(DBReader("NoInsurancePatients"), txtNoInsPatients)
            SetTextBoxValue(DBReader("OccupancyRate"), txtOccupancyRate)


            If Len(DBReader("ADC") & "") > 0 Then ADC.Text = DBReader("ADC")
            If Len(DBReader("ALOS") & "") > 0 Then ALOS.Text = DBReader("ALOS")
            If Len(DBReader("MLOS") & "") > 0 Then MLOS.Text = DBReader("MLOS")
            If Len(DBReader("Died7") & "") > 0 Then Died7.Text = DBReader("Died7")
            If Len(DBReader("Died180") & "") > 0 Then Died180.Text = DBReader("Died180")
            'SerDelProgram.ClearSelection()
            'If Len(DBReader("SerDelProgram") & "") > 0 Then
            '    SerDelProgram.Items.FindByValue(DBReader("SerDelProgram")).Selected = True
            '    If DBReader("SerDelProgram") = "1" Or DBReader("SerDelProgram") = "2" Then
            '        Panel_C1.Visible = True
            '        If Len(DBReader("ActProgPalliative") & "") > 0 Then
            '            If DBReader("ActProgPalliative") = 1 Then
            '                ActProgPalliative.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("AdmitPalliative") & "") > 0 Then AdmitPalliative.Text = DBReader("AdmitPalliative")
            '        If Len(DBReader("DeathPalliative") & "") > 0 Then DeathPalliative.Text = DBReader("DeathPalliative")
            '        If Len(DBReader("PlanningPalliative") & "") > 0 Then
            '            If DBReader("PlanningPalliative") = 1 Then
            '                PlanningPalliative.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("ActProgHomeHealth") & "") > 0 Then
            '            If DBReader("ActProgHomeHealth") = 1 Then
            '                ActProgHomeHealth.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("AdmitHomeHealth") & "") > 0 Then AdmitHomeHealth.Text = DBReader("AdmitHomeHealth")
            '        If Len(DBReader("DeathHomeHealth") & "") > 0 Then DeathHomeHealth.Text = DBReader("DeathHomeHealth")
            '        If Len(DBReader("PlanningHomeHealth") & "") > 0 Then
            '            If DBReader("PlanningHomeHealth") = 1 Then
            '                PlanningHomeHealth.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("ActProgPreHospice") & "") > 0 Then
            '            If DBReader("ActProgPreHospice") = 1 Then
            '                ActProgPreHospice.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("AdmitPreHospice") & "") > 0 Then AdmitPreHospice.Text = DBReader("AdmitPreHospice")
            '        If Len(DBReader("DeathPreHospice") & "") > 0 Then DeathPreHospice.Text = DBReader("DeathPreHospice")
            '        If Len(DBReader("PlanningPreHospice") & "") > 0 Then
            '            If DBReader("PlanningPreHospice") = 1 Then
            '                PlanningPreHospice.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("ActProgGriefCounseling") & "") > 0 Then
            '            If DBReader("ActProgGriefCounseling") = 1 Then
            '                ActProgGriefCounseling.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("AdmitGriefCounseling") & "") > 0 Then AdmitGriefCounseling.Text = DBReader("AdmitGriefCounseling")
            '        If Len(DBReader("DeathGriefCounseling") & "") > 0 Then DeathGriefCounseling.Text = DBReader("DeathGriefCounseling")
            '        If Len(DBReader("PlanningGriefCounseling") & "") > 0 Then
            '            If DBReader("PlanningGriefCounseling") = 1 Then
            '                PlanningGriefCounseling.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("ActProgOther1") & "") > 0 Then
            '            If DBReader("ActProgOther1") = 1 Then
            '                ActProgOther1.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("AdmitOther1") & "") > 0 Then AdmitOther1.Text = DBReader("AdmitOther1")
            '        If Len(DBReader("DeathOther1") & "") > 0 Then DeathOther1.Text = DBReader("DeathOther1")
            '        If Len(DBReader("PlanningOther1") & "") > 0 Then
            '            If DBReader("PlanningOther1") = 1 Then
            '                PlanningOther1.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("ActProgOther2") & "") > 0 Then
            '            If DBReader("ActProgOther2") = 1 Then
            '                ActProgOther2.Checked = True
            '            End If
            '        End If

            '        If Len(DBReader("AdmitOther2") & "") > 0 Then AdmitOther2.Text = DBReader("AdmitOther2")
            '        If Len(DBReader("DeathOther2") & "") > 0 Then DeathOther2.Text = DBReader("DeathOther2")
            '        If Len(DBReader("PlanningOther2") & "") > 0 Then
            '            If DBReader("PlanningOther2") = 1 Then
            '                PlanningOther2.Checked = True
            '            End If
            '        End If
            '        If Len(DBReader("AltServProgOther1") & "") > 0 Then AltServProgOther1.Text = DBReader("AltServProgOther1")
            '        If Len(DBReader("AltServProgOther2") & "") > 0 Then AltServProgOther2.Text = DBReader("AltServProgOther2")
            '    Else
            '        Panel_C1.Visible = False
            '    End If
            'Else
            '    Panel_C1.Visible = False
            'End If


        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        patientVolumeDB.TerminateDBOperation()
    End Sub
    Sub SaveSectionC(ByVal int As Integer)
        'Commented code - JS 
        'Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Update Survey set SectionC2='" & int & "' WHERE Username='" & UserName.Text & "'"

        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey("Update Survey set SectionC2='" & int & "' WHERE Username='" & UserName.Text & "'")
    End Sub

    Sub SaveSurvey(ByVal int As Integer)
        'Commented code - JS 
        'Dim intCount As Integer
        'Dim success As Integer = 1
        'Dim SQLinsert As String = "INSERT INTO PatientVolume_c2 (UserName, TotReferrals, RefSourceMD, RefSourceHosp, RefSourceNF, RefSourceALF, "
        'SQLinsert = SQLinsert + "RefSourceHH, RefSourceSelf, RefSourceOther, ADC, ALOS, MLOS, Died7, Died180)"
        ''SQLinsert = SQLinsert + "AdmitPalliative, PlanningHomeHealth, "
        ''SQLinsert = SQLinsert + "ActProgPreHospice, AdmitPreHospice, DeathPreHospice, PlanningPreHospice, ActProgGriefCounseling, AdmitGriefCounseling, DeathGriefCounseling, "
        ''SQLinsert = SQLinsert + "PlanningGriefCounseling, ActProgOther1, AdmitOther1, DeathOther1, PlanningOther1, ActProgOther2, AdmitOther2, DeathOther2, "
        ''SQLinsert = SQLinsert + "PlanningOther2, AltServProgOther1, AltServProgOther2)"
        'SQLinsert = SQLinsert + " VALUES (@UserName, @TotReferrals, @RefSourceMD, @RefSourceHosp, @RefSourceNF, @RefSourceALF, "
        'SQLinsert = SQLinsert + "@RefSourceHH, @RefSourceSelf, @RefSourceOther, @ADC, @ALOS, @MLOS, @Died7, @Died180)"
        ''SQLinsert = SQLinsert + "@AdmitPalliative, @PlanningHomeHealth, "
        ''SQLinsert = SQLinsert + "@ActProgPreHospice, @AdmitPreHospice, @DeathPreHospice, @PlanningPreHospice, @ActProgGriefCounseling, @AdmitGriefCounseling, @DeathGriefCounseling, "
        ''SQLinsert = SQLinsert + "@PlanningGriefCounseling, @ActProgOther1, @AdmitOther1, @DeathOther1, @PlanningOther1, @ActProgOther2, @AdmitOther2, @DeathOther2, "
        ''SQLinsert = SQLinsert + "@PlanningOther2, @AltServProgOther1, @AltServProgOther2)"
        'Dim SQLexist As String = "SELECT COUNT(*) FROM PatientVolume_c2 WHERE UserName='" & UserName.Text & "'"
        Dim SQLupdate As String
        'Dim cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'cnn.Open()
        'Using cmdinsert As New SqlCommand(SQLinsert, cnn)
        '    Using cmdexist As New SqlCommand(SQLexist, cnn)
        'cmdexist.Parameters.Clear()
        'intCount = cmdexist.ExecuteScalar()
        Dim patientVolumeDB As PatientVolumeDBLayer = New PatientVolumeDBLayer()
        Dim dbReader = patientVolumeDB.GetC2ByUserName(UserName.Text)
        'If (intCount = 0) Then
        If Not dbReader.HasRows() Then
            'cmdinsert.Parameters.Clear()
            'cmdinsert.Parameters.AddWithValue("@UserName", UserName.Text)
            'cmdinsert.Parameters.AddWithValue("@TotReferrals", TotReferrals.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceMD", RefSourceMD.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceHosp", RefSourceHosp.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceNF", RefSourceNF.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceALF", RefSourceALF.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceHH", RefSourceHH.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceSelf", RefSourceSelf.Text)
            'cmdinsert.Parameters.AddWithValue("@RefSourceOther", RefSourceOther.Text)
            'cmdinsert.Parameters.AddWithValue("@ADC", ADC.Text)
            'cmdinsert.Parameters.AddWithValue("@ALOS", ALOS.Text)
            'cmdinsert.Parameters.AddWithValue("@MLOS", MLOS.Text)
            'cmdinsert.Parameters.AddWithValue("@Died7", Died7.Text)
            'cmdinsert.Parameters.AddWithValue("@Died180", Died180.Text)
            ''cmdinsert.Parameters.AddWithValue("@SerDelProgram", SerDelProgram.SelectedValue)
            ''If ActProgPalliative.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@ActProgPalliative", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@ActProgPalliative", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AdmitPalliative", AdmitPalliative.Text)
            ''cmdinsert.Parameters.AddWithValue("@DeathPalliative", DeathPalliative.Text)
            ''If PlanningPalliative.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@PlanningPalliative", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@PlanningPalliative", "0")
            ''End If
            ''If ActProgHomeHealth.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@ActProgHomeHealth", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@ActProgHomeHealth", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AdmitHomeHealth", AdmitHomeHealth.Text)
            ''cmdinsert.Parameters.AddWithValue("@DeathHomeHealth", DeathHomeHealth.Text)
            ''If PlanningHomeHealth.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@PlanningHomeHealth", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@PlanningHomeHealth", "0")
            ''End If
            ''If ActProgPreHospice.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@ActProgPreHospice", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@ActProgPreHospice", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AdmitPreHospice", AdmitPreHospice.Text)
            ''cmdinsert.Parameters.AddWithValue("@DeathPreHospice", DeathPreHospice.Text)
            ''If PlanningPreHospice.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@PlanningPreHospice", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@PlanningPreHospice", "0")
            ''End If
            ''If ActProgGriefCounseling.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@ActProgGriefCounseling", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@ActProgGriefCounseling", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AdmitGriefCounseling", AdmitGriefCounseling.Text)
            ''cmdinsert.Parameters.AddWithValue("@DeathGriefCounseling", DeathGriefCounseling.Text)
            ''If PlanningGriefCounseling.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@PlanningGriefCounseling", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@PlanningGriefCounseling", "0")
            ''End If
            ''If ActProgOther1.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@ActProgOther1", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@ActProgOther1", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AdmitOther1", AdmitOther1.Text)
            ''cmdinsert.Parameters.AddWithValue("@DeathOther1", DeathOther1.Text)
            ''If PlanningOther1.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@PlanningOther1", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@PlanningOther1", "0")
            ''End If
            ''If ActProgOther2.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@ActProgOther2", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@ActProgOther2", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AdmitOther2", AdmitOther2.Text)
            ''cmdinsert.Parameters.AddWithValue("@DeathOther2", DeathOther2.Text)
            ''If PlanningOther2.Checked = True Then
            ''    cmdinsert.Parameters.AddWithValue("@PlanningOther2", "1")
            ''Else
            ''    cmdinsert.Parameters.AddWithValue("@PlanningOther2", "0")
            ''End If
            ''cmdinsert.Parameters.AddWithValue("@AltServProgOther1", AltServProgOther1.Text)
            ''cmdinsert.Parameters.AddWithValue("@AltServProgOther2", AltServProgOther2.Text)

            'cmdinsert.ExecuteNonQuery()
            patientVolumeDB.InsertPatientVolume_c2(UserName.Text, TotReferrals.Text, RefSourceMD.Text, RefSourceHosp.Text, RefSourceNF.Text, RefSourceALF.Text, RefSourceHH.Text, RefSourceSelf.Text, RefSourceOther.Text, ADC.Text, ALOS.Text, MLOS.Text, Died7.Text, Died180.Text,
                                                RefSourceOtherSpecify.Text, PalCareProvider.Text, rblRefYN.SelectedValue, chkHousing.Checked, txtHousing.Text,
                                                chkFood.Checked, txtFood.Text, chkTransport.Checked, txtTransport.Text, chkUtilities.Checked, txtUtilities.Text,
                                                chkSafety.Checked, txtSafety.Text, chkIsolation.Checked, txtIsolation.Text, chkLiteracy.Checked, txtLiteracy.Text,
                                                chkSocialOther.Checked, txtSocialNeedOtherSpec.Text, txtSocialOther.Text,
                                                chkClinical.Checked, txtClinical.Text, chkFamilyPref.Checked,
                                                txtFamilyPref.Text, chkAdminBarrier.Checked, txtAdminBarrier.Text,
                                                chkDied.Checked, txtDied.Text, chkFinancial.Checked, txtFinancial.Text,
                                                txtTotalForgonePatients.Text,
                                                txtDied179.Text, txtNoInsPatients.Text, txtOccupancyRate.Text)
        Else
            'exists already - just update record

            SQLupdate = "Update PatientVolume_c2 SET "
            SQLupdate = SQLupdate & " RefSourceMD='" & RefSourceMD.Text & "',"
            SQLupdate = SQLupdate & " RefSourceHosp='" & RefSourceHosp.Text & "',"
            SQLupdate = SQLupdate & " RefSourceNF='" & RefSourceNF.Text & "',"
            SQLupdate = SQLupdate & " RefSourceALF='" & RefSourceALF.Text & "',"
            SQLupdate = SQLupdate & " RefSourceHH='" & RefSourceHH.Text & "',"
            SQLupdate = SQLupdate & " RefSourceSelf='" & RefSourceSelf.Text & "',"
            SQLupdate = SQLupdate & " RefSourceOther='" & RefSourceOther.Text & "',"
            SQLupdate = SQLupdate & " ADC='" & ADC.Text & "',"
            SQLupdate = SQLupdate & " ALOS='" & ALOS.Text & "',"
            SQLupdate = SQLupdate & " MLOS='" & MLOS.Text & "',"
            SQLupdate = SQLupdate & " Died7='" & Died7.Text & "',"
            SQLupdate = SQLupdate & " Died180='" & Died180.Text & "',"
            'SQLupdate = SQLupdate & " SerDelProgram='" & SerDelProgram.SelectedItem.Value & "',"

            'If ActProgPalliative.Checked = True Then
            '    SQLupdate = SQLupdate & " ActProgPalliative='1',"
            'Else
            '    SQLupdate = SQLupdate & " ActProgPalliative='0',"
            'End If
            'SQLupdate = SQLupdate & " AdmitPalliative='" & AdmitPalliative.Text & "',"
            'SQLupdate = SQLupdate & " DeathPalliative='" & DeathPalliative.Text & "',"
            'If PlanningPalliative.Checked = True Then
            '    SQLupdate = SQLupdate & " PlanningPalliative='1',"
            'Else
            '    SQLupdate = SQLupdate & " PlanningPalliative='0',"
            'End If

            'If ActProgHomeHealth.Checked = True Then
            '    SQLupdate = SQLupdate & " ActProgHomeHealth='1',"
            'Else
            '    SQLupdate = SQLupdate & " ActProgHomeHealth='0',"
            'End If
            'SQLupdate = SQLupdate & " AdmitHomeHealth='" & AdmitHomeHealth.Text & "',"
            'SQLupdate = SQLupdate & " DeathHomeHealth='" & DeathHomeHealth.Text & "',"
            'If PlanningHomeHealth.Checked = True Then
            '    SQLupdate = SQLupdate & " PlanningHomeHealth='1',"
            'Else
            '    SQLupdate = SQLupdate & " PlanningHomeHealth='0',"
            'End If

            'If ActProgPreHospice.Checked = True Then
            '    SQLupdate = SQLupdate & " ActProgPreHospice='1',"
            'Else
            '    SQLupdate = SQLupdate & " ActProgPreHospice='0',"
            'End If
            'SQLupdate = SQLupdate & " AdmitPreHospice='" & AdmitPreHospice.Text & "',"
            'SQLupdate = SQLupdate & " DeathPreHospice='" & DeathPreHospice.Text & "',"
            'If PlanningPreHospice.Checked = True Then
            '    SQLupdate = SQLupdate & " PlanningPreHospice='1',"
            'Else
            '    SQLupdate = SQLupdate & " PlanningPreHospice='0',"
            'End If

            'If ActProgGriefCounseling.Checked = True Then
            '    SQLupdate = SQLupdate & " ActProgGriefCounseling='1',"
            'Else
            '    SQLupdate = SQLupdate & " ActProgGriefCounseling='0',"
            'End If
            'SQLupdate = SQLupdate & " AdmitGriefCounseling='" & AdmitGriefCounseling.Text & "',"
            'SQLupdate = SQLupdate & " DeathGriefCounseling='" & DeathGriefCounseling.Text & "',"
            'If PlanningGriefCounseling.Checked = True Then
            '    SQLupdate = SQLupdate & " PlanningGriefCounseling='1',"
            'Else
            '    SQLupdate = SQLupdate & " PlanningGriefCounseling='0',"
            'End If

            'If ActProgOther1.Checked = True Then
            '    SQLupdate = SQLupdate & " ActProgOther1='1',"
            'Else
            '    SQLupdate = SQLupdate & " ActProgOther1='0',"
            'End If
            'SQLupdate = SQLupdate & " AdmitOther1='" & AdmitOther1.Text & "',"
            'SQLupdate = SQLupdate & " DeathOther1='" & DeathOther1.Text & "',"
            'If PlanningOther1.Checked = True Then
            '    SQLupdate = SQLupdate & " PlanningOther1='1',"
            'Else
            '    SQLupdate = SQLupdate & " PlanningOther1='0',"
            'End If

            'If ActProgOther2.Checked = True Then
            '    SQLupdate = SQLupdate & " ActProgOther2='1',"
            'Else
            '    SQLupdate = SQLupdate & " ActProgOther2='0',"
            'End If
            'SQLupdate = SQLupdate & " AdmitOther2='" & AdmitOther2.Text & "',"
            'SQLupdate = SQLupdate & " DeathOther2='" & DeathOther2.Text & "',"
            'If PlanningOther2.Checked = True Then
            '    SQLupdate = SQLupdate & " PlanningOther2='1',"
            'Else
            '    SQLupdate = SQLupdate & " PlanningOther2='0',"
            'End If
            'SQLupdate = SQLupdate & " AltServProgOther1='" & AltServProgOther1.Text & "',"
            'SQLupdate = SQLupdate & " AltServProgOther2='" & AltServProgOther2.Text & "',"

            SQLupdate = SQLupdate & " TotReferrals='" & TotReferrals.Text & "',"

            SQLupdate = SQLupdate & MapTextValueField(RefSourceOtherSpecify, "RefSourceOtherSpecify")
            SQLupdate = SQLupdate & MapTextValueField(PalCareProvider, "PalCareProvider")
            SQLupdate = SQLupdate & " IsSocialDetermin ='" & rblRefYN.SelectedValue & "',"
            SQLupdate = SQLupdate & " IsHousing ='" & chkHousing.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtHousing, "HousingOrg")
            SQLupdate = SQLupdate & " IsFood ='" & chkFood.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtFood, "IsFoodOrg")
            SQLupdate = SQLupdate & " IsTransport ='" & chkTransport.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtTransport, "IsTransportOrg")
            SQLupdate = SQLupdate & " IsUtilities ='" & chkUtilities.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtUtilities, "IsUtilitiesOrg")
            SQLupdate = SQLupdate & " IsInterSafety ='" & chkSafety.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtSafety, "IsInterSafetyOrg")
            SQLupdate = SQLupdate & " IsSocialIsolation ='" & chkIsolation.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtIsolation, "IsSocialIsolationOrg")
            SQLupdate = SQLupdate & " IsLiteracy ='" & chkLiteracy.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtLiteracy, "IsLiteracyOrg")
            SQLupdate = SQLupdate & " IsSocialNeedOther ='" & chkSocialOther.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtSocialOther, "IsSocialNeedOtherOrg")
            SQLupdate = SQLupdate & MapTextValueField(txtSocialNeedOtherSpec, "SocialNeedOtherSpec")
            SQLupdate = SQLupdate & " IsClinical ='" & chkClinical.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtClinical, "ClinicalPatients")
            SQLupdate = SQLupdate & " IsFamilyPref ='" & chkFamilyPref.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtFamilyPref, "FamilyPrefPatients")
            SQLupdate = SQLupdate & " IsAdminBarrier ='" & chkAdminBarrier.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtAdminBarrier, "AdminBarrierPatients")
            SQLupdate = SQLupdate & " IsDied ='" & chkDied.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtDied, "DiedPatients")
            SQLupdate = SQLupdate & " IsFinancial ='" & chkFinancial.Checked & "',"
            SQLupdate = SQLupdate & MapTextValueField(txtFinancial, "FinancialPatients")
            SQLupdate = SQLupdate & MapTextValueField(txtTotalForgonePatients, "TotalForgonePatients")
            SQLupdate = SQLupdate & MapTextValueField(txtDied179, "Died179")
            SQLupdate = SQLupdate & MapTextValueField(txtNoInsPatients, "NoInsurancePatients")
            SQLupdate = SQLupdate & MapTextValueField(txtOccupancyRate, "OccupancyRate", False)

            SQLupdate = SQLupdate & " where UserName='" & UserName.Text & "'"

            'Using cmdupdate As New SqlCommand(SQLupdate, cnn)
            '    cmdupdate.ExecuteNonQuery()
            '    cmdupdate.Dispose()
            'End Using
            patientVolumeDB.UpdatePatientVolume(SQLupdate)
        End If
        '        cmdexist.Dispose()
        '    End Using
        '    cmdinsert.Dispose()
        'End Using
        'cnn.Close()
    End Sub

    'Protected Sub SerDelProgram_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles SerDelProgram.SelectedIndexChanged
    '    If SerDelProgram.SelectedItem.Value = "1" Or SerDelProgram.SelectedItem.Value = "2" Then
    '        Panel_C1.Visible = True
    '    Else
    '        Panel_C1.Visible = False
    '    End If
    'End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Dim vADC As Double = Val(xADC.Text)
        Dim rADC As Double = Math.Round(vADC / 365, 2)
        ADC.Text = rADC
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As System.EventArgs) Handles LinkButton1.Click
        If Panel_ADC.Visible = False Then
            Panel_ADC.Visible = True
            LinkButton1.Text = "Hide Calculator"
        Else
            Panel_ADC.Visible = False
            LinkButton1.Text = "Use Calculator"
            xADC.Text = ""
        End If
    End Sub


    Protected Sub LinkButton2_Click(sender As Object, e As System.EventArgs) Handles LinkButton2.Click
        If Panel_ALOS.Visible = False Then
            Panel_ALOS.Visible = True
            LinkButton2.Text = "Hide Calculator"
        Else
            Panel_ALOS.Visible = False
            LinkButton2.Text = "Use Calculator"
            ALOS_Days.Text = ""
            ALOS_DD.Text = ""
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        Dim vALOS_Days As Double = Val(ALOS_Days.Text)
        Dim vALOS_DD As Double = Val(ALOS_DD.Text)
        Dim rALOS As Double = Math.Round(vALOS_Days / vALOS_DD, 2)
        ALOS.Text = rALOS
    End Sub
    'New code 07/08/2026
#Region "Newcode functions"
    Private Sub SetTextBoxValue(ByVal dbReaderValue As Object, ByVal txtBx As TextBox)
        If Not IsDBNull(dbReaderValue) And Len(dbReaderValue & "") > 0 Then
            txtBx.Text = dbReaderValue
        End If
    End Sub
    Private Sub SetCheckboxSelection(ByVal dbReaderValue As Object, ByVal chkBx As CheckBox)
        If Not IsDBNull(dbReaderValue) Then
            chkBx.Checked = dbReaderValue
        End If
    End Sub
    Private Sub SetRadiobuttonLstSelection(ByVal dbReaderValue As Object, ByVal rbList As RadioButtonList)
        If Not IsDBNull(dbReaderValue) Then
            rbList.Items.FindByValue(dbReaderValue).Selected = True
        End If
    End Sub
    Private Sub SetDropdownLstSelection(ByVal dbReaderValue As Object, ByVal ddList As DropDownList)
        If Not IsDBNull(dbReaderValue) Then
            ddList.Items.FindByValue(dbReaderValue).Selected = True
        End If
    End Sub
    Private Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String, Optional includeComa As Boolean = True) As String
        Return IIf(txtBx.Text.Length > 0, dbField & " = '" & txtBx.Text & "'" & IIf(includeComa, ",", ""), "")
    End Function

    Private Sub SetTextBox(ByVal textBx As TextBox, ByVal rfv As RequiredFieldValidator, ByVal isEnabled As Boolean)
        textBx.Enabled = isEnabled
        textBx.Style("background-color") = IIf(isEnabled, "#FFFFFF", "#CCCCCC")
        rfv.Enabled = isEnabled
    End Sub
    Protected Sub rblRefYN_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rblRefYN.SelectedIndexChanged
        pnlSocialRefferal.Visible = rblRefYN.SelectedValue
    End Sub
    Protected Sub chkHousing_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkHousing.CheckedChanged
        SetTextBox(txtHousing, rfvHousing, chkHousing.Checked)
    End Sub
    Protected Sub chkFood_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkFood.CheckedChanged
        SetTextBox(txtFood, rfvFood, chkFood.Checked)
    End Sub
    Protected Sub chkTransport_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkTransport.CheckedChanged
        SetTextBox(txtTransport, rfvTransport, chkTransport.Checked)
    End Sub
    Protected Sub chkUtilities_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkUtilities.CheckedChanged
        SetTextBox(txtUtilities, rfvUtilities, chkUtilities.Checked)
    End Sub
    Protected Sub chkSafety_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkSafety.CheckedChanged
        SetTextBox(txtSafety, rfvSafety, chkSafety.Checked)
    End Sub
    Protected Sub chkIsolation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkIsolation.CheckedChanged
        SetTextBox(txtIsolation, rfvIsolation, chkIsolation.Checked)
    End Sub
    Protected Sub Literacy_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkLiteracy.CheckedChanged
        SetTextBox(txtLiteracy, rfvLiteracy, chkLiteracy.Checked)
    End Sub
    Protected Sub chkSocialOther_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkSocialOther.CheckedChanged
        SetTextBox(txtSocialOther, rfvSocialOther, chkSocialOther.Checked)
        SetTextBox(txtSocialNeedOtherSpec, rfvSocialNeedOtherSpec, chkSocialOther.Checked)
    End Sub
    Protected Sub Clinical_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkClinical.CheckedChanged
        SetTextBox(txtClinical, rfvClinical, chkClinical.Checked)
    End Sub
    Protected Sub FamilyPref_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkFamilyPref.CheckedChanged
        SetTextBox(txtFamilyPref, rfvFamilyPref, chkFamilyPref.Checked)
    End Sub
    Protected Sub AdminBarrier_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkAdminBarrier.CheckedChanged
        SetTextBox(txtAdminBarrier, rfvAdminBarrier, chkAdminBarrier.Checked)
    End Sub
    Protected Sub Died_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkDied.CheckedChanged
        SetTextBox(txtDied, rfvDied, chkDied.Checked)
    End Sub
    Protected Sub Financial_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkFinancial.CheckedChanged
        SetTextBox(txtFinancial, rfvFinancial, chkFinancial.Checked)
    End Sub
    #End Region
End Class
