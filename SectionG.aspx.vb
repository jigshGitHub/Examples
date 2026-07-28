Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionG
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
            '    SY4.Text = ConfigurationManager.AppSettings("year")
            '    SY2.Text = ConfigurationManager.AppSettings("year")
            '    SY3.Text = ConfigurationManager.AppSettings("year")
            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            SY3.Text = GetYear()
            SY4.Text = GetYear()
            LoadSurvey()
            msave.Visible = False
        End If
    End Sub
    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        'Response.Redirect("menu2.aspx")
        Response.Redirect("menu.aspx")
    End Sub

    Protected Sub btnMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMenu.Click
        SaveSurvey(1)
        msave.Visible = True
    End Sub

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        Response.Redirect("Comments.aspx?id=2")
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

            license_type.Text = DBReader("license_type")
            If license_type.Text = "02" Then
                vG1.Enabled = False
                vARDays.Enabled = False
                rARDays.Enabled = False
            End If

            If DBReader("Certification2") = True Then
                btnMenu.Enabled = False
            End If

            If Len(DBReader("MoreFacilities_Inpt") & "") > 0 Then
                lblSectionH.Text = DBReader("MoreFacilities_Inpt")
            End If
            If Len(DBReader("HospMedicarePatients") & "") > 0 Then HospMedicarePatients.Text = DBReader("HospMedicarePatients")
            If Len(DBReader("MedRoutine") & "") > 0 Then MedRoutine.Text = DBReader("MedRoutine")
            If Len(DBReader("MedInpatient") & "") > 0 Then MedInpatient.Text = DBReader("MedInpatient")
            If Len(DBReader("MedRespite") & "") > 0 Then MedRespite.Text = DBReader("MedRespite")
            If Len(DBReader("MedContinuous") & "") > 0 Then MedContinuous.Text = DBReader("MedContinuous")
            If Len(DBReader("HospMedicareDays") & "") > 0 Then HospMedicareDays.Text = DBReader("HospMedicareDays")
            If Len(DBReader("HospMedicaidPatients") & "") > 0 Then HospMedicaidPatients.Text = DBReader("HospMedicaidPatients")
            If Len(DBReader("MediRoutine") & "") > 0 Then MediRoutine.Text = DBReader("MediRoutine")
            If Len(DBReader("MediInpatient") & "") > 0 Then MediInpatient.Text = DBReader("MediInpatient")
            If Len(DBReader("MediRespite") & "") > 0 Then MediRespite.Text = DBReader("MediRespite")
            If Len(DBReader("MediContinuous") & "") > 0 Then MediContinuous.Text = DBReader("MediContinuous")
            If Len(DBReader("HospMedicaidDays") & "") > 0 Then HospMedicaidDays.Text = DBReader("HospMedicaidDays")
            If Len(DBReader("MediMCOPats") & "") > 0 Then MediMCOPats.Text = DBReader("MediMCOPats")
            If Len(DBReader("MediMCORoutine") & "") > 0 Then MediMCORoutine.Text = DBReader("MediMCORoutine")
            If Len(DBReader("MediMCOInpat") & "") > 0 Then MediMCOInpat.Text = DBReader("MediMCOInpat")
            If Len(DBReader("MediMCORespite") & "") > 0 Then MediMCORespite.Text = DBReader("MediMCORespite")
            If Len(DBReader("MediMCOCont") & "") > 0 Then MediMCOCont.Text = DBReader("MediMCOCont")
            If Len(DBReader("MediMCODays") & "") > 0 Then MediMCODays.Text = DBReader("MediMCODays")
            If Len(DBReader("ComServed") & "") > 0 Then ComServed.Text = DBReader("ComServed")

            If Len(DBReader("ComRoutine") & "") > 0 Then ComRoutine.Text = DBReader("ComRoutine")
            If Len(DBReader("ComInpatient") & "") > 0 Then ComInpatient.Text = DBReader("ComInpatient")
            If Len(DBReader("ComRespite") & "") > 0 Then ComRespite.Text = DBReader("ComRespite")
            If Len(DBReader("ComContinuous") & "") > 0 Then ComContinuous.Text = DBReader("ComContinuous")
            If Len(DBReader("ComTot") & "") > 0 Then ComTot.Text = DBReader("ComTot")
            If Len(DBReader("ComNonMCOServed") & "") > 0 Then ComNonMCOServed.Text = DBReader("ComNonMCOServed")
            If Len(DBReader("ComNonMCORoutine") & "") > 0 Then ComNonMCORoutine.Text = DBReader("ComNonMCORoutine")
            If Len(DBReader("ComNonMCOInpatient") & "") > 0 Then ComNonMCOInpatient.Text = DBReader("ComNonMCOInpatient")
            If Len(DBReader("ComNonMCORespite") & "") > 0 Then ComNonMCORespite.Text = DBReader("ComNonMCORespite")
            If Len(DBReader("ComNonMCOContinuous") & "") > 0 Then ComNonMCOContinuous.Text = DBReader("ComNonMCOContinuous")
            If Len(DBReader("ComNonMCOTot") & "") > 0 Then ComNonMCOTot.Text = DBReader("ComNonMCOTot")
            If Len(DBReader("ComMCOServed") & "") > 0 Then ComMCOServed.Text = DBReader("ComMCOServed")
            If Len(DBReader("ComMCORoutine") & "") > 0 Then ComMCORoutine.Text = DBReader("ComMCORoutine")
            If Len(DBReader("ComMCOInpatient") & "") > 0 Then ComMCOInpatient.Text = DBReader("ComMCOInpatient")
            If Len(DBReader("ComMCORespite") & "") > 0 Then ComMCORespite.Text = DBReader("ComMCORespite")
            If Len(DBReader("ComMCOContinuous") & "") > 0 Then ComMCOContinuous.Text = DBReader("ComMCOContinuous")
            If Len(DBReader("ComMCOTot") & "") > 0 Then ComMCOTot.Text = DBReader("ComMCOTot")
            If Len(DBReader("BlueServed") & "") > 0 Then BlueServed.Text = DBReader("BlueServed")
            If Len(DBReader("BlueRoutine") & "") > 0 Then BlueRoutine.Text = DBReader("BlueRoutine")
            If Len(DBReader("BlueInpatient") & "") > 0 Then BlueInpatient.Text = DBReader("BlueInpatient")
            If Len(DBReader("BlueRespite") & "") > 0 Then BlueRespite.Text = DBReader("BlueRespite")
            If Len(DBReader("BlueContinuous") & "") > 0 Then BlueContinuous.Text = DBReader("BlueContinuous")
            If Len(DBReader("BlueTot") & "") > 0 Then BlueTot.Text = DBReader("BlueTot")
            If Len(DBReader("BlueNonMCOServed") & "") > 0 Then BlueNonMCOServed.Text = DBReader("BlueNonMCOServed")
            If Len(DBReader("BlueNonMCORoutine") & "") > 0 Then BlueNonMCORoutine.Text = DBReader("BlueNonMCORoutine")

            If Len(DBReader("BlueNonMCOInpatient") & "") > 0 Then BlueNonMCOInpatient.Text = DBReader("BlueNonMCOInpatient")
            If Len(DBReader("BlueNonMCORespite") & "") > 0 Then BlueNonMCORespite.Text = DBReader("BlueNonMCORespite")
            If Len(DBReader("BlueNonMCOContinuous") & "") > 0 Then BlueNonMCOContinuous.Text = DBReader("BlueNonMCOContinuous")
            If Len(DBReader("BlueNonMCOTot") & "") > 0 Then BlueNonMCOTot.Text = DBReader("BlueNonMCOTot")
            If Len(DBReader("BlueMCOServed") & "") > 0 Then BlueMCOServed.Text = DBReader("BlueMCOServed")
            If Len(DBReader("BlueMCORoutine") & "") > 0 Then BlueMCORoutine.Text = DBReader("BlueMCORoutine")
            If Len(DBReader("BlueMCOInpatient") & "") > 0 Then BlueMCOInpatient.Text = DBReader("BlueMCOInpatient")
            If Len(DBReader("BlueMCORespite") & "") > 0 Then BlueMCORespite.Text = DBReader("BlueMCORespite")
            If Len(DBReader("BlueMCOContinuous") & "") > 0 Then BlueMCOContinuous.Text = DBReader("BlueMCOContinuous")
            If Len(DBReader("BlueMCOTot") & "") > 0 Then BlueMCOTot.Text = DBReader("BlueMCOTot")
            If Len(DBReader("SelfPayPatients") & "") > 0 Then SelfPayPatients.Text = DBReader("SelfPayPatients")
            If Len(DBReader("SelfRoutine") & "") > 0 Then SelfRoutine.Text = DBReader("SelfRoutine")
            If Len(DBReader("SelfInpatient") & "") > 0 Then SelfInpatient.Text = DBReader("SelfInpatient")
            If Len(DBReader("SelfRespite") & "") > 0 Then SelfRespite.Text = DBReader("SelfRespite")
            If Len(DBReader("SelfContinuous") & "") > 0 Then SelfContinuous.Text = DBReader("SelfContinuous")
            If Len(DBReader("SelfPayDays") & "") > 0 Then SelfPayDays.Text = DBReader("SelfPayDays")
            If Len(DBReader("UnChPats") & "") > 0 Then UnChPats.Text = DBReader("UnChPats")
            If Len(DBReader("UnChRoutine") & "") > 0 Then UnChRoutine.Text = DBReader("UnChRoutine")
            If Len(DBReader("UnChInpat") & "") > 0 Then UnChInpat.Text = DBReader("UnChInpat")
            If Len(DBReader("UnChRespite") & "") > 0 Then UnChRespite.Text = DBReader("UnChRespite")
            If Len(DBReader("UnChCont") & "") > 0 Then UnChCont.Text = DBReader("UnChCont")
            If Len(DBReader("UnChDays") & "") > 0 Then UnChDays.Text = DBReader("UnChDays")
            If Len(DBReader("OtherPatients") & "") > 0 Then OtherPatients.Text = DBReader("OtherPatients")
            If Len(DBReader("OtherRoutine") & "") > 0 Then OtherRoutine.Text = DBReader("OtherRoutine")
            ' Ne 2014----------------------------------------------------------------------
            If Len(DBReader("ChyPats") & "") > 0 Then ChyPats.Text = DBReader("ChyPats")
            If Len(DBReader("ChyRoutine") & "") > 0 Then ChyRoutine.Text = DBReader("ChyRoutine")
            If Len(DBReader("ChyInpat") & "") > 0 Then ChyInpat.Text = DBReader("ChyInpat")
            If Len(DBReader("ChyRespite") & "") > 0 Then ChyRespite.Text = DBReader("ChyRespite")
            If Len(DBReader("ChyCont") & "") > 0 Then ChyCont.Text = DBReader("ChyCont")
            If Len(DBReader("ChyDays") & "") > 0 Then ChyDays.Text = DBReader("ChyDays")
            '------------------------------------------------------------------------------
            If Len(DBReader("OtherInpatient") & "") > 0 Then OtherInpatient.Text = DBReader("OtherInpatient")
            If Len(DBReader("OtherRespite") & "") > 0 Then OtherRespite.Text = DBReader("OtherRespite")
            If Len(DBReader("OtherContinuous") & "") > 0 Then OtherContinuous.Text = DBReader("OtherContinuous")
            If Len(DBReader("OtherDays") & "") > 0 Then OtherDays.Text = DBReader("OtherDays")
            If Len(DBReader("TotHospPatients") & "") > 0 Then TotHospPatients.Text = DBReader("TotHospPatients")
            If Len(DBReader("LevelRoutine") & "") > 0 Then LevelRoutine.Text = DBReader("LevelRoutine")
            If Len(DBReader("LevelInpatient") & "") > 0 Then LevelInpatient.Text = DBReader("LevelInpatient")
            If Len(DBReader("LevelRespite") & "") > 0 Then LevelRespite.Text = DBReader("LevelRespite")
            If Len(DBReader("LevelContinuous") & "") > 0 Then LevelContinuous.Text = DBReader("LevelContinuous")
            If Len(DBReader("TotHospDays") & "") > 0 Then TotHospDays.Text = DBReader("TotHospDays")

            'Commented following code 07/23
            'If Len(DBReader("HospServRev") & "") > 0 Then HospServRev.Text = DBReader("HospServRev")
            'If Len(DBReader("HospServExp") & "") > 0 Then HospServExp.Text = DBReader("HospServExp")
            'If Len(DBReader("TotAgFundRev") & "") > 0 Then TotAgFundRev.Text = DBReader("TotAgFundRev")
            'If Len(DBReader("TotAgFundExp") & "") > 0 Then TotAgFundExp.Text = DBReader("TotAgFundExp")
            'If Len(DBReader("OtherAgRev") & "") > 0 Then OtherAgRev.Text = DBReader("OtherAgRev")
            'If Len(DBReader("OtherAgExp") & "") > 0 Then OtherAgExp.Text = DBReader("OtherAgExp")
            'If Len(DBReader("OverheadExp") & "") > 0 Then OverheadExp.Text = DBReader("OverheadExp")
            'If Len(DBReader("LLRevenue") & "") > 0 Then LLRevenue.Text = DBReader("LLRevenue")
            'If Len(DBReader("LLExpenses") & "") > 0 Then LLExpenses.Text = DBReader("LLExpenses")

            If Len(DBReader("ARDays") & "") > 0 Then ARDays.Text = DBReader("ARDays")

            'G2	REVENUE (PART II) 07/23/2026
            SetTextBoxValue(DBReader("MedicareRevPY"), MedicareRevPY)
            SetTextBoxValue(DBReader("MedicareExpPY"), MedicareExpPY)
            SetTextBoxValue(DBReader("MedicareRevCY"), MedicareRevCY)
            SetTextBoxValue(DBReader("MedicareExpCY"), MedicareExpCY)
            SetTextBoxValue(DBReader("MedicaidRevPY"), MedicaidRevPY)
            SetTextBoxValue(DBReader("MedicaidExpPY"), MedicaidExpPY)
            SetTextBoxValue(DBReader("MedicaidRevCY"), MedicaidRevCY)
            SetTextBoxValue(DBReader("MedicaidExpCY"), MedicaidExpCY)
            SetTextBoxValue(DBReader("InsRevPY"), InsRevPY)
            SetTextBoxValue(DBReader("InsExpPY"), InsExpPY)
            SetTextBoxValue(DBReader("InsRevCY"), InsRevCY)
            SetTextBoxValue(DBReader("InsExpCY"), InsExpCY)
            SetTextBoxValue(DBReader("SelfPayRevPY"), SelfPayRevPY)
            SetTextBoxValue(DBReader("SelfPayExpPY"), SelfPayExpPY)
            SetTextBoxValue(DBReader("SelfPayRevCY"), SelfPayRevCY)
            SetTextBoxValue(DBReader("SelfPayExpCY"), SelfPayExpCY)
            SetTextBoxValue(DBReader("OthGovtRevPY"), OthGovtRevPY)
            SetTextBoxValue(DBReader("OthGovtExpPY"), OthGovtExpPY)
            SetTextBoxValue(DBReader("OthGovtRevCY"), OthGovtRevCY)
            SetTextBoxValue(DBReader("OthGovtExpCY"), OthGovtExpCY)
            SetTextBoxValue(DBReader("TotalHospServRevPY"), TotalHospServRevPY)
            SetTextBoxValue(DBReader("TotalHospServExpPY"), TotalHospServExpPY)
            SetTextBoxValue(DBReader("TotalHospServRevCY"), TotalHospServRevCY)
            SetTextBoxValue(DBReader("TotalHospServExpCY"), TotalHospServExpCY)
            SetTextBoxValue(DBReader("TotalAgFundRevPY"), TotalAgFundRevPY)
            SetTextBoxValue(DBReader("TotalAgFundExpPY"), TotalAgFundExpPY)
            SetTextBoxValue(DBReader("TotalAgFundRevCY"), TotalAgFundRevCY)
            SetTextBoxValue(DBReader("TotalAgFundExpCY"), TotalAgFundExpCY)
            SetTextBoxValue(DBReader("TotalOtherRevPY"), TotalOtherRevPY)
            SetTextBoxValue(DBReader("TotalOtherExpPY"), TotalOtherExpPY)
            SetTextBoxValue(DBReader("TotalOtherRevCY"), TotalOtherRevCY)
            SetTextBoxValue(DBReader("TotalOtherExpCY"), TotalOtherExpCY)
            SetTextBoxValue(DBReader("TotalCharityRevPY"), TotalCharityRevPY)
            SetTextBoxValue(DBReader("TotalCharityExpPY"), TotalCharityExpPY)
            SetTextBoxValue(DBReader("TotalCharityRevCY"), TotalCharityRevCY)
            SetTextBoxValue(DBReader("TotalCharityExpCY"), TotalCharityExpCY)
            SetTextBoxValue(DBReader("TotalStaffEduExpPY"), TotalStaffEduExpPY)
            SetTextBoxValue(DBReader("TotalStaffEduExpCY"), TotalStaffEduExpCY)
            SetTextBoxValue(DBReader("TotalNoInsExpPY"), TotalNoInsExpPY)
            SetTextBoxValue(DBReader("TotalNoInsExpCY"), TotalNoInsExpCY)
            SetTextBoxValue(DBReader("TotalOverExpPY"), TotalOverExpPY)
            SetTextBoxValue(DBReader("TotalOverExpCY"), TotalOverExpCY)
            SetTextBoxValue(DBReader("GrandTotalRevPY"), GrandTotalRevPY)
            SetTextBoxValue(DBReader("GrandTotalExpPY"), GrandTotalExpPY)
            SetTextBoxValue(DBReader("GrandTotalRevCY"), GrandTotalRevCY)
            SetTextBoxValue(DBReader("GrandTotalExpCY"), GrandTotalExpCY)

            'G2-1. FINANCIAL AND OPERATIONAL PERFORMANCE
            SetTextBoxValue(DBReader("FinCashPY"), FinCashPY)
            SetTextBoxValue(DBReader("FinCashCY"), FinCashCY)
            SetTextBoxValue(DBReader("FinTotalRevPY"), FinTotalRevPY)
            SetTextBoxValue(DBReader("FinTotalRevCY"), FinTotalRevCY)
            SetTextBoxValue(DBReader("FinTotalExpPY"), FinTotalExpPY)
            SetTextBoxValue(DBReader("FinTotalExpCY"), FinTotalExpCY)
            SetTextBoxValue(DBReader("FinBadDebtPY"), FinBadDebtPY)
            SetTextBoxValue(DBReader("FinBadDebtCY"), FinBadDebtCY)
            SetTextBoxValue(DBReader("FinNetIncomePY"), FinNetIncomePY)
            SetTextBoxValue(DBReader("FinNetIncomeCY"), FinNetIncomeCY)
            SetTextBoxValue(DBReader("FinDebtCoverRatioPY"), FinDebtCoverRatioPY)
            SetTextBoxValue(DBReader("FinDebtCoverRatioCY"), FinDebtCoverRatioCY)
            SetTextBoxValue(DBReader("FinAdjEBITDAPY"), FinAdjEBITDAPY)
            SetTextBoxValue(DBReader("FinAdjEBITDACY"), FinAdjEBITDACY)

            'G2-2. TOTAL PALLIATIVE CARE REVENUE
            SetTextBoxValue(DBReader("PalMedicareRevPY"), PalMedicareRevPY)
            SetTextBoxValue(DBReader("PalMedicareExpPY"), PalMedicareExpPY)
            SetTextBoxValue(DBReader("PalMedicareRevCY"), PalMedicareRevCY)
            SetTextBoxValue(DBReader("PalMedicareExpCY"), PalMedicareExpCY)
            SetTextBoxValue(DBReader("PalMedicaidRevPY"), PalMedicaidRevPY)
            SetTextBoxValue(DBReader("PalMedicaidExpPY"), PalMedicaidExpPY)
            SetTextBoxValue(DBReader("PalMedicaidRevCY"), PalMedicaidRevCY)
            SetTextBoxValue(DBReader("PalMedicaidExpCY"), PalMedicaidExpCY)
            SetTextBoxValue(DBReader("PalInsRevPY"), PalInsRevPY)
            SetTextBoxValue(DBReader("PalInsExpPY"), PalInsExpPY)
            SetTextBoxValue(DBReader("PalInsRevCY"), PalInsRevCY)
            SetTextBoxValue(DBReader("PalInsExpCY"), PalInsExpCY)
            SetTextBoxValue(DBReader("PalSelfPayRevPY"), PalSelfPayRevPY)
            SetTextBoxValue(DBReader("PalSelfPayExpPY"), PalSelfPayExpPY)
            SetTextBoxValue(DBReader("PalSelfPayRevCY"), PalSelfPayRevCY)
            SetTextBoxValue(DBReader("PalSelfPayExpCY"), PalSelfPayExpCY)
            SetTextBoxValue(DBReader("PalOthGovtRevPY"), PalOthGovtRevPY)
            SetTextBoxValue(DBReader("PalOthGovtExpPY"), PalOthGovtExpPY)
            SetTextBoxValue(DBReader("PalOthGovtRevCY"), PalOthGovtRevCY)
            SetTextBoxValue(DBReader("PalOthGovtExpCY"), PalOthGovtExpCY)
            SetTextBoxValue(DBReader("PalTotalHospServRevPY"), PalTotalHospServRevPY)
            SetTextBoxValue(DBReader("PalTotalHospServExpPY"), PalTotalHospServExpPY)
            SetTextBoxValue(DBReader("PalTotalHospServRevCY"), PalTotalHospServRevCY)
            SetTextBoxValue(DBReader("PalTotalHospServExpCY"), PalTotalHospServExpCY)
        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Sub SaveSurvey(ByVal int As Integer)
        Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        strSQL = "Update Survey SET "

        If Len(HospMedicarePatients.Text & "") > 0 Then strSQL = strSQL & " HospMedicarePatients='" & HospMedicarePatients.Text & "'," Else strSQL = strSQL & " HospMedicarePatients=0,"
        If Len(MedRoutine.Text & "") > 0 Then strSQL = strSQL & " MedRoutine='" & MedRoutine.Text & "'," Else strSQL = strSQL & " MedRoutine=0,"
        If Len(MedInpatient.Text & "") > 0 Then strSQL = strSQL & " MedInpatient='" & MedInpatient.Text & "'," Else strSQL = strSQL & " MedInpatient=0,"
        If Len(MedRespite.Text & "") > 0 Then strSQL = strSQL & " MedRespite='" & MedRespite.Text & "'," Else strSQL = strSQL & " MedRespite=0,"
        If Len(MedContinuous.Text & "") > 0 Then strSQL = strSQL & " MedContinuous='" & MedContinuous.Text & "'," Else strSQL = strSQL & " MedContinuous=0,"
        If Len(HospMedicareDays.Text & "") > 0 Then strSQL = strSQL & " HospMedicareDays='" & HospMedicareDays.Text & "'," Else strSQL = strSQL & " HospMedicareDays=0,"
        If Len(HospMedicaidPatients.Text & "") > 0 Then strSQL = strSQL & " HospMedicaidPatients='" & HospMedicaidPatients.Text & "'," Else strSQL = strSQL & " HospMedicaidPatients=0,"
        If Len(MediRoutine.Text & "") > 0 Then strSQL = strSQL & " MediRoutine='" & MediRoutine.Text & "'," Else strSQL = strSQL & " MediRoutine=0,"
        If Len(MediInpatient.Text & "") > 0 Then strSQL = strSQL & " MediInpatient='" & MediInpatient.Text & "'," Else strSQL = strSQL & " MediInpatient=0,"
        If Len(MediRespite.Text & "") > 0 Then strSQL = strSQL & " MediRespite='" & MediRespite.Text & "'," Else strSQL = strSQL & " MediRespite=0,"
        If Len(MediContinuous.Text & "") > 0 Then strSQL = strSQL & " MediContinuous='" & MediContinuous.Text & "'," Else strSQL = strSQL & " MediContinuous=0,"
        If Len(HospMedicaidDays.Text & "") > 0 Then strSQL = strSQL & " HospMedicaidDays='" & HospMedicaidDays.Text & "'," Else strSQL = strSQL & " HospMedicaidDays=0,"
        If Len(MediMCOPats.Text & "") > 0 Then strSQL = strSQL & " MediMCOPats='" & MediMCOPats.Text & "'," Else strSQL = strSQL & " MediMCOPats=0,"
        If Len(MediMCORoutine.Text & "") > 0 Then strSQL = strSQL & " MediMCORoutine='" & MediMCORoutine.Text & "'," Else strSQL = strSQL & " MediMCORoutine=0,"
        If Len(MediMCOInpat.Text & "") > 0 Then strSQL = strSQL & " MediMCOInpat='" & MediMCOInpat.Text & "'," Else strSQL = strSQL & " MediMCOInpat=0,"
        If Len(MediMCORespite.Text & "") > 0 Then strSQL = strSQL & " MediMCORespite='" & MediMCORespite.Text & "'," Else strSQL = strSQL & " MediMCORespite=0,"
        If Len(MediMCOCont.Text & "") > 0 Then strSQL = strSQL & " MediMCOCont='" & MediMCOCont.Text & "'," Else strSQL = strSQL & " MediMCOCont=0,"
        If Len(MediMCODays.Text & "") > 0 Then strSQL = strSQL & " MediMCODays='" & MediMCODays.Text & "'," Else strSQL = strSQL & " MediMCODays=0,"
        If Len(ComServed.Text & "") > 0 Then strSQL = strSQL & " ComServed='" & ComServed.Text & "'," Else strSQL = strSQL & " ComServed=0,"
        If Len(ComRoutine.Text & "") > 0 Then strSQL = strSQL & " ComRoutine='" & ComRoutine.Text & "'," Else strSQL = strSQL & " ComRoutine=0,"
        If Len(ComInpatient.Text & "") > 0 Then strSQL = strSQL & " ComInpatient='" & ComInpatient.Text & "'," Else strSQL = strSQL & " ComInpatient=0,"
        If Len(ComRespite.Text & "") > 0 Then strSQL = strSQL & " ComRespite='" & ComRespite.Text & "'," Else strSQL = strSQL & " ComRespite=0,"
        If Len(ComContinuous.Text & "") > 0 Then strSQL = strSQL & " ComContinuous='" & ComContinuous.Text & "'," Else strSQL = strSQL & " ComContinuous=0,"
        If Len(ComTot.Text & "") > 0 Then strSQL = strSQL & " ComTot='" & ComTot.Text & "'," Else strSQL = strSQL & " ComTot=0,"
        If Len(ComNonMCOServed.Text & "") > 0 Then strSQL = strSQL & " ComNonMCOServed='" & ComNonMCOServed.Text & "'," Else strSQL = strSQL & " ComNonMCOServed=0,"
        If Len(ComNonMCORoutine.Text & "") > 0 Then strSQL = strSQL & " ComNonMCORoutine='" & ComNonMCORoutine.Text & "'," Else strSQL = strSQL & " ComNonMCORoutine=0,"
        If Len(ComNonMCOInpatient.Text & "") > 0 Then strSQL = strSQL & " ComNonMCOInpatient='" & ComNonMCOInpatient.Text & "'," Else strSQL = strSQL & " ComNonMCOInpatient=0,"
        If Len(ComNonMCORespite.Text & "") > 0 Then strSQL = strSQL & " ComNonMCORespite='" & ComNonMCORespite.Text & "'," Else strSQL = strSQL & " ComNonMCORespite=0,"
        If Len(ComNonMCOContinuous.Text & "") > 0 Then strSQL = strSQL & " ComNonMCOContinuous='" & ComNonMCOContinuous.Text & "'," Else strSQL = strSQL & " ComNonMCOContinuous=0,"
        If Len(ComNonMCOTot.Text & "") > 0 Then strSQL = strSQL & " ComNonMCOTot='" & ComNonMCOTot.Text & "'," Else strSQL = strSQL & " ComNonMCOTot=0,"
        If Len(ComMCOServed.Text & "") > 0 Then strSQL = strSQL & " ComMCOServed='" & ComMCOServed.Text & "'," Else strSQL = strSQL & " ComMCOServed=0,"
        If Len(ComMCORoutine.Text & "") > 0 Then strSQL = strSQL & " ComMCORoutine='" & ComMCORoutine.Text & "'," Else strSQL = strSQL & " ComMCORoutine=0,"
        If Len(ComMCOInpatient.Text & "") > 0 Then strSQL = strSQL & " ComMCOInpatient='" & ComMCOInpatient.Text & "'," Else strSQL = strSQL & " ComMCOInpatient=0,"
        If Len(ComMCORespite.Text & "") > 0 Then strSQL = strSQL & " ComMCORespite='" & ComMCORespite.Text & "'," Else strSQL = strSQL & " ComMCORespite=0,"
        If Len(ComMCOContinuous.Text & "") > 0 Then strSQL = strSQL & " ComMCOContinuous='" & ComMCOContinuous.Text & "'," Else strSQL = strSQL & " ComMCOContinuous=0,"
        If Len(ComMCOTot.Text & "") > 0 Then strSQL = strSQL & " ComMCOTot='" & ComMCOTot.Text & "'," Else strSQL = strSQL & " ComMCOTot=0,"
        If Len(BlueServed.Text & "") > 0 Then strSQL = strSQL & " BlueServed='" & BlueServed.Text & "'," Else strSQL = strSQL & " BlueServed=0,"
        If Len(BlueRoutine.Text & "") > 0 Then strSQL = strSQL & " BlueRoutine='" & BlueRoutine.Text & "'," Else strSQL = strSQL & " BlueRoutine=0,"
        If Len(BlueInpatient.Text & "") > 0 Then strSQL = strSQL & " BlueInpatient='" & BlueInpatient.Text & "'," Else strSQL = strSQL & " BlueInpatient=0,"
        If Len(BlueRespite.Text & "") > 0 Then strSQL = strSQL & " BlueRespite='" & BlueRespite.Text & "'," Else strSQL = strSQL & " BlueRespite=0,"
        If Len(BlueContinuous.Text & "") > 0 Then strSQL = strSQL & " BlueContinuous='" & BlueContinuous.Text & "'," Else strSQL = strSQL & " BlueContinuous=0,"
        If Len(BlueTot.Text & "") > 0 Then strSQL = strSQL & " BlueTot='" & BlueTot.Text & "'," Else strSQL = strSQL & " BlueTot=0,"
        If Len(BlueNonMCOServed.Text & "") > 0 Then strSQL = strSQL & " BlueNonMCOServed='" & BlueNonMCOServed.Text & "'," Else strSQL = strSQL & " BlueNonMCOServed=0,"
        If Len(BlueNonMCORoutine.Text & "") > 0 Then strSQL = strSQL & " BlueNonMCORoutine='" & BlueNonMCORoutine.Text & "'," Else strSQL = strSQL & " BlueNonMCORoutine=0,"
        If Len(BlueNonMCOInpatient.Text & "") > 0 Then strSQL = strSQL & " BlueNonMCOInpatient='" & BlueNonMCOInpatient.Text & "'," Else strSQL = strSQL & " BlueNonMCOInpatient=0,"
        If Len(BlueNonMCORespite.Text & "") > 0 Then strSQL = strSQL & " BlueNonMCORespite='" & BlueNonMCORespite.Text & "'," Else strSQL = strSQL & " BlueNonMCORespite=0,"
        If Len(BlueNonMCOContinuous.Text & "") > 0 Then strSQL = strSQL & " BlueNonMCOContinuous='" & BlueNonMCOContinuous.Text & "'," Else strSQL = strSQL & " BlueNonMCOContinuous=0,"
        If Len(BlueNonMCOTot.Text & "") > 0 Then strSQL = strSQL & " BlueNonMCOTot='" & BlueNonMCOTot.Text & "'," Else strSQL = strSQL & " BlueNonMCOTot=0,"
        If Len(BlueMCOServed.Text & "") > 0 Then strSQL = strSQL & " BlueMCOServed='" & BlueMCOServed.Text & "'," Else strSQL = strSQL & " BlueMCOServed=0,"
        If Len(BlueMCORoutine.Text & "") > 0 Then strSQL = strSQL & " BlueMCORoutine='" & BlueMCORoutine.Text & "'," Else strSQL = strSQL & " BlueMCORoutine=0,"
        If Len(BlueMCOInpatient.Text & "") > 0 Then strSQL = strSQL & " BlueMCOInpatient='" & BlueMCOInpatient.Text & "'," Else strSQL = strSQL & " BlueMCOInpatient=0,"
        If Len(BlueMCORespite.Text & "") > 0 Then strSQL = strSQL & " BlueMCORespite='" & BlueMCORespite.Text & "'," Else strSQL = strSQL & " BlueMCORespite=0,"
        If Len(BlueMCOContinuous.Text & "") > 0 Then strSQL = strSQL & " BlueMCOContinuous='" & BlueMCOContinuous.Text & "'," Else strSQL = strSQL & " BlueMCOContinuous=0,"
        If Len(BlueMCOTot.Text & "") > 0 Then strSQL = strSQL & " BlueMCOTot='" & BlueMCOTot.Text & "'," Else strSQL = strSQL & " BlueMCOTot=0,"
        If Len(SelfPayPatients.Text & "") > 0 Then strSQL = strSQL & " SelfPayPatients='" & SelfPayPatients.Text & "'," Else strSQL = strSQL & " SelfPayPatients=0,"
        If Len(SelfRoutine.Text & "") > 0 Then strSQL = strSQL & " SelfRoutine='" & SelfRoutine.Text & "'," Else strSQL = strSQL & " SelfRoutine=0,"
        If Len(SelfInpatient.Text & "") > 0 Then strSQL = strSQL & " SelfInpatient='" & SelfInpatient.Text & "'," Else strSQL = strSQL & " SelfInpatient=0,"
        If Len(SelfRespite.Text & "") > 0 Then strSQL = strSQL & " SelfRespite='" & SelfRespite.Text & "'," Else strSQL = strSQL & " SelfRespite=0,"
        If Len(SelfContinuous.Text & "") > 0 Then strSQL = strSQL & " SelfContinuous='" & SelfContinuous.Text & "'," Else strSQL = strSQL & " SelfContinuous=0,"
        If Len(SelfPayDays.Text & "") > 0 Then strSQL = strSQL & " SelfPayDays='" & SelfPayDays.Text & "'," Else strSQL = strSQL & " SelfPayDays=0,"
        If Len(UnChPats.Text & "") > 0 Then strSQL = strSQL & " UnChPats='" & UnChPats.Text & "'," Else strSQL = strSQL & " UnChPats=0,"
        If Len(UnChRoutine.Text & "") > 0 Then strSQL = strSQL & " UnChRoutine='" & UnChRoutine.Text & "'," Else strSQL = strSQL & " UnChRoutine=0,"
        If Len(UnChInpat.Text & "") > 0 Then strSQL = strSQL & " UnChInpat='" & UnChInpat.Text & "'," Else strSQL = strSQL & " UnChInpat=0,"
        If Len(UnChRespite.Text & "") > 0 Then strSQL = strSQL & " UnChRespite='" & UnChRespite.Text & "'," Else strSQL = strSQL & " UnChRespite=0,"
        If Len(UnChCont.Text & "") > 0 Then strSQL = strSQL & " UnChCont='" & UnChCont.Text & "'," Else strSQL = strSQL & " UnChCont=0,"
        If Len(UnChDays.Text & "") > 0 Then strSQL = strSQL & " UnChDays='" & UnChDays.Text & "'," Else strSQL = strSQL & " UnChDays=0,"
        ' New 2014 --------------------------------------------------------------------------------------------------------
        If Len(ChyPats.Text & "") > 0 Then strSQL = strSQL & " ChyPats='" & ChyPats.Text & "'," Else strSQL = strSQL & " ChyPats=0,"
        If Len(ChyRoutine.Text & "") > 0 Then strSQL = strSQL & " ChyRoutine='" & ChyRoutine.Text & "'," Else strSQL = strSQL & " ChyRoutine=0,"
        If Len(ChyInpat.Text & "") > 0 Then strSQL = strSQL & " ChyInpat='" & ChyInpat.Text & "'," Else strSQL = strSQL & " ChyInpat=0,"
        If Len(ChyRespite.Text & "") > 0 Then strSQL = strSQL & " ChyRespite='" & ChyRespite.Text & "'," Else strSQL = strSQL & " ChyRespite=0,"
        If Len(ChyCont.Text & "") > 0 Then strSQL = strSQL & " ChyCont='" & ChyCont.Text & "'," Else strSQL = strSQL & " ChyCont=0,"
        If Len(ChyDays.Text & "") > 0 Then strSQL = strSQL & " ChyDays='" & ChyDays.Text & "'," Else strSQL = strSQL & " ChyDays=0,"
        '------------------------------------------------------------------------------------------------------------------
        If Len(OtherPatients.Text & "") > 0 Then strSQL = strSQL & " OtherPatients='" & OtherPatients.Text & "'," Else strSQL = strSQL & " OtherPatients=0,"
        If Len(OtherRoutine.Text & "") > 0 Then strSQL = strSQL & " OtherRoutine='" & OtherRoutine.Text & "'," Else strSQL = strSQL & " OtherRoutine=0,"
        If Len(OtherInpatient.Text & "") > 0 Then strSQL = strSQL & " OtherInpatient='" & OtherInpatient.Text & "'," Else strSQL = strSQL & " OtherInpatient=0,"
        If Len(OtherRespite.Text & "") > 0 Then strSQL = strSQL & " OtherRespite='" & OtherRespite.Text & "'," Else strSQL = strSQL & " OtherRespite=0,"
        If Len(OtherContinuous.Text & "") > 0 Then strSQL = strSQL & " OtherContinuous='" & OtherContinuous.Text & "'," Else strSQL = strSQL & " OtherContinuous=0,"
        If Len(OtherDays.Text & "") > 0 Then strSQL = strSQL & " OtherDays='" & OtherDays.Text & "'," Else strSQL = strSQL & " OtherDays=0,"
        If Len(TotHospPatients.Text & "") > 0 Then strSQL = strSQL & " TotHospPatients='" & TotHospPatients.Text & "'," Else strSQL = strSQL & " TotHospPatients=0,"
        If Len(LevelRoutine.Text & "") > 0 Then strSQL = strSQL & " LevelRoutine='" & LevelRoutine.Text & "'," Else strSQL = strSQL & " LevelRoutine=0,"
        If Len(LevelInpatient.Text & "") > 0 Then strSQL = strSQL & " LevelInpatient='" & LevelInpatient.Text & "'," Else strSQL = strSQL & " LevelInpatient=0,"
        If Len(LevelRespite.Text & "") > 0 Then strSQL = strSQL & " LevelRespite='" & LevelRespite.Text & "'," Else strSQL = strSQL & " LevelRespite=0,"
        If Len(LevelContinuous.Text & "") > 0 Then strSQL = strSQL & " LevelContinuous='" & LevelContinuous.Text & "'," Else strSQL = strSQL & " LevelContinuous=0,"
        If Len(TotHospDays.Text & "") > 0 Then strSQL = strSQL & " TotHospDays='" & TotHospDays.Text & "'," Else strSQL = strSQL & " TotHospDays=0,"

        'Commented following code 07/23
        'If Len(HospServRev.Text & "") > 0 Then strSQL = strSQL & " HospServRev='" & HospServRev.Text & "'," Else strSQL = strSQL & " HospServRev=0,"
        'If Len(HospServExp.Text & "") > 0 Then strSQL = strSQL & " HospServExp='" & HospServExp.Text & "'," Else strSQL = strSQL & " HospServExp=0,"
        'If Len(TotAgFundRev.Text & "") > 0 Then strSQL = strSQL & " TotAgFundRev='" & TotAgFundRev.Text & "'," Else strSQL = strSQL & " TotAgFundRev=0,"
        'If Len(TotAgFundExp.Text & "") > 0 Then strSQL = strSQL & " TotAgFundExp='" & TotAgFundExp.Text & "'," Else strSQL = strSQL & " TotAgFundExp=0,"
        'If Len(OtherAgRev.Text & "") > 0 Then strSQL = strSQL & " OtherAgRev='" & OtherAgRev.Text & "'," Else strSQL = strSQL & " OtherAgRev=0,"
        'If Len(OtherAgExp.Text & "") > 0 Then strSQL = strSQL & " OtherAgExp='" & OtherAgExp.Text & "'," Else strSQL = strSQL & " OtherAgExp=0,"
        'If Len(OverheadExp.Text & "") > 0 Then strSQL = strSQL & " OverheadExp='" & OverheadExp.Text & "'," Else strSQL = strSQL & " OverheadExp=0,"
        'If Len(LLRevenue.Text & "") > 0 Then strSQL = strSQL & " LLRevenue='" & LLRevenue.Text & "'," Else strSQL = strSQL & " LLRevenue=0,"
        'If Len(LLExpenses.Text & "") > 0 Then strSQL = strSQL & " LLExpenses='" & LLExpenses.Text & "'," Else strSQL = strSQL & " LLExpenses=0,"

        If Len(ARDays.Text & "") > 0 Then strSQL = strSQL & " ARDays='" & ARDays.Text & "'," Else strSQL = strSQL & " ARDays=0,"

        'G2	REVENUE (PART II) 07/23/2026
        strSQL = strSQL & MapTextValueField(MedicareRevPY, "MedicareRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicareExpPY, "MedicareExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicareRevCY, "MedicareRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicareExpCY, "MedicareExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicaidRevPY, "MedicaidRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicaidExpPY, "MedicaidExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicaidRevCY, "MedicaidRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(MedicaidExpCY, "MedicaidExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(InsRevPY, "InsRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(InsExpPY, "InsExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(InsRevCY, "InsRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(InsExpCY, "InsExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(SelfPayRevPY, "SelfPayRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(SelfPayExpPY, "SelfPayExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(SelfPayRevCY, "SelfPayRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(SelfPayExpCY, "SelfPayExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(OthGovtRevPY, "OthGovtRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(OthGovtExpPY, "OthGovtExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(OthGovtRevCY, "OthGovtRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(OthGovtExpCY, "OthGovtExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalHospServRevPY, "TotalHospServRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalHospServExpPY, "TotalHospServExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalHospServRevCY, "TotalHospServRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalHospServExpCY, "TotalHospServExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalAgFundRevPY, "TotalAgFundRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalAgFundExpPY, "TotalAgFundExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalAgFundRevCY, "TotalAgFundRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalAgFundExpCY, "TotalAgFundExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalOtherRevPY, "TotalOtherRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalOtherExpPY, "TotalOtherExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalOtherRevCY, "TotalOtherRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalOtherExpCY, "TotalOtherExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalCharityRevPY, "TotalCharityRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalCharityExpPY, "TotalCharityExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalCharityRevCY, "TotalCharityRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalCharityExpCY, "TotalCharityExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalStaffEduExpPY, "TotalStaffEduExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalStaffEduExpCY, "TotalStaffEduExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalNoInsExpPY, "TotalNoInsExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalNoInsExpCY, "TotalNoInsExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalOverExpPY, "TotalOverExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(TotalOverExpCY, "TotalOverExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(GrandTotalRevPY, "GrandTotalRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(GrandTotalExpPY, "GrandTotalExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(GrandTotalRevCY, "GrandTotalRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(GrandTotalExpCY, "GrandTotalExpCY", "0.00")

        'G2-1. FINANCIAL AND OPERATIONAL PERFORMANCE
        strSQL = strSQL & MapTextValueField(FinCashPY, "FinCashPY", "0.00")
        strSQL = strSQL & MapTextValueField(FinCashCY, "FinCashCY", "0.00")
        strSQL = strSQL & MapTextValueField(FinTotalRevPY, "FinTotalRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(FinTotalRevCY, "FinTotalRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(FinTotalExpPY, "FinTotalExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(FinTotalExpCY, "FinTotalExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(FinBadDebtPY, "FinBadDebtPY", "0.00")
        strSQL = strSQL & MapTextValueField(FinBadDebtCY, "FinBadDebtCY", "0.00")
        strSQL = strSQL & MapTextValueField(FinNetIncomePY, "FinNetIncomePY", "0.00")
        strSQL = strSQL & MapTextValueField(FinNetIncomeCY, "FinNetIncomeCY", "0.00")
        strSQL = strSQL & MapTextValueField(FinDebtCoverRatioPY, "FinDebtCoverRatioPY", "0.00")
        strSQL = strSQL & MapTextValueField(FinDebtCoverRatioCY, "FinDebtCoverRatioCY", "0.00")
        strSQL = strSQL & MapTextValueField(FinAdjEBITDAPY, "FinAdjEBITDAPY", "0.00")
        strSQL = strSQL & MapTextValueField(FinAdjEBITDACY, "FinAdjEBITDACY", "0.00")

        'G2-2. TOTAL PALLIATIVE CARE REVENUE
        strSQL = strSQL & MapTextValueField(PalMedicareRevPY, "PalMedicareRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicareExpPY, "PalMedicareExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicareRevCY, "PalMedicareRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicareExpCY, "PalMedicareExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicaidRevPY, "PalMedicaidRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicaidExpPY, "PalMedicaidExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicaidRevCY, "PalMedicaidRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalMedicaidExpCY, "PalMedicaidExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalInsRevPY, "PalInsRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalInsExpPY, "PalInsExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalInsRevCY, "PalInsRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalInsExpCY, "PalInsExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalSelfPayRevPY, "PalSelfPayRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalSelfPayExpPY, "PalSelfPayExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalSelfPayRevCY, "PalSelfPayRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalSelfPayExpCY, "PalSelfPayExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalOthGovtRevPY, "PalOthGovtRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalOthGovtExpPY, "PalOthGovtExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalOthGovtRevCY, "PalOthGovtRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalOthGovtExpCY, "PalOthGovtExpCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalTotalHospServRevPY, "PalTotalHospServRevPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalTotalHospServExpPY, "PalTotalHospServExpPY", "0.00")
        strSQL = strSQL & MapTextValueField(PalTotalHospServRevCY, "PalTotalHospServRevCY", "0.00")
        strSQL = strSQL & MapTextValueField(PalTotalHospServExpCY, "PalTotalHospServExpCY", "0.00")

        strSQL = strSQL & " SectionG='" & int & "'"
        strSQL = strSQL & " where UserName='" & UserName.Text & "'"

        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey(strSQL)
    End Sub

End Class
