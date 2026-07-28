Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionA
    'Inherits System.Web.UI.Page
    Inherits BasePage
    Public CurrentYear As String = GetYear()
    Public PreviousYear As String = GetYear() - 1

    Dim totalerror As Integer = 0
    Dim admissions As Integer = 0
    Dim deaths As Integer = 0
    Dim nondeaths As Integer = 0


    ' C1a-------------------------------------
    Dim carryoversTotal As Integer = 0
    Dim UndupHomeAdmitTotal As Integer = 0
    Dim UndupInptAdmitTotal As Integer = 0
    Dim UndupResAdmitTotal As Integer = 0
    Dim UndupNurseAdmitTotal As Integer = 0
    Dim UndupAssistAdmitTotal As Integer = 0
    Dim PatientsTotal As Integer = 0
    Dim DeathsTotal As Integer = 0
    Dim NonDeathDischargesTotal As Integer = 0

    ' C1b--------------------------------------
    Dim TotReAdmissionsTotal As Integer = 0
    Dim TotReAdmissionsPriorTotal As Integer = 0
    Dim NDDExProgTotal As Integer = 0
    Dim NDDCurativeTotal As Integer = 0
    'Dim NDDRefusedTotal As Integer = 0
    'Dim NDDOOATotal As Integer = 0
    Dim NDDTransTotal As Integer = 0
    'Dim NDDCauseTotal As Integer = 0
    Dim NDDOtherTotal As Integer = 0

    ' D1 Age and Gender
    Dim gTAge01 As Integer = 0
    Dim gTAge1to12 As Integer = 0
    Dim gTAge13to18 As Integer = 0
    Dim gTAge19to20 As Integer = 0
    'Dim gTAge25 As Integer = 0
    Dim gTTotalAge0to20 As Integer = 0
    Dim gTAge21to34 As Integer = 0
    Dim gTAge35to64 As Integer = 0
    Dim gTAge65 As Integer = 0
    Dim gTAge75 As Integer = 0
    Dim gTAge85 As Integer = 0
    Dim gTAgeTot As Integer = 0
    Dim gTSexF As Integer = 0
    Dim gTSexO As Integer = 0
    Dim gTSexM As Integer = 0
    Dim gTSexTot As Integer = 0

    ' D1a Race
    Dim gTEthHispanic As Integer = 0
    Dim gTEthNonHispanic As Integer = 0
    Dim gTEthTotal As Integer = 0
    Dim gTRaceAmInd As Integer = 0
    Dim gTRaceBlack As Integer = 0
    Dim gTRaceAsian As Integer = 0
    Dim gTRaceHawPacIs As Integer = 0
    Dim gTRaceWhite As Integer = 0
    Dim gTRaceMultiracial As Integer = 0
    Dim gTRaceOther As Integer = 0
    Dim gTRaceUnknown As Integer = 0
    Dim gTRaceTot As Integer = 0

    Protected Overloads Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'Changed following code - JS
            'Dim cookie As HttpCookie
            'cookie = Request.Cookies.Get("Hospiceusersettings")

            If Len(Request.QueryString("username") & "") > 0 Then
                UserName.Text = Request.QueryString("username")
                lblFirstname.Text = Request.QueryString("firstName")
                lblLastName.Text = ", Review by MHCC " & " " & FormatDateTime(Today)
            Else
                'If (cookie Is Nothing) Then
                '    Response.Redirect("noaccess.html")
                'Else
                '    UserName.Text = Request.Cookies("Hospiceusersettings")("UserName")
                '    lblFirstname.Text = Request.Cookies("Hospiceusersettings")("FirstName")
                '    lblLastName.Text = Request.Cookies("Hospiceusersettings")("LastName")
                'End If
                UserName.Text = GetUserName()
                lblFirstname.Text = GetFirstName()
                lblLastName.Text = GetLastName()
            End If

            'Changed following code - JS
            SY0.Text = GetYear()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            SY3.Text = GetYear()
            SY4.Text = GetYear()
            SY5.Text = GetYear()
            SY6.Text = GetYear()
            SY7.Text = GetYear()
            'SY8.Text = GetYear()
            'SY9.Text = GetYear()
            SY10.Text = GetYear()
            SY11.Text = GetYear()
            'SY12.Text = GetYear()
            'SY13.Text = GetYear()
            SY14.Text = GetYear()
            SY15.Text = GetYear()
            SY16.Text = GetYear()
            SY17.Text = GetYear()
            SY18.Text = GetYear()
            SY19.Text = GetYear()
            SY20.Text = GetYear()
            SY21.Text = GetYear()
            SY22.Text = GetYear()
            SY23.Text = GetYear()
            SY24.Text = GetYear()
            SY25.Text = GetYear()
            SY26.Text = GetYear()
            SY27.Text = GetYear()
            SY28.Text = GetYear()
            SY29.Text = GetYear()
            SY30.Text = GetYear()
            SY31.Text = GetYear()
            SY32.Text = GetYear()

            '------------------------------------------------------------------------------
            lblH.Visible = False
            ListView_H.Visible = False
            lblI.Visible = False
            ListView_I.Visible = False
            '------------------------------------------------------------------------------
            LoadSurveySectionA()
            LoadSurveySectionB()
            LoadSurveySectionC1a()
            LoadSurveySectionC1b()
            LoadSurveySectionC2()
            LoadSurveySectionD1()
            LoadSurveySectionD1a()
            LoadSurveySectionD2()
            LoadSurveySectionE()
            LoadSurveySectionF()
            LoadSurveySectionF2()
            LoadComments()
            LoadCert()
        End If
    End Sub


    Sub LoadSurveySectionA()
        'commented code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()


            If Len(DBReader("Agency") & "") > 0 Then Agency.Text = DBReader("Agency")
            If Len(DBReader("AddressLine1") & "") > 0 Then AddressLine1.Text = DBReader("AddressLine1")
            If Len(DBReader("City") & "") > 0 Then City.Text = DBReader("City")
            County.ClearSelection()
            If Len(DBReader("County") & "") > 0 Then County.Items.FindByValue(DBReader("County")).Selected = True
            If Len(DBReader("Zipcode") & "") > 0 Then Zipcode.Text = DBReader("Zipcode")


            If Len(DBReader("AdminName") & "") > 0 Then AdminName.Text = DBReader("AdminName")
            If Len(DBReader("AgenPhone") & "") > 0 Then AgenPhone.Text = DBReader("AgenPhone")
            If Len(DBReader("Email") & "") > 0 Then Email.Text = DBReader("Email")
            If Len(DBReader("PreparedBy") & "") > 0 Then PreparedBy.Text = DBReader("PreparedBy")
            If Len(DBReader("Phone") & "") > 0 Then Phone.Text = DBReader("Phone")
            ProgChangeName.ClearSelection()
            If Len(DBReader("ProgChangeName") & "") > 0 Then ProgChangeName.Items.FindByValue(DBReader("ProgChangeName")).Selected = True
            If Len(DBReader("ProgChangeName") & "") > 0 Then
                ProgChangeName.Items.FindByValue(DBReader("ProgChangeName")).Selected = True
                If DBReader("ProgChangeName") = "1" Then
                    Panel_A1.Visible = True

                    If Len(DBReader("FormerName") & "") > 0 Then FormerName.Text = DBReader("FormerName")
                    MonthChang.ClearSelection()
                    If Len(DBReader("MonthChang") & "") > 0 Then MonthChang.Items.FindByValue(DBReader("MonthChang")).Selected = True
                    DayChang.ClearSelection()
                    If Len(DBReader("DayChang") & "") > 0 Then DayChang.Items.FindByValue(DBReader("DayChang")).Selected = True
                Else
                    Panel_A1.Visible = False
                End If
            Else
                Panel_A1.Visible = True
            End If

        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Sub LoadSurveySectionB()
        'commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()

            License_Type.ClearSelection()
            If Len(DBReader("License_Type") & "") > 0 Then License_Type.Items.FindByValue(DBReader("License_Type")).Selected = True
            AgType.ClearSelection()
            If Len(DBReader("AgType") & "") > 0 Then AgType.Items.FindByValue(DBReader("AgType")).Selected = True
            Ownership.ClearSelection()
            If Len(DBReader("Ownership") & "") > 0 Then Ownership.Items.FindByValue(DBReader("Ownership")).Selected = True
            TaxStatus.ClearSelection()
            If Len(DBReader("TaxStatus") & "") > 0 Then TaxStatus.Items.FindByValue(DBReader("TaxStatus")).Selected = True
            OwnChange.ClearSelection()
            If Len(DBReader("OwnChange") & "") > 0 Then
                OwnChange.Items.FindByValue(DBReader("OwnChange")).Selected = True
                If DBReader("OwnChange") = "1" Then
                    Panel_1.Visible = True
                    If Len(DBReader("FormerOwner") & "") > 0 Then FormerOwner.Text = DBReader("FormerOwner")
                    If Len(DBReader("CurOwner") & "") > 0 Then CurOwner.Text = DBReader("CurOwner")
                    If Len(DBReader("ChangeMon") & "") > 0 Then ChangeMon.Items.FindByValue(DBReader("ChangeMon")).Selected = True
                    If Len(DBReader("ChangeDay") & "") > 0 Then ChangeDay.Items.FindByValue(DBReader("ChangeDay")).Selected = True
                    'New Code 07/27/2026
                    'General Information
                    SetCheckboxSelection(DBReader("IsRealestateOW"), chkRealEstateOW)
                    If chkRealEstateOW.Checked Then
                        SetRadiobuttonLstSelection(DBReader("OpEntityRelation"), rblEntityRelation)
                        rblEntityRelation.Enabled = True
                        If DBReader("OpEntityRelation") = "4" Then
                            txtEntityOther.Text = DBReader("EntityRelationOther")
                            txtEntityOther.Enabled = True
                            rfvEntityOther.Enabled = True
                            txtEntityOther.Style("background-color") = "#FFFFFF"
                        End If
                    End If
                    SetCheckboxSelection(DBReader("IsOperationsOwner"), chkOpOwner)
                    If chkOpOwner.Checked Then
                        chkOpOwner.Checked = True
                        txtLegalName.Text = DBReader("EntityLegalName")
                        txtLegalName.Enabled = True
                        txtLegalName.Style("background-color") = "#FFFFFF"
                        rfvLegalName.Enabled = True
                        txtEIN.Text = DBReader("EIN")
                        txtEIN.Enabled = True
                        txtEIN.Style("background-color") = "#FFFFFF"
                        rfvEIN.Enabled = True
                        txtPercent.Text = DBReader("OW_Percetage")
                        txtPercent.Enabled = True
                        txtPercent.Style("background-color") = "#FFFFFF"
                        rfvPercent.Enabled = True
                    End If
                    SetCheckboxSelection(DBReader("IsParentEntity"), chkParentEntity)
                    SetCheckboxSelection(DBReader("IsMgtCompany"), chkMgtCompany)
                    SetCheckboxSelection(DBReader("IsInternalRestruct"), chkIntRestruct)
                    SetCheckboxSelection(DBReader("IsTransferAsset"), chkTransferAsset)
                    SetCheckboxSelection(DBReader("IsOtherNature"), chkOtherNature)
                    If chkOtherNature.Checked Then
                        txtOtherNature.Text = DBReader("OW_OtherNature")
                        txtOtherNature.Style("background-color") = "#FFFFFF"
                        rfvOtherNature.Enabled = True
                    End If
                    'Ownership and Control
                    SetRadiobuttonLstSelection(DBReader("OW_PvtEquity"), rblPvtEquity)
                    SetRadiobuttonLstSelection(DBReader("OW_CorpChain"), rblCorpChain)
                    SetRadiobuttonLstSelection(DBReader("OW_REIT"), rblREIT)

                    If DBReader("OW_REIT") = "1" Then
                        txtREITName.Text = DBReader("OW_REIT_Name")
                        txtREITName.Enabled = True
                        txtREITName.Style("background-color") = "#FFFFFF"
                        rfvREITName.Enabled = True
                    End If

                    SetCheckboxSelection(DBReader("Operations"), chkOperations)
                    If chkOperations.Checked Then
                        ddlOpPercent.Enabled = True
                        SetDropdownLstSelection(DBReader("OperationsPerct"), ddlOpPercent)
                    End If
                    SetCheckboxSelection(DBReader("Financing"), chkFinancing)
                    If chkFinancing.Checked Then
                        ddlFinancing.Enabled = True
                        SetDropdownLstSelection(DBReader("FinancingPerct"), ddlFinancing)
                    End If
                    SetCheckboxSelection(DBReader("RealEstate"), chkRealestate)
                    If chkRealestate.Checked Then
                        ddlRealEstate.Enabled = True
                        SetDropdownLstSelection(DBReader("RealEstatePerct"), ddlRealEstate)
                    End If
                    SetCheckboxSelection(DBReader("Mgt"), chkMgt)
                    If chkMgt.Checked Then
                        ddlMgt.Enabled = True
                        SetDropdownLstSelection(DBReader("MgtPerct"), ddlMgt)
                    End If
                    SetRadiobuttonLstSelection(DBReader("IsMgtServAgreement"), rblMgtSvcAgreement)

                    If Len(DBReader("TransPrice")) > 0 Then
                        txtTransPrice.Text = DBReader("TransPrice")
                    End If
                    SetCheckboxSelection(DBReader("TransFinSustain"), chkFinSustain)
                    SetCheckboxSelection(DBReader("TransRenovation"), chkRenovation)
                    SetCheckboxSelection(DBReader("TransMktGrowth"), chkGrowth)
                    SetCheckboxSelection(DBReader("TransCompliance"), chkCompliance)
                    SetCheckboxSelection(DBReader("IsTransOther"), chkTransOther)
                    If chkTransOther.Checked Then
                        txtTransOther.Text = DBReader("TransOther")
                        txtTransOther.Enabled = True
                        txtTransOther.Style("background-color") = "#FFFFFF"
                        rfvTransOther.Enabled = True
                    End If

                    SetCheckboxSelection(DBReader("OrgChart"), chkOrgChart)
                    SetCheckboxSelection(DBReader("OpAgreement"), chkOpAgreement)
                    SetCheckboxSelection(DBReader("Lease"), chkLease)
                    SetCheckboxSelection(DBReader("MgtServAgreement"), chkMgtServAgreement)
                    SetCheckboxSelection(DBReader("FinAgreement"), chkFinAgreement)
                    SetCheckboxSelection(DBReader("PayorContract"), chkPayorContract)
                    SetCheckboxSelection(DBReader("DocNotApplicable"), chkDocNA)
                    SetRadiobuttonLstSelection(DBReader("OwnershipChange"), rblOwnershipChange)
                Else
                    Panel_1.Visible = False
                End If
            Else
                Panel_1.Visible = True
            End If
            Location_Type.ClearSelection()
            If Len(DBReader("Location_Type") & "") > 0 Then Location_Type.Items.FindByValue(DBReader("Location_Type")).Selected = True
            MultiLoc.ClearSelection()
            If Len(DBReader("MultiLoc") & "") > 0 Then
                MultiLoc.Items.FindByValue(DBReader("MultiLoc")).Selected = True
                If DBReader("MultiLoc") = "1" Then
                    Panel2.Visible = True
                    If Len(DBReader("HeadAddress") & "") > 0 Then HeadAddress.Text = DBReader("HeadAddress")
                    If Len(DBReader("HeadCity") & "") > 0 Then HeadCity.Text = DBReader("HeadCity")
                    If Len(DBReader("HeadCounty") & "") > 0 Then HeadCounty.Items.FindByValue(DBReader("HeadCounty")).Selected = True
                    If Len(DBReader("HeadState") & "") > 0 Then HeadState.Items.FindByValue(DBReader("HeadState")).Selected = True
                    If Len(DBReader("HeadZip") & "") > 0 Then HeadZip.Text = DBReader("HeadZip")
                    If Len(DBReader("Loc1Zip") & "") > 0 Then Loc1Zip.Text = DBReader("Loc1Zip")
                    If Len(DBReader("Loc2Zip") & "") > 0 Then Loc2Zip.Text = DBReader("Loc2Zip")
                    If Len(DBReader("Loc3Zip") & "") > 0 Then Loc3Zip.Text = DBReader("Loc3Zip")
                    If Len(DBReader("Loc1Address") & "") > 0 Then Loc1Address.Text = DBReader("Loc1Address")
                    If Len(DBReader("Loc1City") & "") > 0 Then Loc1City.Text = DBReader("Loc1City")
                    If Len(DBReader("Loc1County") & "") > 0 Then Loc1County.Items.FindByValue(DBReader("Loc1County")).Selected = True
                    If Len(DBReader("Loc1State") & "") > 0 Then Loc1State.Items.FindByValue(DBReader("Loc1State")).Selected = True
                    If Len(DBReader("Loc2Address") & "") > 0 Then Loc2Address.Text = DBReader("Loc2Address")
                    If Len(DBReader("Loc2City") & "") > 0 Then Loc2City.Text = DBReader("Loc2City")
                    If Len(DBReader("Loc2County") & "") > 0 Then Loc2County.Items.FindByValue(DBReader("Loc2County")).Selected = True
                    If Len(DBReader("Loc2State") & "") > 0 Then Loc2State.Items.FindByValue(DBReader("Loc2State")).Selected = True
                    If Len(DBReader("Loc3Address") & "") > 0 Then Loc3Address.Text = DBReader("Loc3Address")
                    If Len(DBReader("Loc3City") & "") > 0 Then Loc3City.Text = DBReader("Loc3City")
                    If Len(DBReader("Loc3County") & "") > 0 Then Loc3County.Items.FindByValue(DBReader("Loc3County")).Selected = True
                    If Len(DBReader("Loc3State") & "") > 0 Then Loc3State.Items.FindByValue(DBReader("Loc3State")).Selected = True
                Else
                    Panel2.Visible = False
                End If
            Else
                Panel2.Visible = True
            End If
            MDLoc.ClearSelection()
            If Len(DBReader("MDLoc") & "") > 0 Then
                MDLoc.Items.FindByValue(DBReader("MDLoc")).Selected = True
                If DBReader("MDLoc") = "1" Then
                    Panel1.Visible = True
                    If Len(DBReader("LocJoin1a") & "") > 0 Then LocJoin1a.Text = DBReader("LocJoin1a")
                    If Len(DBReader("LocJoin1b") & "") > 0 Then LocJoin1b.Text = DBReader("LocJoin1b")
                    If Len(DBReader("LocJoin2a") & "") > 0 Then LocJoin2a.Text = DBReader("LocJoin2a")
                    If Len(DBReader("LocJoin2b") & "") > 0 Then LocJoin2b.Text = DBReader("LocJoin2b")
                    If Len(DBReader("LocJoin3a") & "") > 0 Then LocJoin3a.Text = DBReader("LocJoin3a")
                    If Len(DBReader("LocJoin3b") & "") > 0 Then LocJoin3b.Text = DBReader("LocJoin3b")
                    If Len(DBReader("LocJoin4a") & "") > 0 Then LocJoin4a.Text = DBReader("LocJoin4a")
                    If Len(DBReader("LocJoin4b") & "") > 0 Then LocJoin4b.Text = DBReader("LocJoin4b")
                Else
                    Panel1.Visible = False
                End If
            Else
                Panel1.Visible = True
            End If
            MedCert.ClearSelection()
            If Len(DBReader("MedCert") & "") > 0 Then
                MedCert.Items.FindByValue(DBReader("MedCert")).Selected = True
                If DBReader("MedCert") = "1" Then
                    Panel3.Visible = True
                    If Len(DBReader("MedProvNum") & "") > 0 Then MedProvNum.Text = DBReader("MedProvNum")
                    If Len(DBReader("Medicare_NPI") & "") > 0 Then Medicare_NPI.Text = DBReader("Medicare_NPI")
                Else
                    Panel3.Visible = False
                End If
            Else
                Panel3.Visible = True
            End If
            MediCert.ClearSelection()
            If Len(DBReader("MediCert") & "") > 0 Then
                MediCert.Items.FindByValue(DBReader("MediCert")).Selected = True
                If DBReader("MediCert") = "1" Then
                    Panel4.Visible = True
                    If Len(DBReader("MediProvNum") & "") > 0 Then MediProvNum.Text = DBReader("MediProvNum")
                Else
                    Panel4.Visible = False
                End If
            Else
                Panel4.Visible = True
            End If
            If Len(DBReader("AcStatusACHC") & "") > 0 Then
                If DBReader("AcStatusACHC") = True Then
                    AcStatusACHC.Checked = True
                End If
            End If
            If Len(DBReader("AcStatusCHAP") & "") > 0 Then
                If DBReader("AcStatusCHAP") = True Then
                    AcStatusCHAP.Checked = True
                End If
            End If
            If Len(DBReader("AcStatusJCAHO") & "") > 0 Then
                If DBReader("AcStatusJCAHO") = True Then
                    AcStatusJCAHO.Checked = True
                End If
            End If
            If Len(DBReader("AcByOther") & "") > 0 Then
                If DBReader("AcByOther") = True Then
                    AcByOther.Checked = True
                    AcByOther_text.Enabled = True
                    vAc.Enabled = True
                    AcByOther_text.Style("background-color") = "#FFFFFF"
                    If Len(DBReader("AcByOther_text") & "") > 0 Then AcByOther_text.Text = DBReader("AcByOther_text")
                Else
                    vAc.Enabled = False
                    AcByOther_text.Enabled = False
                    AcByOther_text.Text = ""
                    AcByOther_text.Style("background-color") = "#CCCCCC"
                End If
            End If
            If Len(DBReader("NoAccred") & "") > 0 Then
                If DBReader("NoAccred") = True Then
                    NoAccred.Checked = True
                End If
            End If

            LastMonFY.ClearSelection()
            If Len(DBReader("LastMonFY") & "") > 0 Then LastMonFY.Items.FindByValue(DBReader("LastMonFY")).Selected = True
            LastDayFY.ClearSelection()
            If Len(DBReader("LastDayFY") & "") > 0 Then LastDayFY.Items.FindByValue(DBReader("LastDayFY")).Selected = True
            FullFYPeriod.ClearSelection()
            If Len(DBReader("FullFYPeriod") & "") > 0 Then
                FullFYPeriod.Items.FindByValue(DBReader("FullFYPeriod")).Selected = True
                If DBReader("FullFYPeriod") = "0" Then
                    vMonthsInFY.Enabled = True
                    MonthsInFY.Enabled = True
                    MonthsInFY.Style("background-color") = "#FFFFFF"
                    If Len(DBReader("MonthsInFY") & "") > 0 Then MonthsInFY.Text = DBReader("MonthsInFY")
                Else
                    MonthsInFY.Enabled = False
                    MonthsInFY.Text = ""
                    vMonthsInFY.Enabled = False
                    MonthsInFY.Style("background-color") = "#CCCCCC"
                End If
            End If
            MoreFacilities_Inpt.ClearSelection()
            If Len(DBReader("MoreFacilities_Inpt") & "") > 0 Then
                MoreFacilities_Inpt.Items.FindByValue(DBReader("MoreFacilities_Inpt")).Selected = True
                If DBReader("MoreFacilities_Inpt") = "1" Then
                    lblH.Visible = True
                    ListView_H.Visible = True
                End If
            End If

            MoreFacilities_Res.ClearSelection()
            If Len(DBReader("MoreFacilities_Res") & "") > 0 Then
                MoreFacilities_Res.Items.FindByValue(DBReader("MoreFacilities_Res")).Selected = True
                If DBReader("MoreFacilities_Res") = "1" Then
                    lblI.Visible = True
                    ListView_I.Visible = True
                End If
            End If
            drpPalliativeCare.ClearSelection()
            If Len(DBReader("PalliativeCare") & "") > 0 Then drpPalliativeCare.Items.FindByValue(DBReader("PalliativeCare")).Selected = True
            'New Code 07/27/2026
            'PALLIATIVE CARE CENSUS
            If Len(DBReader("TotalAdmissionPY") & "") > 0 Then txtAdmissionsPY.Text = DBReader("TotalAdmissionPY")
            If Len(DBReader("TotalAdmissionCY") & "") > 0 Then txtAdmissionsCY.Text = DBReader("TotalAdmissionCY")
            If Len(DBReader("TotalDischargePY") & "") > 0 Then txtDischargePY.Text = DBReader("TotalDischargePY")
            If Len(DBReader("TotalDischargeCY") & "") > 0 Then txtDischargeCY.Text = DBReader("TotalDischargeCY")
            If Len(DBReader("TotalTransferPY") & "") > 0 Then txtTransferPY.Text = DBReader("TotalTransferPY")
            If Len(DBReader("TotalTransferCY") & "") > 0 Then txtTransferCY.Text = DBReader("TotalTransferCY")
            If Len(DBReader("TotalPalCareDeathPY") & "") > 0 Then txtDeathPY.Text = DBReader("TotalPalCareDeathPY")
            If Len(DBReader("TotalPalCareDeathCY") & "") > 0 Then txtDeathCY.Text = DBReader("TotalPalCareDeathCY")
            If Len(DBReader("AvgStayPY") & "") > 0 Then txtLOSPY.Text = DBReader("AvgStayPY")
            If Len(DBReader("AvgStayCY") & "") > 0 Then txtLOSCY.Text = DBReader("AvgStayCY")
            If Len(DBReader("AvgDailyCensusPY") & "") > 0 Then txtDCPY.Text = DBReader("AvgDailyCensusPY")
            If Len(DBReader("AvgDailyCensusCY") & "") > 0 Then txtDCCY.Text = DBReader("AvgDailyCensusCY")
            If Len(DBReader("OccupancyRatePY") & "") > 0 Then txtORPY.Text = DBReader("OccupancyRatePY")
            If Len(DBReader("OccupancyRateCY") & "") > 0 Then txtORCY.Text = DBReader("OccupancyRateCY")
            'PERFORMANCE ON CLINICAL QUALITY MEASURES
            If Len(DBReader("LiveDischarge") & "") > 0 Then txtLiveDischarge.Text = DBReader("LiveDischarge")
            If Len(DBReader("PatientPerct") & "") > 0 Then txtPatientPerct.Text = DBReader("PatientPerct")
            If Len(DBReader("TeamCommunication") & "") > 0 Then txtTeamCommn.Text = DBReader("TeamCommunication")
            If Len(DBReader("PatientCare") & "") > 0 Then txtPatientCare.Text = DBReader("PatientCare")
            If Len(DBReader("CareIndexScore") & "") > 0 Then txtCareIndexScore.Text = DBReader("CareIndexScore")
            If Len(DBReader("QualityStarRating") & "") > 0 Then txtStarRating.Text = DBReader("QualityStarRating")

        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Sub LoadSurveySectionC1a()
        'commented code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM PatientVolume_c1a where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim patientVolumeDB As PatientVolumeDBLayer = New PatientVolumeDBLayer()
        Dim DBReader = patientVolumeDB.GetC1AByUserName(UserName.Text)
        Grid_PV.DataSource = DBReader
        Grid_PV.DataBind()
        'con.Close()
        'con = Nothing
        patientVolumeDB.TerminateDBOperation()
        ncountya.Text = Grid_PV.Rows.Count
    End Sub

    Sub LoadSurveySectionC1b()
        'commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM PatientVolume_c1b where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim patientVolumeDB As PatientVolumeDBLayer = New PatientVolumeDBLayer()
        Grid_PV0.DataSource = patientVolumeDB.GetC1BByUserName(UserName.Text)
        Grid_PV0.DataBind()
        'con.Close()
        'con = Nothing
        patientVolumeDB.TerminateDBOperation()
        ncountyb.Text = Grid_PV.Rows.Count
    End Sub

    Sub LoadSurveySectionC2()
        'commented code - JS 
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

            'New code 07/27/2026
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

    Sub LoadSurveySectionD1()
        'commented code - JS 
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
            If Len(DBReader1("AgTotPatsServed") & "") > 0 Then AgTotPatsServed.Text = DBReader1("AgTotPatsServed") Else AgTotPatsServed.Text = "0"
            If Len(DBReader1("TotalCarryovers") & "") > 0 Then TotalCarryovers.Text = DBReader1("TotalCarryovers") Else TotalCarryovers.Text = "0"
        End While
        'DBReader1.Close()
        'con1.Close()
        'con1 = Nothing
        'DBReader1 = Nothing
        patientVolumeDB.TerminateDBOperation()
        TotalAdmissions.Text = Val(AgTotPatsServed.Text) - Val(TotalCarryovers.Text)

        ' Bind Grid
        'commented code - JS 
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Age_Gender where UserName='" & UserName.Text & "' order by txtCounty"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim ageGenderDB As AgeGenderDBLayer = New AgeGenderDBLayer()
        Grid_AgeGender.DataSource = ageGenderDB.GetByUserName(UserName.Text)
        Grid_AgeGender.DataBind()
        'con.Close()
        'con = Nothing
        ageGenderDB.TerminateDBOperation()
    End Sub

    Sub LoadSurveySectionD1a()
        'commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Race where UserName='" & UserName.Text & "' order by txtCounty"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim raceDB As RaceDBLayer = New RaceDBLayer()
        Grid_Race.DataSource = raceDB.GetRace("Select * FROM Race where UserName='" & UserName.Text & "' order by txtCounty")
        Grid_Race.DataBind()
        'con.Close()
        'con = Nothing
        raceDB.TerminateDBOperation()
    End Sub


    Sub LoadSurveySectionD2()
        'commented code - JS 
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

        TotalAdmissions.Text = admissions.ToString
        TotalAdmissions0.Text = admissions.ToString
        TotalDeaths.Text = AgTotDeaths.Text
        TotalNonDeathDischarges.Text = AgTotNonDeaths.Text

        deaths = Val(AgTotDeaths.Text)
        nondeaths = Val(AgTotNonDeaths.Text)
        'commented code - JS 
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()

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

            'New Code 7/27/2026
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

    Sub LoadSurveySectionE()
        'commented code - JS 
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()

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
            ''E4.OTHER Services
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

    Sub LoadSurveySectionF()
        'commented code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()

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

    Sub LoadSurveySectionF2()
        Dim vF4Total As Integer = 0
        'commented code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()

            If Len(DBReader("VisitsNursing") & "") > 0 Then VisitsNursing.Text = DBReader("VisitsNursing")
            If Len(DBReader("VisitsNursePract") & "") > 0 Then VisitsNursePract.Text = DBReader("VisitsNursePract")
            If Len(DBReader("VisitSocial") & "") > 0 Then VisitSocial.Text = DBReader("VisitSocial")
            If Len(DBReader("VisitAides") & "") > 0 Then VisitAides.Text = DBReader("VisitAides")
            If Len(DBReader("VisitMD") & "") > 0 Then VisitMD.Text = DBReader("VisitMD")
            If Len(DBReader("VisitMDVol") & "") > 0 Then VisitMDVol.Text = DBReader("VisitMDVol")
            If Len(DBReader("VisitChap") & "") > 0 Then VisitChap.Text = DBReader("VisitChap")
            If Len(DBReader("VisitOtherClinical") & "") > 0 Then VisitOtherClinical.Text = DBReader("VisitOtherClinical")
            If Len(DBReader("CaseloadNursing") & "") > 0 Then CaseloadNursing.Text = DBReader("CaseloadNursing")
            If Len(DBReader("CaseLoadSocial") & "") > 0 Then CaseLoadSocial.Text = DBReader("CaseLoadSocial")
            If Len(DBReader("CaseLoadAides") & "") > 0 Then CaseLoadAides.Text = DBReader("CaseLoadAides")
            If Len(DBReader("CaseLoadChap") & "") > 0 Then CaseLoadChap.Text = DBReader("CaseLoadChap")
            If Len(DBReader("MDHospClinical") & "") > 0 Then
                MDHospClinical.Text = DBReader("MDHospClinical")
                vF4Total += DBReader("MDHospClinical")
            End If

            If Len(DBReader("MDPalClinical") & "") > 0 Then
                MDPalClinical.Text = DBReader("MDPalClinical")
                vF4Total += DBReader("MDPalClinical")
            End If

            If Len(DBReader("MDNonClinical") & "") > 0 Then
                MDNonClinical.Text = DBReader("MDNonClinical")
                vF4Total += DBReader("MDNonClinical")
            End If

            AdmitNurses.ClearSelection()
            If Len(DBReader("AdmitNurses") & "") > 0 Then AdmitNurses.Items.FindByValue(DBReader("AdmitNurses")).Selected = True

        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        f4total.Text = vF4Total
        surveyDB.TerminateDBOperation()
    End Sub

    Sub LoadComments()
        'commented code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()
            If Len(DBReader("Comm1_1") & "") > 0 Then
                comm1_1.Text = DBReader("Comm1_1")
            Else
                comm1_1.Text = "No Comments"
            End If

            If Len(DBReader("Comm2_1") & "") > 0 Then
                comm2_1.Text = DBReader("Comm2_1")
            Else
                comm2_1.Text = "No Suggestions"
            End If
        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Sub LoadCert()
        'commented code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        DBReader.Read()
        If DBReader("Certification1") = True Then
            lblCert.Text = FormatDateTime(DBReader("Certification1_Date")) & " by: " & lblFirstname.Text & " " & lblLastName.Text
        Else
            lblCert.Text = "Not Certified and Submitted"
        End If
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub

    Function Find_County(countycode As String) As String
        Dim vCounty As String = "'"
        Select Case countycode
            Case "01"
                vCounty = "ALLEGANY"
            Case "02"
                vCounty = "ANNE ARUNDEL"
            Case "03"
                vCounty = "BALTIMORE"
            Case "30"
                vCounty = "BALTIMORE CITY"
            Case "04"
                vCounty = "CALVERT"
            Case "05"
                vCounty = "CAROLINE"
            Case "06"
                vCounty = "CARROLL"
            Case "07"
                vCounty = "CECIL"
            Case "08"
                vCounty = "CHARLES"
            Case "09"
                vCounty = "DORCHESTER"
            Case "10"
                vCounty = "FREDERICK"
            Case "11"
                vCounty = "GARRETT"
            Case "12"
                vCounty = "HARFORD"
            Case "13"
                vCounty = "HOWARD"
            Case "14"
                vCounty = "KENT"
            Case "15"
                vCounty = "MONTGOMERY"
            Case "16"
                vCounty = "PRINCE GEORGES"
            Case "17"
                vCounty = "QUEEN ANNES"
            Case "18"
                vCounty = "ST. MARYS"
            Case "19"
                vCounty = "SOMERSET"
            Case "20"
                vCounty = "TALBOT"
            Case "21"
                vCounty = "WASHINGTON"
            Case "22"
                vCounty = "WICOMICO"
            Case "23"
                vCounty = "WORCESTER"
        End Select
        Return vCounty
    End Function

    Function Find_Level(InFacLevel1 As String) As String
        Dim vLevel As String = "'"
        Select Case InFacLevel1
            Case "Acute"
                vLevel = "Acute/General Inpatient – short term, intensive hospice services provided to meet the hospice patient’s need for skilled nursing, symptom management, or complex care."
            Case "Respite"
                vLevel = "Respite Care –short-term inpatient care provided to the individual when necessary to relieve the family members or other persons caring for the individual."
            Case "Residential"
                vLevel = "Residential Care - hospice home care provided in a facility rather than in the patient’s personal residence."
            Case "Mix"
                vLevel = "Mixed Use –acute, respite, and residential levels."
        End Select
        Return vLevel
    End Function


    Function Find_Sited(InFacSite1 As String) As String
        Dim vSited As String = "'"
        Select Case InFacSite1
            Case "01"
                vSited = "Free Standing Location"
            Case "02"
                vSited = "In Hospital"
            Case "03"
                vSited = "In Nursing Home"
            Case "04"
                vSited = "Other (please specify):"
        End Select
        Return vSited
    End Function

    Function Find_Opened(InFacSite1 As String) As String
        Dim vRtn As String = "'"
        Select Case InFacSite1
            Case "0"
                vRtn = "No"
            Case "1"
                vRtn = "Yes"
        End Select
        Return vRtn
    End Function
    Function Find_FY() As String
        Return "2018"
    End Function

    Protected Sub Grid_PV_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles Grid_PV.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            carryoversTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "carryovers"))
            UndupHomeAdmitTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UndupHomeAdmit"))
            UndupInptAdmitTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UndupInptAdmit"))
            UndupResAdmitTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UndupResAdmit"))
            UndupNurseAdmitTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UndupNurseAdmit"))
            UndupAssistAdmitTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UndupAssistAdmit"))
            PatientsTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Patients"))
            DeathsTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Deaths"))
            NonDeathDischargesTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NonDeathDischarges"))
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(0).Text = "TOTALS:"

            ' for the Footer, display the running totals
            e.Row.Cells(1).Text = carryoversTotal.ToString("d")
            TotalCarryoversC1a.Text = carryoversTotal.ToString("d")
            e.Row.Cells(1).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(2).Text = UndupHomeAdmitTotal.ToString("d")
            TotalUndupHomeAdmit.Text = UndupHomeAdmitTotal.ToString("d")
            e.Row.Cells(2).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(3).Text = UndupInptAdmitTotal.ToString("d")
            TotalUndupInptAdmit.Text = UndupInptAdmitTotal.ToString("d")
            e.Row.Cells(3).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(4).Text = UndupResAdmitTotal.ToString("d")
            TotalUndupResAdmit.Text = UndupResAdmitTotal.ToString("d")
            e.Row.Cells(4).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(5).Text = UndupNurseAdmitTotal.ToString("d")
            TotalUndupNurseAdmit.Text = UndupNurseAdmitTotal.ToString("d")
            e.Row.Cells(5).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(6).Text = UndupAssistAdmitTotal.ToString("d")
            TotalUndupAssistAdmit.Text = UndupAssistAdmitTotal.ToString("d")
            e.Row.Cells(6).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(7).Text = PatientsTotal.ToString("d")
            xAgTotPatsServed.Text = PatientsTotal.ToString("d")
            e.Row.Cells(7).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(8).Text = DeathsTotal.ToString("d")
            xAgTotDeaths.Text = DeathsTotal.ToString("d")
            e.Row.Cells(8).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(9).Text = NonDeathDischargesTotal.ToString("d")
            xAgTotNonDeaths.Text = NonDeathDischargesTotal.ToString("d")
            e.Row.Cells(9).HorizontalAlign = HorizontalAlign.Right

            e.Row.Font.Bold = True
        End If
    End Sub


    Protected Sub Grid_PV0_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles Grid_PV0.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            TotReAdmissionsTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TotReAdmissions"))
            TotReAdmissionsPriorTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TotReAdmissionsPrior"))
            NDDExProgTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDExProg"))
            NDDCurativeTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDCurative"))
            'NDDRefusedTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDRefused"))
            'NDDOOATotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDOOA"))
            NDDTransTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDTrans"))
            'NDDCauseTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDCause"))
            NDDOtherTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "NDDOther"))
        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(0).Text = "TOTALS:"

            ' for the Footer, display the running totals
            e.Row.Cells(1).Text = TotReAdmissionsTotal.ToString("d")
            AgTotReAdmissions.Text = TotReAdmissionsTotal.ToString("d")
            e.Row.Cells(1).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(2).Text = TotReAdmissionsPriorTotal.ToString("d")
            AgTotReAdmissionsPrior.Text = TotReAdmissionsPriorTotal.ToString("d")
            e.Row.Cells(2).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(3).Text = NDDExProgTotal.ToString("d")
            TotNDDExProg.Text = NDDExProgTotal.ToString("d")
            e.Row.Cells(3).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(4).Text = NDDCurativeTotal.ToString("d")
            TotNDDCurative.Text = NDDCurativeTotal.ToString("d")
            e.Row.Cells(4).HorizontalAlign = HorizontalAlign.Right

            'e.Row.Cells(5).Text = NDDRefusedTotal.ToString("d")
            'TotNDDRefused.Text = NDDRefusedTotal.ToString("d")
            'e.Row.Cells(5).HorizontalAlign = HorizontalAlign.Right

            'e.Row.Cells(6).Text = NDDOOATotal.ToString("d")
            'TotNDDOOA.Text = NDDOOATotal.ToString("d")
            'e.Row.Cells(6).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(5).Text = NDDTransTotal.ToString("d")
            TotNDDTrans.Text = NDDTransTotal.ToString("d")
            e.Row.Cells(5).HorizontalAlign = HorizontalAlign.Right

            'e.Row.Cells(8).Text = NDDCauseTotal.ToString("d")
            'TotNDDCause.Text = NDDCauseTotal.ToString("d")
            'e.Row.Cells(8).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(6).Text = NDDOtherTotal.ToString("d")
            TotNDDOther.Text = NDDOtherTotal.ToString("d")
            e.Row.Cells(6).HorizontalAlign = HorizontalAlign.Right

            e.Row.Font.Bold = True
        End If

    End Sub



    Protected Sub Grid_Race_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles Grid_Race.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            gTEthHispanic += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "EthHispanic"))
            gTEthNonHispanic += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "EthNonHispanic"))
            gTEthTotal += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "EthTotal"))

            gTRaceAmInd += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceAmInd"))
            gTRaceBlack += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceBlack"))
            gTRaceAsian += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceAsian"))
            gTRaceHawPacIs += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceHawPacIs"))
            gTRaceWhite += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceWhite"))
            gTRaceMultiracial += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceMultiracial"))
            gTRaceOther += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceOther"))
            'gTRaceUnknown += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceUnknown"))
            gTRaceTot += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "RaceTot"))



        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(0).Text = "TOTALS:"

            ' for the Footer, display the running totals
            e.Row.Cells(1).Text = gTEthHispanic.ToString("d")
            TEthHispanic.Text = gTEthHispanic.ToString("d")
            e.Row.Cells(1).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(2).Text = gTEthNonHispanic.ToString("d")
            TEthNonHispanic.Text = gTEthNonHispanic.ToString("d")
            e.Row.Cells(2).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(3).Text = gTEthTotal.ToString("d")
            TEthTotal.Text = gTEthTotal.ToString("d")
            e.Row.Cells(3).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(4).Text = gTRaceAmInd.ToString("d")
            TRaceAmInd.Text = gTRaceAmInd.ToString("d")
            e.Row.Cells(4).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(5).Text = gTRaceBlack.ToString("d")
            TRaceBlack.Text = gTRaceBlack.ToString("d")
            e.Row.Cells(5).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(6).Text = gTRaceAsian.ToString("d")
            TRaceAsian.Text = gTRaceAsian.ToString("d")
            e.Row.Cells(6).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(7).Text = gTRaceHawPacIs.ToString("d")
            TRaceHawPacIs.Text = gTRaceHawPacIs.ToString("d")
            e.Row.Cells(7).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(8).Text = gTRaceWhite.ToString("d")
            TRaceWhite.Text = gTRaceWhite.ToString("d")
            e.Row.Cells(8).HorizontalAlign = HorizontalAlign.Right


            e.Row.Cells(9).Text = gTRaceMultiracial.ToString("d")
            TRaceMultiracial.Text = gTRaceMultiracial.ToString("d")
            e.Row.Cells(9).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(10).Text = gTRaceOther.ToString("d")
            TRaceOther.Text = gTRaceOther.ToString("d")
            e.Row.Cells(10).HorizontalAlign = HorizontalAlign.Right

            'e.Row.Cells(11).Text = gTRaceUnknown.ToString("d")
            'TRaceUnknown.Text = gTRaceUnknown.ToString("d")
            'e.Row.Cells(11).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(11).Text = gTRaceTot.ToString("d")
            TRaceTot.Text = gTRaceTot.ToString("d")
            e.Row.Cells(11).HorizontalAlign = HorizontalAlign.Right

            e.Row.Font.Bold = True
        End If
    End Sub

    Protected Sub Grid_AgeGender_RowDataBound(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles Grid_AgeGender.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            gTAge01 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age01"))
            gTAge1to12 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age1to12"))
            gTAge13to18 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age13to18"))
            gTAge19to20 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age19to20"))
            'gTAge25 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age25 "))
            gTTotalAge0to20 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TotalAge0to20"))
            gTAge21to34 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age21to34"))
            gTAge35to64 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age35to64"))
            gTAge65 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age65"))
            gTAge75 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age75"))
            gTAge85 += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Age85"))
            gTAgeTot += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "AgeTot"))
            gTSexF += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SexF"))
            gTSexM += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SexM"))
            gTSexO += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SexO"))
            gTSexTot += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "SexTot"))

        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(0).Text = "TOTALS:"

            ' for the Footer, display the running totals
            e.Row.Cells(1).Text = gTAge01.ToString("d")
            TAge01.Text = gTAge01.ToString("d")
            e.Row.Cells(1).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(2).Text = gTAge1to12.ToString("d")
            TAge1to4.Text = gTAge1to12.ToString("d")
            e.Row.Cells(2).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(3).Text = gTAge13to18.ToString("d")
            TAge5.Text = gTAge13to18.ToString("d")
            e.Row.Cells(3).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(4).Text = gTAge19to20.ToString("d")
            TAge15.Text = gTAge19to20.ToString("d")
            e.Row.Cells(4).HorizontalAlign = HorizontalAlign.Right

            'e.Row.Cells(5).Text = gTAge25.ToString("d")
            'TAge25.Text = gTAge25.ToString("d")
            'e.Row.Cells(5).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(5).Text = gTTotalAge0to20.ToString("d")
            TAge0to34.Text = gTTotalAge0to20.ToString("d")
            e.Row.Cells(5).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(6).Text = gTAge21to34.ToString("d")
            TAge35.Text = gTAge21to34.ToString("d")
            e.Row.Cells(6).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(7).Text = gTAge35to64.ToString("d")
            TAge65.Text = gTAge35to64.ToString("d")
            e.Row.Cells(7).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(8).Text = gTAge65.ToString("d")
            TAge75.Text = gTAge65.ToString("d")
            e.Row.Cells(8).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(9).Text = gTAge75.ToString("d")
            TAge74.Text = gTAge75.ToString("d")
            e.Row.Cells(9).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(10).Text = gTAge85.ToString("d")
            TAge85.Text = gTAge85.ToString("d")
            e.Row.Cells(10).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(11).Text = gTAgeTot.ToString("d")
            TAgeTot.Text = gTAgeTot.ToString("d")
            e.Row.Cells(11).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(12).Text = gTSexF.ToString("d")
            TSexF.Text = gTSexF.ToString("d")
            e.Row.Cells(12).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(13).Text = gTSexM.ToString("d")
            TSexM.Text = gTSexM.ToString("d")
            e.Row.Cells(13).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(14).Text = gTSexO.ToString("d")
            TSexM.Text = gTSexO.ToString("d")
            e.Row.Cells(14).HorizontalAlign = HorizontalAlign.Right

            e.Row.Cells(15).Text = gTSexTot.ToString("d")
            TSexTot.Text = gTSexTot.ToString("d")
            e.Row.Cells(15).HorizontalAlign = HorizontalAlign.Right

            e.Row.Font.Bold = True
        End If
    End Sub
#Region "Newcode functions"

    Private Sub SetTextBox(ByVal textBx As TextBox, ByVal rfv As RequiredFieldValidator, ByVal isEnabled As Boolean)
        textBx.Enabled = isEnabled
        textBx.Style("background-color") = IIf(isEnabled, "#FFFFFF", "#CCCCCC")
        rfv.Enabled = isEnabled
    End Sub
#End Region
End Class
