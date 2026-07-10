Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionD2
    'Inherits System.Web.UI.Page
    Inherits BasePage

    Dim totalerror As Integer = 0
    Dim admissions As Integer = 0
    Dim deaths As Integer = 0
    Dim nondeaths As Integer = 0

    Protected Overloads Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'Commented following code - JS
            '' Read cookie ------------------------------------------------------------
            'Dim cookie As HttpCookie
            'cookie = Request.Cookies.Get("Hospiceusersettings")
            'If (cookie Is Nothing) Then
            '    Session.Abandon()
            '    FormsAuthentication.SignOut()
            '    Response.Redirect("index.aspx")
            'Else
            '    UserName.Text = Request.Cookies("Hospiceusersettings")("UserName")
            '    lblFirstname.Text = Request.Cookies("Hospiceusersettings")("FirstName")
            '    lblLastName.Text = Request.Cookies("Hospiceusersettings")("LastName")
            '    SY1.Text = ConfigurationManager.AppSettings("year")
            '    SY2.Text = ConfigurationManager.AppSettings("year")
            '    SY3.Text = ConfigurationManager.AppSettings("year")
            '    SY4.Text = ConfigurationManager.AppSettings("year")
            '    SY5.Text = ConfigurationManager.AppSettings("year")
            '    SY6.Text = ConfigurationManager.AppSettings("year")
            '    SY7.Text = ConfigurationManager.AppSettings("year")
            '    SY8.Text = ConfigurationManager.AppSettings("year")
            '    SY9.Text = ConfigurationManager.AppSettings("year")
            '    'SY10.Text = ConfigurationManager.AppSettings("year")
            '    SY11.Text = ConfigurationManager.AppSettings("year")
            '    SY12.Text = ConfigurationManager.AppSettings("year")
            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            SY3.Text = GetYear()
            SY4.Text = GetYear()
            SY5.Text = GetYear()
            SY6.Text = GetYear()
            SY7.Text = GetYear()
            SY8.Text = GetYear()
            SY9.Text = GetYear()
            'SY10.Text = GetYear()
            SY11.Text = GetYear()
            SY12.Text = GetYear()
            Dim D2Active = CheckSectionC1()
            If D2Active = 1 Then
                LoadSurvey()
                msave.Visible = False
            Else
                message.Text = "You may not complete this section until you complete Section C1a. Press Menu button below to return to the menu. Then select Section C1a and complete."
                btnMenu.Visible = False
                btnNext.Visible = False
            End If
        End If
    End Sub


    Function CheckSectionC1() As Integer
        Dim vActive As Integer = 0
        'Commented code - JS 
        'Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd1 As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd1.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        DBReader.Read()
        If DBReader("SectionC") = True Then
            vActive = 1
        End If
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        surveyDB.TerminateDBOperation()
        Return vActive
    End Function

    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect("menu.aspx")
    End Sub

    Protected Sub btnMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMenu.Click

        SaveSurvey(1)
        msave.Visible = True
    End Sub
    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        Response.Redirect("SectionE.aspx")
    End Sub

    Sub LoadSurvey()
        'Commented code - JS 
        'Dim strSQL As String
        'Dim strSQL1 As String
        'Dim con1 As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con1.Open()
        'strSQL1 = "Select * FROM PatientVolume where UserName='" & UserName.Text & "'"
        'Dim cmd1 As New SqlCommand(strSQL1, con1)
        'Dim DBReader1 = cmd1.ExecuteReader()
        Dim patientVolumeDB As PatientVolumeDBLayer = New PatientVolumeDBLayer()
        Dim DBReader1 = patientVolumeDB.GetByUserName(UserName.Text)
        While DBReader1.Read()
            ' Saved from Q1a Patient Volume (Totals)------------------------------------------------------------------
            If Len(DBReader1("AgTotPatsServed") & "") > 0 Then
                AgTotPatsServed.Text = DBReader1("AgTotPatsServed")
            Else
                AgTotPatsServed.Text = "0"
            End If
            If Len(DBReader1("TotalCarryovers") & "") > 0 Then
                TotalCarryovers.Text = DBReader1("TotalCarryovers")
            Else
                TotalCarryovers.Text = "0"
            End If
            If Len(DBReader1("AgTotDeaths") & "") > 0 Then
                AgTotDeaths.Text = DBReader1("AgTotDeaths")
            Else
                AgTotDeaths.Text = "0"
            End If
            If Len(DBReader1("AgTotNonDeaths") & "") > 0 Then
                AgTotNonDeaths.Text = DBReader1("AgTotNonDeaths")
            Else
                AgTotNonDeaths.Text = "0"
            End If
            '-----------------------------------------------------------------------------------------------------------
        End While
        'DBReader1.Close()
        'con1.Close()
        'con1 = Nothing
        'DBReader1 = Nothing
        patientVolumeDB.TerminateDBOperation()
        'set global values for total deaths, nondeaths and admissions
        If Val(AgTotPatsServed.Text) > Val(TotalCarryovers.Text) Then
            admissions = Val(AgTotPatsServed.Text) - Val(TotalCarryovers.Text)
        Else
            admissions = 0
        End If

        TotalAdmissions6.Text = admissions.ToString
        TotalAdmissions7.Text = admissions.ToString
        TotalDeaths6.Text = AgTotDeaths.Text
        TotalDeaths7.Text = AgTotDeaths.Text
        TotalNonDeathDischarges6.Text = AgTotNonDeaths.Text
        TotalNonDeathDischarges7.Text = AgTotNonDeaths.Text

        deaths = Val(AgTotDeaths.Text)
        nondeaths = Val(AgTotNonDeaths.Text)
        'Commented code - JS 
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
            If Len(DBReader("DevDisability") & "") > 0 Then DevDisability.Text = DBReader("DevDisability")
            If Len(DBReader("NumVeterans") & "") > 0 Then NumVeterans.Text = DBReader("NumVeterans")

            'New D6 ----------------------------------------------------------------------------------------
            If Len(DBReader("HC_OTHER") & "") > 0 Then HC_OTHER.Text = DBReader("HC_OTHER")
            If Len(DBReader("RC_OTHER") & "") > 0 Then RC_OTHER.Text = DBReader("RC_OTHER")
            If Len(DBReader("IC_OTHER") & "") > 0 Then IC_OTHER.Text = DBReader("IC_OTHER")
            If Len(DBReader("CC_OTHER") & "") > 0 Then CC_OTHER.Text = DBReader("CC_OTHER")

            If Len(DBReader("Adm_HC_PR") & "") > 0 Then Adm_HC_PR.Text = DBReader("Adm_HC_PR")
            If Len(DBReader("Adm_HC_AL") & "") > 0 Then Adm_HC_AL.Text = DBReader("Adm_HC_AL")
            If Len(DBReader("Adm_HC_HH") & "") > 0 Then Adm_HC_HH.Text = DBReader("Adm_HC_HH")
            If Len(DBReader("Adm_HC_NH") & "") > 0 Then Adm_HC_NH.Text = DBReader("Adm_HC_NH")
            If Len(DBReader("Adm_HC_OTH") & "") > 0 Then Adm_HC_OTH.Text = DBReader("Adm_HC_OTH")
            If Len(DBReader("Adm_RC_NH") & "") > 0 Then Adm_RC_NH.Text = DBReader("Adm_RC_NH")
            If Len(DBReader("Adm_RC_HOSP") & "") > 0 Then Adm_RC_HOSP.Text = DBReader("Adm_RC_HOSP")
            If Len(DBReader("Adm_RC_FREE") & "") > 0 Then Adm_RC_FREE.Text = DBReader("Adm_RC_FREE")
            If Len(DBReader("Adm_RC_OTH") & "") > 0 Then Adm_RC_OTH.Text = DBReader("Adm_RC_OTH")
            If Len(DBReader("Adm_IC_HOSP") & "") > 0 Then Adm_IC_HOSP.Text = DBReader("Adm_IC_HOSP")
            If Len(DBReader("Adm_IC_NH") & "") > 0 Then Adm_IC_NH.Text = DBReader("Adm_IC_NH")
            If Len(DBReader("Adm_IC_FREE") & "") > 0 Then Adm_IC_FREE.Text = DBReader("Adm_IC_FREE")
            If Len(DBReader("Adm_IC_OTH") & "") > 0 Then Adm_IC_OTH.Text = DBReader("Adm_IC_OTH")
            If Len(DBReader("Adm_CC_PR") & "") > 0 Then Adm_CC_PR.Text = DBReader("Adm_CC_PR")
            If Len(DBReader("Adm_CC_AL") & "") > 0 Then Adm_CC_AL.Text = DBReader("Adm_CC_AL")
            If Len(DBReader("Adm_CC_HH") & "") > 0 Then Adm_CC_HH.Text = DBReader("Adm_CC_HH")
            If Len(DBReader("Adm_CC_NH") & "") > 0 Then Adm_CC_NH.Text = DBReader("Adm_CC_NH")
            If Len(DBReader("Adm_CC_OTH") & "") > 0 Then Adm_CC_OTH.Text = DBReader("Adm_CC_OTH")
            If Len(DBReader("TADM") & "") > 0 Then tadm.Text = DBReader("TADM")

            If Len(DBReader("D_HC_PR") & "") > 0 Then D_HC_PR.Text = DBReader("D_HC_PR")
            If Len(DBReader("D_HC_AL") & "") > 0 Then D_HC_AL.Text = DBReader("D_HC_AL")
            If Len(DBReader("D_HC_HH") & "") > 0 Then D_HC_HH.Text = DBReader("D_HC_HH")
            If Len(DBReader("D_HC_NH") & "") > 0 Then D_HC_NH.Text = DBReader("D_HC_NH")
            If Len(DBReader("D_HC_OTH") & "") > 0 Then D_HC_OTH.Text = DBReader("D_HC_OTH")
            If Len(DBReader("D_RC_NH") & "") > 0 Then D_RC_NH.Text = DBReader("D_RC_NH")
            If Len(DBReader("D_RC_HOSP") & "") > 0 Then D_RC_HOSP.Text = DBReader("D_RC_HOSP")
            If Len(DBReader("D_RC_FREE") & "") > 0 Then D_RC_FREE.Text = DBReader("D_RC_FREE")
            If Len(DBReader("D_RC_OTH") & "") > 0 Then D_RC_OTH.Text = DBReader("D_RC_OTH")
            If Len(DBReader("D_IC_HOSP") & "") > 0 Then D_IC_HOSP.Text = DBReader("D_IC_HOSP")
            If Len(DBReader("D_IC_NH") & "") > 0 Then D_IC_NH.Text = DBReader("D_IC_NH")
            If Len(DBReader("D_IC_FREE") & "") > 0 Then D_IC_FREE.Text = DBReader("D_IC_FREE")
            If Len(DBReader("D_IC_OTH") & "") > 0 Then D_IC_OTH.Text = DBReader("D_IC_OTH")
            If Len(DBReader("D_CC_PR") & "") > 0 Then D_CC_PR.Text = DBReader("D_CC_PR")
            If Len(DBReader("D_CC_AL") & "") > 0 Then D_CC_AL.Text = DBReader("D_CC_AL")
            If Len(DBReader("D_CC_HH") & "") > 0 Then D_CC_HH.Text = DBReader("D_CC_HH")
            If Len(DBReader("D_CC_NH") & "") > 0 Then D_CC_NH.Text = DBReader("D_CC_NH")
            If Len(DBReader("D_CC_OTH") & "") > 0 Then D_CC_OTH.Text = DBReader("D_CC_OTH")
            If Len(DBReader("TDEATHS") & "") > 0 Then tdeaths.Text = DBReader("TDEATHS")

            If Len(DBReader("DD_HC_PR") & "") > 0 Then DD_HC_PR.Text = DBReader("DD_HC_PR")
            If Len(DBReader("DD_HC_AL") & "") > 0 Then DD_HC_AL.Text = DBReader("DD_HC_AL")
            If Len(DBReader("DD_HC_HH") & "") > 0 Then DD_HC_HH.Text = DBReader("DD_HC_HH")
            If Len(DBReader("DD_HC_NH") & "") > 0 Then DD_HC_NH.Text = DBReader("DD_HC_NH")
            If Len(DBReader("DD_HC_OTH") & "") > 0 Then DD_HC_OTH.Text = DBReader("DD_HC_OTH")
            If Len(DBReader("DD_RC_NH") & "") > 0 Then DD_RC_NH.Text = DBReader("DD_RC_NH")
            If Len(DBReader("DD_RC_HOSP") & "") > 0 Then DD_RC_HOSP.Text = DBReader("DD_RC_HOSP")
            If Len(DBReader("DD_RC_FREE") & "") > 0 Then DD_RC_FREE.Text = DBReader("DD_RC_FREE")
            If Len(DBReader("DD_RC_OTH") & "") > 0 Then DD_RC_OTH.Text = DBReader("DD_RC_OTH")
            If Len(DBReader("DD_IC_HOSP") & "") > 0 Then DD_IC_HOSP.Text = DBReader("DD_IC_HOSP")
            If Len(DBReader("DD_IC_NH") & "") > 0 Then DD_IC_NH.Text = DBReader("DD_IC_NH")
            If Len(DBReader("DD_IC_FREE") & "") > 0 Then DD_IC_FREE.Text = DBReader("DD_IC_FREE")
            If Len(DBReader("DD_IC_OTH") & "") > 0 Then DD_IC_OTH.Text = DBReader("DD_IC_OTH")
            If Len(DBReader("DD_CC_PR") & "") > 0 Then DD_CC_PR.Text = DBReader("DD_CC_PR")
            If Len(DBReader("DD_CC_AL") & "") > 0 Then DD_CC_AL.Text = DBReader("DD_CC_AL")
            If Len(DBReader("DD_CC_HH") & "") > 0 Then DD_CC_HH.Text = DBReader("DD_CC_HH")
            If Len(DBReader("DD_CC_NH") & "") > 0 Then DD_CC_NH.Text = DBReader("DD_CC_NH")
            If Len(DBReader("DD_CC_OTH") & "") > 0 Then DD_CC_OTH.Text = DBReader("DD_CC_OTH")
            If Len(DBReader("TNDD") & "") > 0 Then tndd.Text = DBReader("TNDD")

            If Len(DBReader("PD_HC_PR") & "") > 0 Then PD_HC_PR.Text = DBReader("PD_HC_PR")
            If Len(DBReader("PD_HC_AL") & "") > 0 Then PD_HC_AL.Text = DBReader("PD_HC_AL")
            If Len(DBReader("PD_HC_HH") & "") > 0 Then PD_HC_HH.Text = DBReader("PD_HC_HH")
            If Len(DBReader("PD_HC_NH") & "") > 0 Then PD_HC_NH.Text = DBReader("PD_HC_NH")
            If Len(DBReader("PD_HC_OTH") & "") > 0 Then PD_HC_OTH.Text = DBReader("PD_HC_OTH")
            If Len(DBReader("PD_RC_NH") & "") > 0 Then PD_RC_NH.Text = DBReader("PD_RC_NH")
            If Len(DBReader("PD_RC_HOSP") & "") > 0 Then PD_RC_HOSP.Text = DBReader("PD_RC_HOSP")
            If Len(DBReader("PD_RC_FREE") & "") > 0 Then PD_RC_FREE.Text = DBReader("PD_RC_FREE")
            If Len(DBReader("PD_RC_OTH") & "") > 0 Then PD_RC_OTH.Text = DBReader("PD_RC_OTH")
            If Len(DBReader("PD_IC_HOSP") & "") > 0 Then PD_IC_HOSP.Text = DBReader("PD_IC_HOSP")
            If Len(DBReader("PD_IC_NH") & "") > 0 Then PD_IC_NH.Text = DBReader("PD_IC_NH")
            If Len(DBReader("PD_IC_FREE") & "") > 0 Then PD_IC_FREE.Text = DBReader("PD_IC_FREE")
            If Len(DBReader("PD_IC_OTH") & "") > 0 Then PD_IC_OTH.Text = DBReader("PD_IC_OTH")
            If Len(DBReader("PD_CC_PR") & "") > 0 Then PD_CC_PR.Text = DBReader("PD_CC_PR")
            If Len(DBReader("PD_CC_AL") & "") > 0 Then PD_CC_AL.Text = DBReader("PD_CC_AL")
            If Len(DBReader("PD_CC_HH") & "") > 0 Then PD_CC_HH.Text = DBReader("PD_CC_HH")
            If Len(DBReader("PD_CC_NH") & "") > 0 Then PD_CC_NH.Text = DBReader("PD_CC_NH")
            If Len(DBReader("PD_CC_OTH") & "") > 0 Then PD_CC_OTH.Text = DBReader("PD_CC_OTH")
            If Len(DBReader("tpd") & "") > 0 Then tpd.Text = DBReader("tpd")
            '----------------------------------------------------------------------------------------------------

            If Len(DBReader("SepsisAd") & "") > 0 Then SepsisAd.Text = DBReader("SepsisAd")
            If Len(DBReader("SepsisDeaths") & "") > 0 Then SepsisDeaths.Text = DBReader("SepsisDeaths")
            If Len(DBReader("SepsisLiveDis") & "") > 0 Then SepsisLiveDis.Text = DBReader("SepsisLiveDis")
            If Len(DBReader("SepsisPDays") & "") > 0 Then SepsisPDays.Text = DBReader("SepsisPDays")
            If Len(DBReader("CancerAd") & "") > 0 Then CancerAd.Text = DBReader("CancerAd")
            If Len(DBReader("CancerDeaths") & "") > 0 Then CancerDeaths.Text = DBReader("CancerDeaths")
            If Len(DBReader("CancerLiveDis") & "") > 0 Then CancerLiveDis.Text = DBReader("CancerLiveDis")
            If Len(DBReader("CancerPDays") & "") > 0 Then CancerPDays.Text = DBReader("CancerPDays")
            If Len(DBReader("HIVAd") & "") > 0 Then HIVAd.Text = DBReader("HIVAd")
            If Len(DBReader("HIVDeaths") & "") > 0 Then HIVDeaths.Text = DBReader("HIVDeaths")
            If Len(DBReader("HIVLiveDis") & "") > 0 Then HIVLiveDis.Text = DBReader("HIVLiveDis")
            If Len(DBReader("HIVPDays") & "") > 0 Then HIVPDays.Text = DBReader("HIVPDays")
            If Len(DBReader("EndoAd") & "") > 0 Then EndoAd.Text = DBReader("EndoAd")
            If Len(DBReader("EndoDeaths") & "") > 0 Then EndoDeaths.Text = DBReader("EndoDeaths")
            If Len(DBReader("EndoLiveDis") & "") > 0 Then EndoLiveDis.Text = DBReader("EndoLiveDis")
            If Len(DBReader("EndoPDays") & "") > 0 Then EndoPDays.Text = DBReader("EndoPDays")
            If Len(DBReader("NeuroAd") & "") > 0 Then NeuroAd.Text = DBReader("NeuroAd")
            If Len(DBReader("NeuroDeaths") & "") > 0 Then NeuroDeaths.Text = DBReader("NeuroDeaths")
            If Len(DBReader("NeuroLiveDis") & "") > 0 Then NeuroLiveDis.Text = DBReader("NeuroLiveDis")
            If Len(DBReader("NeuroPDays") & "") > 0 Then NeuroPDays.Text = DBReader("NeuroPDays")
            If Len(DBReader("DemAd") & "") > 0 Then DemAd.Text = DBReader("DemAd")
            If Len(DBReader("DementiaDeaths") & "") > 0 Then DementiaDeaths.Text = DBReader("DementiaDeaths")
            If Len(DBReader("DementiaLiveDis") & "") > 0 Then DementiaLiveDis.Text = DBReader("DementiaLiveDis")
            If Len(DBReader("DementiaPDays") & "") > 0 Then DementiaPDays.Text = DBReader("DementiaPDays")
            If Len(DBReader("HrtAd") & "") > 0 Then HrtAd.Text = DBReader("HrtAd")
            If Len(DBReader("HeartDeaths") & "") > 0 Then HeartDeaths.Text = DBReader("HeartDeaths")
            If Len(DBReader("HeartLiveDis") & "") > 0 Then HeartLiveDis.Text = DBReader("HeartLiveDis")
            If Len(DBReader("HeartPDays") & "") > 0 Then HeartPDays.Text = DBReader("HeartPDays")
            If Len(DBReader("LungAd") & "") > 0 Then LungAd.Text = DBReader("LungAd")
            If Len(DBReader("LungDeaths") & "") > 0 Then LungDeaths.Text = DBReader("LungDeaths")
            If Len(DBReader("LungLiveDis") & "") > 0 Then LungLiveDis.Text = DBReader("LungLiveDis")
            If Len(DBReader("LungPDays") & "") > 0 Then LungPDays.Text = DBReader("LungPDays")
            If Len(DBReader("LivAd") & "") > 0 Then LivAd.Text = DBReader("LivAd")
            If Len(DBReader("LiverDeaths") & "") > 0 Then LiverDeaths.Text = DBReader("LiverDeaths")
            If Len(DBReader("LiverLiveDis") & "") > 0 Then LiverLiveDis.Text = DBReader("LiverLiveDis")
            If Len(DBReader("LiverPDays") & "") > 0 Then LiverPDays.Text = DBReader("LiverPDays")
            If Len(DBReader("SkinAd") & "") > 0 Then SkinAd.Text = DBReader("SkinAd")
            If Len(DBReader("SkinDeaths") & "") > 0 Then SkinDeaths.Text = DBReader("SkinDeaths")
            If Len(DBReader("SkinLiveDis") & "") > 0 Then SkinLiveDis.Text = DBReader("SkinLiveDis")
            If Len(DBReader("SkinPDays") & "") > 0 Then SkinPDays.Text = DBReader("SkinPDays")
            If Len(DBReader("MuscleAd") & "") > 0 Then MuscleAd.Text = DBReader("MuscleAd")
            If Len(DBReader("MuscleDeaths") & "") > 0 Then MuscleDeaths.Text = DBReader("MuscleDeaths")
            If Len(DBReader("MuscleLiveDis") & "") > 0 Then MuscleLiveDis.Text = DBReader("MuscleLiveDis")
            If Len(DBReader("MusclePDays") & "") > 0 Then MusclePDays.Text = DBReader("MusclePDays")
            If Len(DBReader("KidneyAd") & "") > 0 Then KidneyAd.Text = DBReader("KidneyAd")
            If Len(DBReader("KidneyDeaths") & "") > 0 Then KidneyDeaths.Text = DBReader("KidneyDeaths")
            If Len(DBReader("KidneyLiveDis") & "") > 0 Then KidneyLiveDis.Text = DBReader("KidneyLiveDis")
            If Len(DBReader("KidneyPDays") & "") > 0 Then KidneyPDays.Text = DBReader("KidneyPDays")
            If Len(DBReader("InjpoiAd") & "") > 0 Then InjpoiAd.Text = DBReader("InjpoiAd")
            If Len(DBReader("InjpoiDeaths") & "") > 0 Then InjpoiDeaths.Text = DBReader("InjpoiDeaths")
            If Len(DBReader("InjpoiLiveDis") & "") > 0 Then InjpoiLiveDis.Text = DBReader("InjpoiLiveDis")
            If Len(DBReader("InjpoiPDays") & "") > 0 Then InjpoiPDays.Text = DBReader("InjpoiPDays")
            If Len(DBReader("DiagOtherName") & "") > 0 Then DiagOtherName.Text = DBReader("DiagOtherName")
            If Len(DBReader("OtherAd") & "") > 0 Then OtherAd.Text = DBReader("OtherAd")
            If Len(DBReader("OtherDeaths") & "") > 0 Then OtherDeaths.Text = DBReader("OtherDeaths")
            If Len(DBReader("OtherLiveDis") & "") > 0 Then OtherLiveDis.Text = DBReader("OtherLiveDis")
            If Len(DBReader("OtherPDays") & "") > 0 Then OtherPDays.Text = DBReader("OtherPDays")
            If Len(DBReader("ActTotAd") & "") > 0 Then ActTotAd.Text = DBReader("ActTotAd")
            If Len(DBReader("TotalPDeaths") & "") > 0 Then TotalPDeaths.Text = DBReader("TotalPDeaths")
            If Len(DBReader("TotalLiveDis") & "") > 0 Then TotalLiveDis.Text = DBReader("TotalLiveDis")
            If Len(DBReader("TotalPDays") & "") > 0 Then TotalPDays.Text = DBReader("TotalPDays")

            'New Code July 2026
            SetTextBoxValue(DBReader("BehavHealthAdmitPY"), txtBehavHealthAdmitPY)
            SetTextBoxValue(DBReader("BehavHealthAdmitCY"), txtBehavHealthAdmitCY)
            SetTextBoxValue(DBReader("WoundCareAdmitPY"), txtWoundCareAdmitPY)
            SetTextBoxValue(DBReader("WoundCareAdmitCY"), txtWoundCareAdmitCY)
            SetTextBoxValue(DBReader("ComSocialAdmitPY"), txtComSocialAdmitPY)
            SetTextBoxValue(DBReader("ComSocialAdmitCY"), txtComSocialAdmitCY)
            SetTextBoxValue(DBReader("InfectionAdmitPY"), txtInfectionAdmitPY)
            SetTextBoxValue(DBReader("InfectionAdmitCY"), txtInfectionAdmitCY)
            SetTextBoxValue(DBReader("OxyDependAdmitPY"), txtOxyDependAdmitPY)
            SetTextBoxValue(DBReader("OxyDependAdmitCY"), txtOxyDependAdmitCY)
            SetTextBoxValue(DBReader("AggBehavAdmitPY"), txtAggBehavAdmitPY)
            SetTextBoxValue(DBReader("AggBehavAdmitCY"), txtAggBehavAdmitCY)
            SetTextBoxValue(DBReader("InfuMedAdmitPY"), txtInfuMedAdmitPY)
            SetTextBoxValue(DBReader("InfuMedAdmitCY"), txtInfuMedAdmitCY)
            SetTextBoxValue(DBReader("DialysisAdmitPY"), txtDialysisAdmitPY)
            SetTextBoxValue(DBReader("DialysisAdmitCY"), txtDialysisAdmitCY)
            SetTextBoxValue(DBReader("TotalAdmitPY"), txtTotalAdmitPY)
            SetTextBoxValue(DBReader("TotalAdmitCY"), txtTotalAdmitCY)
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

        strSQL = strSQL & " DevDisability='" & DevDisability.Text & "',"
        strSQL = strSQL & " NumVeterans='" & NumVeterans.Text & "',"

        'New D6-------------------------------------------------------------------------------------------
        strSQL = strSQL & " HC_OTHER='" & HC_OTHER.Text & "',"
        strSQL = strSQL & " RC_OTHER='" & RC_OTHER.Text & "',"
        strSQL = strSQL & " IC_OTHER='" & IC_OTHER.Text & "',"
        strSQL = strSQL & " CC_OTHER='" & CC_OTHER.Text & "',"

        strSQL = strSQL & " Adm_HC_PR='" & Adm_HC_PR.Text & "',"
        strSQL = strSQL & " Adm_HC_AL='" & Adm_HC_AL.Text & "',"
        strSQL = strSQL & " Adm_HC_HH='" & Adm_HC_HH.Text & "',"
        strSQL = strSQL & " Adm_HC_NH='" & Adm_HC_NH.Text & "',"
        strSQL = strSQL & " Adm_HC_OTH='" & Adm_HC_OTH.Text & "',"
        strSQL = strSQL & " Adm_RC_NH='" & Adm_RC_NH.Text & "',"
        strSQL = strSQL & " Adm_RC_HOSP='" & Adm_RC_HOSP.Text & "',"
        strSQL = strSQL & " Adm_RC_FREE='" & Adm_RC_FREE.Text & "',"
        strSQL = strSQL & " Adm_RC_OTH='" & Adm_RC_OTH.Text & "',"
        strSQL = strSQL & " Adm_IC_HOSP='" & Adm_IC_HOSP.Text & "',"
        strSQL = strSQL & " Adm_IC_NH='" & Adm_IC_NH.Text & "',"
        strSQL = strSQL & " Adm_IC_FREE='" & Adm_IC_FREE.Text & "',"
        strSQL = strSQL & " Adm_IC_OTH='" & Adm_IC_OTH.Text & "',"
        strSQL = strSQL & " Adm_CC_PR='" & Adm_CC_PR.Text & "',"
        strSQL = strSQL & " Adm_CC_AL='" & Adm_CC_AL.Text & "',"
        strSQL = strSQL & " Adm_CC_HH='" & Adm_CC_HH.Text & "',"
        strSQL = strSQL & " Adm_CC_NH='" & Adm_CC_NH.Text & "',"
        strSQL = strSQL & " Adm_CC_OTH='" & Adm_CC_OTH.Text & "',"
        strSQL = strSQL & " TADM='" & tadm.Text & "',"

        strSQL = strSQL & " D_HC_PR='" & D_HC_PR.Text & "',"
        strSQL = strSQL & " D_HC_AL='" & D_HC_AL.Text & "',"
        strSQL = strSQL & " D_HC_HH='" & D_HC_HH.Text & "',"
        strSQL = strSQL & " D_HC_NH='" & D_HC_NH.Text & "',"
        strSQL = strSQL & " D_HC_OTH='" & D_HC_OTH.Text & "',"
        strSQL = strSQL & " D_RC_NH='" & D_RC_NH.Text & "',"
        strSQL = strSQL & " D_RC_HOSP='" & D_RC_HOSP.Text & "',"
        strSQL = strSQL & " D_RC_FREE='" & D_RC_FREE.Text & "',"
        strSQL = strSQL & " D_RC_OTH='" & D_RC_OTH.Text & "',"
        strSQL = strSQL & " D_IC_HOSP='" & D_IC_HOSP.Text & "',"
        strSQL = strSQL & " D_IC_NH='" & D_IC_NH.Text & "',"
        strSQL = strSQL & " D_IC_FREE='" & D_IC_FREE.Text & "',"
        strSQL = strSQL & " D_IC_OTH='" & D_IC_OTH.Text & "',"
        strSQL = strSQL & " D_CC_PR='" & D_CC_PR.Text & "',"
        strSQL = strSQL & " D_CC_AL='" & D_CC_AL.Text & "',"
        strSQL = strSQL & " D_CC_HH='" & D_CC_HH.Text & "',"
        strSQL = strSQL & " D_CC_NH='" & D_CC_NH.Text & "',"
        strSQL = strSQL & " D_CC_OTH='" & D_CC_OTH.Text & "',"
        strSQL = strSQL & " TDEATHS='" & tdeaths.Text & "',"

        strSQL = strSQL & " DD_HC_PR='" & DD_HC_PR.Text & "',"
        strSQL = strSQL & " DD_HC_AL='" & DD_HC_AL.Text & "',"
        strSQL = strSQL & " DD_HC_HH='" & DD_HC_HH.Text & "',"
        strSQL = strSQL & " DD_HC_NH='" & DD_HC_NH.Text & "',"
        strSQL = strSQL & " DD_HC_OTH='" & DD_HC_OTH.Text & "',"
        strSQL = strSQL & " DD_RC_NH='" & DD_RC_NH.Text & "',"
        strSQL = strSQL & " DD_RC_HOSP='" & DD_RC_HOSP.Text & "',"
        strSQL = strSQL & " DD_RC_FREE='" & DD_RC_FREE.Text & "',"
        strSQL = strSQL & " DD_RC_OTH='" & DD_RC_OTH.Text & "',"
        strSQL = strSQL & " DD_IC_HOSP='" & DD_IC_HOSP.Text & "',"
        strSQL = strSQL & " DD_IC_NH='" & DD_IC_NH.Text & "',"
        strSQL = strSQL & " DD_IC_FREE='" & DD_IC_FREE.Text & "',"
        strSQL = strSQL & " DD_IC_OTH='" & DD_IC_OTH.Text & "',"
        strSQL = strSQL & " DD_CC_PR='" & DD_CC_PR.Text & "',"
        strSQL = strSQL & " DD_CC_AL='" & DD_CC_AL.Text & "',"
        strSQL = strSQL & " DD_CC_HH='" & DD_CC_HH.Text & "',"
        strSQL = strSQL & " DD_CC_NH='" & DD_CC_NH.Text & "',"
        strSQL = strSQL & " DD_CC_OTH='" & DD_CC_OTH.Text & "',"
        strSQL = strSQL & " TNDD='" & tndd.Text & "',"

        strSQL = strSQL & " PD_HC_PR='" & PD_HC_PR.Text & "',"
        strSQL = strSQL & " PD_HC_AL='" & PD_HC_AL.Text & "',"
        strSQL = strSQL & " PD_HC_HH='" & PD_HC_HH.Text & "',"
        strSQL = strSQL & " PD_HC_NH='" & PD_HC_NH.Text & "',"
        strSQL = strSQL & " PD_HC_OTH='" & PD_HC_OTH.Text & "',"
        strSQL = strSQL & " PD_RC_NH='" & PD_RC_NH.Text & "',"
        strSQL = strSQL & " PD_RC_HOSP='" & PD_RC_HOSP.Text & "',"
        strSQL = strSQL & " PD_RC_FREE='" & PD_RC_FREE.Text & "',"
        strSQL = strSQL & " PD_RC_OTH='" & PD_RC_OTH.Text & "',"
        strSQL = strSQL & " PD_IC_HOSP='" & PD_IC_HOSP.Text & "',"
        strSQL = strSQL & " PD_IC_NH='" & PD_IC_NH.Text & "',"
        strSQL = strSQL & " PD_IC_FREE='" & PD_IC_FREE.Text & "',"
        strSQL = strSQL & " PD_IC_OTH='" & PD_IC_OTH.Text & "',"
        strSQL = strSQL & " PD_CC_PR='" & PD_CC_PR.Text & "',"
        strSQL = strSQL & " PD_CC_AL='" & PD_CC_AL.Text & "',"
        strSQL = strSQL & " PD_CC_HH='" & PD_CC_HH.Text & "',"
        strSQL = strSQL & " PD_CC_NH='" & PD_CC_NH.Text & "',"
        strSQL = strSQL & " PD_CC_OTH='" & PD_CC_OTH.Text & "',"
        strSQL = strSQL & " tpd='" & tpd.Text & "',"

        '---------------------------------------------------------------------------------------------
        strSQL = strSQL & " SepsisAd='" & SepsisAd.Text & "',"
        strSQL = strSQL & " SepsisDeaths='" & SepsisDeaths.Text & "',"
        strSQL = strSQL & " SepsisLiveDis='" & SepsisLiveDis.Text & "',"
        strSQL = strSQL & " SepsisPDays='" & SepsisPDays.Text & "',"
        strSQL = strSQL & " CancerAd='" & CancerAd.Text & "',"
        strSQL = strSQL & " CancerDeaths='" & CancerDeaths.Text & "',"
        strSQL = strSQL & " CancerLiveDis='" & CancerLiveDis.Text & "',"
        strSQL = strSQL & " CancerPDays='" & CancerPDays.Text & "',"
        strSQL = strSQL & " HIVAd='" & HIVAd.Text & "',"
        strSQL = strSQL & " HIVDeaths='" & HIVDeaths.Text & "',"
        strSQL = strSQL & " HIVLiveDis='" & HIVLiveDis.Text & "',"
        strSQL = strSQL & " HIVPDays='" & HIVPDays.Text & "',"
        strSQL = strSQL & " EndoAd='" & EndoAd.Text & "',"
        strSQL = strSQL & " EndoDeaths='" & EndoDeaths.Text & "',"
        strSQL = strSQL & " EndoLiveDis='" & EndoLiveDis.Text & "',"
        strSQL = strSQL & " EndoPDays='" & EndoPDays.Text & "',"
        strSQL = strSQL & " NeuroAd='" & NeuroAd.Text & "',"
        strSQL = strSQL & " NeuroDeaths='" & NeuroDeaths.Text & "',"
        strSQL = strSQL & " NeuroLiveDis='" & NeuroLiveDis.Text & "',"
        strSQL = strSQL & " NeuroPDays='" & NeuroPDays.Text & "',"
        strSQL = strSQL & " DemAd='" & DemAd.Text & "',"
        strSQL = strSQL & " DementiaDeaths='" & DementiaDeaths.Text & "',"
        strSQL = strSQL & " DementiaLiveDis='" & DementiaLiveDis.Text & "',"
        strSQL = strSQL & " DementiaPDays='" & DementiaPDays.Text & "',"
        strSQL = strSQL & " HrtAd='" & HrtAd.Text & "',"
        strSQL = strSQL & " HeartDeaths='" & HeartDeaths.Text & "',"
        strSQL = strSQL & " HeartLiveDis='" & HeartLiveDis.Text & "',"
        strSQL = strSQL & " HeartPDays='" & HeartPDays.Text & "',"
        strSQL = strSQL & " LungAd='" & LungAd.Text & "',"
        strSQL = strSQL & " LungDeaths='" & LungDeaths.Text & "',"
        strSQL = strSQL & " LungLiveDis='" & LungLiveDis.Text & "',"
        strSQL = strSQL & " LungPDays='" & LungPDays.Text & "',"
        strSQL = strSQL & " LivAd='" & LivAd.Text & "',"
        strSQL = strSQL & " LiverDeaths='" & LiverDeaths.Text & "',"
        strSQL = strSQL & " LiverLiveDis='" & LiverLiveDis.Text & "',"
        strSQL = strSQL & " LiverPDays='" & LiverPDays.Text & "',"
        strSQL = strSQL & " SkinAd='" & SkinAd.Text & "',"
        strSQL = strSQL & " SkinDeaths='" & SkinDeaths.Text & "',"
        strSQL = strSQL & " SkinLiveDis='" & SkinLiveDis.Text & "',"
        strSQL = strSQL & " SkinPDays='" & SkinPDays.Text & "',"
        strSQL = strSQL & " MuscleAd='" & MuscleAd.Text & "',"
        strSQL = strSQL & " MuscleDeaths='" & MuscleDeaths.Text & "',"
        strSQL = strSQL & " MuscleLiveDis='" & MuscleLiveDis.Text & "',"
        strSQL = strSQL & " MusclePDays='" & MusclePDays.Text & "',"
        strSQL = strSQL & " KidneyAd='" & KidneyAd.Text & "',"
        strSQL = strSQL & " KidneyDeaths='" & KidneyDeaths.Text & "',"
        strSQL = strSQL & " KidneyLiveDis='" & KidneyLiveDis.Text & "',"
        strSQL = strSQL & " KidneyPDays='" & KidneyPDays.Text & "',"
        strSQL = strSQL & " InjpoiAd='" & InjpoiAd.Text & "',"
        strSQL = strSQL & " InjpoiDeaths='" & InjpoiDeaths.Text & "',"
        strSQL = strSQL & " InjpoiLiveDis='" & InjpoiLiveDis.Text & "',"
        strSQL = strSQL & " InjpoiPDays='" & InjpoiPDays.Text & "',"
        strSQL = strSQL & " DiagOtherName='" & DiagOtherName.Text & "',"
        strSQL = strSQL & " OtherAd='" & OtherAd.Text & "',"
        strSQL = strSQL & " OtherDeaths='" & OtherDeaths.Text & "',"
        strSQL = strSQL & " OtherLiveDis='" & OtherLiveDis.Text & "',"
        strSQL = strSQL & " OtherPDays='" & OtherPDays.Text & "',"

        strSQL = strSQL & " ActTotAd='" & ActTotAd.Text & "',"
        strSQL = strSQL & " TotalPDeaths='" & TotalPDeaths.Text & "',"
        strSQL = strSQL & " TotalLiveDis='" & TotalLiveDis.Text & "',"
        strSQL = strSQL & " TotalPDays='" & TotalPDays.Text & "',"
        'New code 07/10/2026
        strSQL = strSQL & MapTextValueField(txtBehavHealthAdmitPY, "BehavHealthAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtBehavHealthAdmitCY, "BehavHealthAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtWoundCareAdmitPY, "WoundCareAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtWoundCareAdmitCY, "WoundCareAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtComSocialAdmitPY, "ComSocialAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtComSocialAdmitCY, "ComSocialAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtInfectionAdmitPY, "InfectionAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtInfectionAdmitCY, "InfectionAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtOxyDependAdmitPY, "OxyDependAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtOxyDependAdmitCY, "OxyDependAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtAggBehavAdmitPY, "AggBehavAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtAggBehavAdmitCY, "AggBehavAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtInfuMedAdmitPY, "InfuMedAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtInfuMedAdmitCY, "InfuMedAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtDialysisAdmitPY, "DialysisAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtDialysisAdmitCY, "DialysisAdmitCY", False)
        strSQL = strSQL & MapTextValueField(txtTotalAdmitPY, "TotalAdmitPY", False)
        strSQL = strSQL & MapTextValueField(txtTotalAdmitCY, "TotalAdmitCY", False)


        strSQL = strSQL & " SectionD2='" & int & "'"
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
