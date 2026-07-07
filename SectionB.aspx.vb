Imports System.ComponentModel.DataAnnotations
Imports System.Data
Imports System.Data.SqlClient
Imports System.Runtime.Remoting.Lifetime
Imports System.Web.Services.Description
Imports Mhcc.Hospice
Partial Class SectionB
    'Inherits System.Web.UI.Page
    Inherits BasePage

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
            'End If

            VerifyAdmin()

            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            SY3.Text = GetYear()

            LoadSurvey()
            msave.Visible = False
            vAc.Enabled = False
            AcByOther_text.Enabled = False
            AcByOther_text.Text = ""
            AcByOther_text.Style("background-color") = "#CCCCCC"
            'Commenting following code - JS 03/21 (Setup is already taken in LoadSurvey() based on DB values)
            'MonthsInFY.Enabled = False
            'MonthsInFY.Text = ""
            'vMonthsInFY.Enabled = False
            'MonthsInFY.Style("background-color") = "#CCCCCC"
        End If
    End Sub
    Protected Sub VerifyAdmin()
        'Add this code for admin view
        Dim _isAdmin As Boolean = GetAdmin()
        License_Type.Enabled = _isAdmin
        AgType.Enabled = _isAdmin
        Ownership.Enabled = _isAdmin
        OwnChange.Enabled = _isAdmin
        Panel_1.Enabled = _isAdmin
        TaxStatus.Enabled = _isAdmin
        Location_Type.Enabled = _isAdmin
        MultiLoc.Enabled = _isAdmin
        Panel2.Enabled = _isAdmin
        MDLoc.Enabled = _isAdmin
        Panel1.Enabled = _isAdmin
        MedCert.Enabled = _isAdmin
        Panel3.Enabled = _isAdmin
        MediCert.Enabled = _isAdmin
        Panel4.Enabled = _isAdmin
        AcStatusACHC.Enabled = _isAdmin
        AcStatusCHAP.Enabled = _isAdmin
        AcStatusJCAHO.Enabled = _isAdmin
        AcByOther.Enabled = _isAdmin
        AcByOther_text.Enabled = _isAdmin
        NoAccred.Enabled = _isAdmin
        LastMonFY.Enabled = _isAdmin
        LastDayFY.Enabled = _isAdmin

        btnBack.Visible = Not _isAdmin
        btnNext.Visible = Not _isAdmin
    End Sub
    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect("menu.aspx")
    End Sub

    Protected Sub btnMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMenu.Click
        SaveSurvey(1)
        msave.Visible = True
    End Sub

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        Response.Redirect("SectionC1a.aspx")
    End Sub
    Sub LoadSurvey()
        'Commented following code - JS
        'Dim strSQL As String
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        While DBReader.Read()
            UserName.Text = DBReader("UserName")
            'Commented below code in order to change of Agency name display 04/05/2024 - JS
            'lblFirstname.Text = IIf(Len(DBReader("PreparedBy") & "") > 0, DBReader("PreparedBy"), "")
            lblLastName.Text = ""

            If Len(DBReader("Certification1") & "") > 0 Then
                Certi1.Text = DBReader("Certification1")
                If Certi1.Text = "True" Then
                    btnMenu.Enabled = False
                End If
            End If
            License_Type.ClearSelection()
            If Len(DBReader("License_Type") & "") > 0 Then License_Type.Items.FindByValue(DBReader("License_Type")).Selected = True
            AgType.ClearSelection()
            If Len(DBReader("AgType") & "") > 0 Then AgType.Items.FindByValue(DBReader("AgType")).Selected = True
            Ownership.ClearSelection()
            If Len(DBReader("Ownership") & "") > 0 Then Ownership.Items.FindByValue(DBReader("Ownership")).Selected = True

            If Len(DBReader("OW_OTHER") & "") > 0 Then
                txtOWOther.Enabled = True
                txtOWOther.Style("background-color") = "#FFFFFF"
                If Len(DBReader("OW_OTHER") & "") > 0 Then txtOWOther.Text = DBReader("OW_OTHER")
            End If

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

                    'New Code 07/03/2026
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
            If Len(DBReader("MoreFacilities_Inpt") & "") > 0 Then MoreFacilities_Inpt.Items.FindByValue(DBReader("MoreFacilities_Inpt")).Selected = True
            MoreFacilities_Res.ClearSelection()
            If Len(DBReader("MoreFacilities_Res") & "") > 0 Then MoreFacilities_Res.Items.FindByValue(DBReader("MoreFacilities_Res")).Selected = True
            drpPalliativeCare.ClearSelection()
            If Len(DBReader("PalliativeCare") & "") > 0 Then drpPalliativeCare.Items.FindByValue(DBReader("PalliativeCare")).Selected = True

            'New Code 07/06/2026
            'PALLIATIVE CARE CENSUS
            If Len(DBReader("TotalAdmission2024") & "") > 0 Then txtAdmissionsPY.Text = DBReader("TotalAdmission2024")
            If Len(DBReader("TotalAdmission2025") & "") > 0 Then txtAdmissionsCY.Text = DBReader("TotalAdmission2025")
            If Len(DBReader("TotalDischarge2024") & "") > 0 Then txtDischargePY.Text = DBReader("TotalDischarge2024")
            If Len(DBReader("TotalDischarge2025") & "") > 0 Then txtDischargeCY.Text = DBReader("TotalDischarge2025")
            If Len(DBReader("TotalTransfer2024") & "") > 0 Then txtTransferPY.Text = DBReader("TotalTransfer2024")
            If Len(DBReader("TotalTransfer2025") & "") > 0 Then txtTransferCY.Text = DBReader("TotalTransfer2025")
            If Len(DBReader("TotalPalCareDeath2024") & "") > 0 Then txtDeathPY.Text = DBReader("TotalPalCareDeath2024")
            If Len(DBReader("TotalPalCareDeath2025") & "") > 0 Then txtDeathCY.Text = DBReader("TotalPalCareDeath2025")
            If Len(DBReader("AvgStay2024") & "") > 0 Then txtLOSPY.Text = DBReader("AvgStay2024")
            If Len(DBReader("AvgStay2025") & "") > 0 Then txtLOSCY.Text = DBReader("AvgStay2025")
            If Len(DBReader("AvgDailyCensus2024") & "") > 0 Then txtDCPY.Text = DBReader("AvgDailyCensus2024")
            If Len(DBReader("AvgDailyCensus2025") & "") > 0 Then txtDCCY.Text = DBReader("AvgDailyCensus2025")
            If Len(DBReader("OccupancyRate2024") & "") > 0 Then txtORPY.Text = DBReader("OccupancyRate2024")
            If Len(DBReader("OccupancyRate2025") & "") > 0 Then txtORCY.Text = DBReader("OccupancyRate2025")
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
#Region "Newcode functions"
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
    Private Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String) As String
        Return IIf(txtBx.Text.Length > 0, dbField & " = '" & txtBx.Text & "', ", "")
    End Function
#End Region
    Sub SaveSurvey(ByVal int As Integer)
        'Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        Dim strSQL As String = "Update Survey SET "

        strSQL = strSQL & " License_Type='" & License_Type.SelectedItem.Value & "',"
        strSQL = strSQL & " AgType='" & AgType.SelectedItem.Value & "',"
        strSQL = strSQL & " Ownership='" & Ownership.SelectedItem.Value & "',"
        strSQL = strSQL & " TaxStatus='" & TaxStatus.SelectedItem.Value & "',"
        strSQL = strSQL & " OwnChange='" & OwnChange.SelectedItem.Value & "',"

        strSQL = strSQL & " FormerOwner='" & Replace(FormerOwner.Text, "'", "''") & "',"
        strSQL = strSQL & " CurOwner='" & Replace(CurOwner.Text, "'", "''") & "',"
        strSQL = strSQL & " ChangeMon='" & ChangeMon.SelectedItem.Value & "',"
        strSQL = strSQL & " ChangeDay='" & ChangeDay.SelectedItem.Value & "',"
        strSQL = strSQL & " Location_Type='" & Location_Type.SelectedItem.Value & "',"
        strSQL = strSQL & " MultiLoc='" & MultiLoc.SelectedItem.Value & "',"
        strSQL = strSQL & " MDLoc='" & MDLoc.SelectedItem.Value & "',"
        strSQL = strSQL & " HeadAddress='" & HeadAddress.Text & "',"


        strSQL = strSQL & " HeadCity='" & Replace(HeadCity.Text, "'", "''") & "',"
        strSQL = strSQL & " HeadCounty='" & HeadCounty.SelectedItem.Value & "',"
        strSQL = strSQL & " HeadState='" & HeadState.SelectedItem.Value & "',"
        strSQL = strSQL & " HeadZip='" & HeadZip.Text & "',"
        strSQL = strSQL & " Loc1Zip='" & Loc1Zip.Text & "',"
        strSQL = strSQL & " Loc2Zip='" & Loc2Zip.Text & "',"
        strSQL = strSQL & " Loc3Zip='" & Loc3Zip.Text & "',"

        strSQL = strSQL & " Loc1Address='" & Replace(Loc1Address.Text, "'", "''") & "',"
        strSQL = strSQL & " Loc1City='" & Replace(Loc1City.Text, "'", "''") & "',"
        strSQL = strSQL & " Loc1County='" & Loc1County.SelectedItem.Value & "',"
        strSQL = strSQL & " Loc1State='" & Loc1State.SelectedItem.Value & "',"
        strSQL = strSQL & " Loc2Address='" & Replace(Loc2Address.Text, "'", "''") & "',"
        strSQL = strSQL & " Loc2City='" & Replace(Loc2City.Text, "'", "''") & "',"
        strSQL = strSQL & " Loc2County='" & Loc2County.SelectedItem.Value & "',"
        strSQL = strSQL & " Loc2State='" & Loc2State.SelectedItem.Value & "',"
        strSQL = strSQL & " Loc3Address='" & Replace(Loc3Address.Text, "'", "''") & "',"
        strSQL = strSQL & " Loc3City='" & Replace(Loc3City.Text, "'", "''") & "',"
        strSQL = strSQL & " Loc3County='" & Loc3County.SelectedItem.Value & "',"
        strSQL = strSQL & " Loc3State='" & Loc3State.SelectedItem.Value & "',"

        strSQL = strSQL & " LocJoin1a='" & Replace(LocJoin1a.Text, "'", "''") & "',"
        strSQL = strSQL & " LocJoin1b='" & Replace(LocJoin1b.Text, "'", "''") & "',"
        strSQL = strSQL & " LocJoin2a='" & Replace(LocJoin2a.Text, "'", "''") & "',"
        strSQL = strSQL & " LocJoin2b='" & Replace(LocJoin2b.Text, "'", "''") & "',"
        strSQL = strSQL & " LocJoin3a='" & Replace(LocJoin3a.Text, "'", "''") & "',"
        strSQL = strSQL & " LocJoin4a='" & Replace(LocJoin4a.Text, "'", "''") & "',"
        strSQL = strSQL & " LocJoin4b='" & Replace(LocJoin4b.Text, "'", "''") & "',"
        strSQL = strSQL & " MedCert='" & MedCert.SelectedItem.Value & "',"
        strSQL = strSQL & " MedProvNum='" & MedProvNum.Text & "',"
        strSQL = strSQL & " Medicare_NPI='" & Medicare_NPI.Text & "',"
        strSQL = strSQL & " MediCert='" & MediCert.SelectedItem.Value & "',"
        strSQL = strSQL & " MediProvNum='" & MediProvNum.Text & "',"

        If AcStatusACHC.Checked = True Then
            strSQL = strSQL & " AcStatusACHC='" & 1 & "',"
        End If
        If AcStatusCHAP.Checked = True Then
            strSQL = strSQL & " AcStatusCHAP='" & 1 & "',"
        End If
        If AcStatusJCAHO.Checked = True Then
            strSQL = strSQL & " AcStatusJCAHO='" & 1 & "',"
        End If
        If AcByOther.Checked = True Then
            strSQL = strSQL & " AcByOther='" & 1 & "',"
            If Len(AcByOther_text.Text & "") > 0 Then strSQL = strSQL & " AcByOther_text='" & Replace(AcByOther_text.Text, "'", "''") & "'," Else strSQL = strSQL & " AcByOther_text=Null,"
        Else
            strSQL = strSQL & " AcByOther='" & 0 & "',"
            strSQL = strSQL & " AcByOther_text=Null,"
        End If
        If NoAccred.Checked = True Then
            strSQL = strSQL & " NoAccred='" & 1 & "',"
        End If

        strSQL = strSQL & " LastMonFY='" & LastMonFY.SelectedItem.Value & "',"
        strSQL = strSQL & " LastDayFY='" & LastDayFY.SelectedItem.Value & "',"
        If Len(FullFYPeriod.SelectedItem.Value & "") > 0 Then
            strSQL = strSQL & " FullFYPeriod='" & FullFYPeriod.SelectedItem.Value & "',"
            If FullFYPeriod.SelectedItem.Value = "0" Then
                If Len(MonthsInFY.Text & "") > 0 Then strSQL = strSQL & " MonthsInFY='" & MonthsInFY.Text & "'," Else strSQL = strSQL & " MonthsInFY=Null,"
            Else
                strSQL = strSQL & " MonthsInFY=Null,"
            End If
        Else
            strSQL = strSQL & " FullFYPeriod=Null,"
            strSQL = strSQL & " MonthsInFY=Null,"
        End If
        strSQL = strSQL & " MoreFacilities_Inpt='" & MoreFacilities_Inpt.SelectedItem.Value & "',"
        strSQL = strSQL & " MoreFacilities_Res='" & MoreFacilities_Res.SelectedItem.Value & "',"
        strSQL = strSQL & " PalliativeCare='" & drpPalliativeCare.SelectedItem.Value & "',"

        'Code updated in JULY 2026
        If Ownership.SelectedItem.Value = "05" Then
            If Len(txtOWOther.Text & "") > 0 Then
                strSQL = strSQL & " OW_OTHER='" & Replace(txtOWOther.Text, "'", "''") & "',"
            Else
                strSQL = strSQL & " OW_OTHER=Null,"
            End If
        Else
            strSQL = strSQL & " OW_OTHER=Null,"
        End If

        If chkRealEstateOW.Checked Then
            strSQL = strSQL & " IsRealestateOW = 1,"
            strSQL = strSQL & " OpEntityRelation = '" & rblEntityRelation.SelectedValue & "',"
            If rblEntityRelation.SelectedValue = "4" Then
                strSQL = strSQL & " EntityRelationOther = '" & Replace(txtEntityOther.Text, "'", "''") & "',"
            End If
        End If

        If chkOpOwner.Checked Then
            strSQL = strSQL & " IsOperationsOwner = 1,"
            strSQL = strSQL & " EntityLegalName = '" & Replace(txtLegalName.Text, "'", "''") & "',"
            strSQL = strSQL & " EIN = " & txtEIN.Text & ","
            strSQL = strSQL & " OW_Percetage = '" & txtPercent.Text & "',"
        End If

        If chkParentEntity.Checked Then
            strSQL = strSQL & " IsParentEntity = 1,"
        End If

        If chkMgtCompany.Checked Then
            strSQL = strSQL & " IsMgtCompany = 1,"
        End If

        If chkIntRestruct.Checked Then
            strSQL = strSQL & " IsInternalRestruct = 1,"
        End If

        If chkTransferAsset.Checked Then
            strSQL = strSQL & " IsTransferAsset = 1,"
        End If

        If chkOtherNature.Checked Then
            strSQL = strSQL & " IsOtherNature = 1,"
            strSQL = strSQL & " OW_OtherNature = '" & Replace(txtOtherNature.Text, "'", "''") & "',"
        End If

        strSQL = strSQL & " OW_PvtEquity = '" & rblPvtEquity.SelectedValue & "',"
        strSQL = strSQL & " OW_CorpChain = '" & rblCorpChain.SelectedValue & "',"
        strSQL = strSQL & " OW_REIT = '" & rblREIT.SelectedValue & "',"

        If rblREIT.SelectedValue = "1" Then
            strSQL = strSQL & " OW_REIT_Name = '" & Replace(txtREITName.Text, "'", "''") & "',"
        End If

        If chkOperations.Checked Then
            strSQL = strSQL & " Operations = 1,"
            strSQL = strSQL & " OperationsPerct = " & ddlOpPercent.SelectedValue & ","
        End If

        If chkFinancing.Checked Then
            strSQL = strSQL & " Financing = 1,"
            strSQL = strSQL & " FinancingPerct = " & ddlFinancing.SelectedValue & ","
        End If

        If chkRealestate.Checked Then
            strSQL = strSQL & " RealEstate = 1,"
            strSQL = strSQL & " RealEstatePerct = " & ddlRealEstate.SelectedValue & ","
        End If

        If chkMgt.Checked Then
            strSQL = strSQL & " Mgt = 1,"
            strSQL = strSQL & " MgtPerct = " & ddlMgt.SelectedValue & ","
        End If

        strSQL = strSQL & " IsMgtServAgreement = " & rblMgtSvcAgreement.SelectedValue & ","

        If Len(txtTransPrice.Text) > 0 Then
            strSQL = strSQL & " TransPrice = " & txtTransPrice.Text & ","
        End If
        If chkFinSustain.Checked Then
            strSQL = strSQL & " TransFinSustain = 1,"
        End If
        If chkRenovation.Checked Then
            strSQL = strSQL & " TransRenovation = 1,"
        End If
        If chkGrowth.Checked Then
            strSQL = strSQL & " TransMktGrowth = 1,"
        End If
        If chkCompliance.Checked Then
            strSQL = strSQL & " TransCompliance = 1,"
        End If
        If chkTransOther.Checked Then
            strSQL = strSQL & " IsTransOther = 1,"
            strSQL = strSQL & " TransOther = '" & Replace(txtTransOther.Text, "'", "''") & "',"
        End If

        If chkOrgChart.Checked Then
            strSQL = strSQL & " OrgChart = 1,"
        End If
        If chkOpAgreement.Checked Then
            strSQL = strSQL & " OpAgreement = 1,"
        End If
        If chkLease.Checked Then
            strSQL = strSQL & " Lease = 1,"
        End If
        If chkMgtServAgreement.Checked Then
            strSQL = strSQL & " MgtServAgreement = 1,"
        End If
        If chkFinAgreement.Checked Then
            strSQL = strSQL & " FinAgreement = 1,"
        End If
        If chkPayorContract.Checked Then
            strSQL = strSQL & " PayorContract = 1,"
        End If
        If chkDocNA.Checked Then
            strSQL = strSQL & " DocNotApplicable = 1,"
        End If
        strSQL = strSQL & " OwnershipChange = '" & rblOwnershipChange.SelectedValue & "',"

        'Save PALLIATIVE CARE CENSUS Data
        strSQL = strSQL & MapTextValueField(txtAdmissionsPY, "TotalAdmission2024")
        strSQL = strSQL & MapTextValueField(txtAdmissionsCY, "TotalAdmission2025")
        strSQL = strSQL & MapTextValueField(txtDischargePY, "TotalDischarge2024")
        strSQL = strSQL & MapTextValueField(txtDischargeCY, "TotalDischarge2025")
        strSQL = strSQL & MapTextValueField(txtTransferPY, "TotalTransfer2024")
        strSQL = strSQL & MapTextValueField(txtTransferCY, "TotalTransfer2025")
        strSQL = strSQL & MapTextValueField(txtDeathPY, "TotalPalCareDeath2024")
        strSQL = strSQL & MapTextValueField(txtDeathCY, "TotalPalCareDeath2025")
        strSQL = strSQL & MapTextValueField(txtLOSPY, "AvgStay2024")
        strSQL = strSQL & MapTextValueField(txtLOSCY, "AvgStay2025")
        strSQL = strSQL & MapTextValueField(txtDCPY, "AvgDailyCensus2024")
        strSQL = strSQL & MapTextValueField(txtDCCY, "AvgDailyCensus2025")
        strSQL = strSQL & MapTextValueField(txtORPY, "OccupancyRate2024")
        strSQL = strSQL & MapTextValueField(txtORCY, "OccupancyRate2025")

        'Save PERFORMANCE ON CLINICAL QUALITY MEASURES
        strSQL = strSQL & MapTextValueField(txtLiveDischarge, "LiveDischarge")
        strSQL = strSQL & MapTextValueField(txtPatientPerct, "PatientPerct")
        strSQL = strSQL & MapTextValueField(txtTeamCommn, "TeamCommunication")
        strSQL = strSQL & MapTextValueField(txtPatientCare, "PatientCare")
        strSQL = strSQL & MapTextValueField(txtCareIndexScore, "CareIndexScore")
        strSQL = strSQL & MapTextValueField(txtStarRating, "QualityStarRating")

        strSQL = strSQL & " SectionB='" & int & "'"
        strSQL = strSQL & " where UserName='" & UserName.Text & "'"

        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey(strSQL)
    End Sub
    Protected Sub OwnChange_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles OwnChange.SelectedIndexChanged
        If OwnChange.SelectedItem.Value = "1" Then
            Panel_1.Visible = True
        Else
            Panel_1.Visible = False
        End If
    End Sub

    Protected Sub MultiLoc_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles MultiLoc.SelectedIndexChanged
        If MultiLoc.SelectedItem.Value = "1" Then
            Panel2.Visible = True
        Else
            Panel2.Visible = False
        End If
    End Sub

    Protected Sub MDLoc_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles MDLoc.SelectedIndexChanged
        If MDLoc.SelectedItem.Value = "1" Then
            Panel1.Visible = True
        Else
            Panel1.Visible = False
        End If
    End Sub

    Protected Sub MedCert_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles MedCert.SelectedIndexChanged
        If MedCert.SelectedItem.Value = "1" Then
            Panel3.Visible = True
        Else
            Panel3.Visible = False
        End If
    End Sub

    Protected Sub MediCert_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles MediCert.SelectedIndexChanged
        If MediCert.SelectedItem.Value = "1" Then
            Panel4.Visible = True
        Else
            Panel4.Visible = False
        End If
    End Sub

    Protected Sub AcByOther_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles AcByOther.CheckedChanged
        If AcByOther.Checked = True Then
            AcByOther_text.Enabled = True
            vAc.Enabled = True
            AcByOther_text.Style("background-color") = "#FFFFFF"
        Else
            AcByOther_text.Enabled = False
            vAc.Enabled = False
            AcByOther_text.Text = ""
            AcByOther_text.Style("background-color") = "#CCCCCC"
        End If
    End Sub

    Protected Sub FullFYPeriod_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles FullFYPeriod.SelectedIndexChanged
        If FullFYPeriod.SelectedItem.Value = "0" Then
            MonthsInFY.Enabled = True
            vMonthsInFY.Enabled = True
            MonthsInFY.Style("background-color") = "#FFFFFF"
        Else
            MonthsInFY.Enabled = False
            MonthsInFY.Text = ""
            vMonthsInFY.Enabled = False
            MonthsInFY.Style("background-color") = "#CCCCCC"
        End If
    End Sub
    Protected Sub Ownership_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Ownership.SelectedIndexChanged
        Dim isOwnershipOther = Ownership.SelectedItem.Value = "05"
        txtOWOther.Enabled = isOwnershipOther
        rfvOWOther.Enabled = isOwnershipOther
        txtOWOther.Style("background-color") = IIf(isOwnershipOther, "#FFFFFF", "#CCCCCC")
    End Sub
    Protected Sub rblEntityRelation_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rblEntityRelation.SelectedIndexChanged
        Dim isEntityRelationOther = rblEntityRelation.SelectedItem.Value = "4"
        txtEntityOther.Enabled = isEntityRelationOther
        rfvEntityOther.Enabled = isEntityRelationOther
        txtEntityOther.Style("background-color") = IIf(isEntityRelationOther, "#FFFFFF", "#CCCCCC")
    End Sub
    Protected Sub chkOtherNature_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkOtherNature.CheckedChanged
        Dim otherNatureChecked = chkOtherNature.Checked
        txtOtherNature.Enabled = otherNatureChecked
        rfvOtherNature.Enabled = otherNatureChecked
        txtOtherNature.Style("background-color") = IIf(otherNatureChecked, "#FFFFFF", "#CCCCCC")
    End Sub
    Protected Sub rblREIT_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rblREIT.SelectedIndexChanged
        Dim isREITYes = rblREIT.SelectedItem.Value = "1"
        txtREITName.Enabled = isREITYes
        rfvREITName.Enabled = isREITYes
        txtREITName.Style("background-color") = IIf(isREITYes, "#FFFFFF", "#CCCCCC")
    End Sub
    Protected Sub chkTransOther_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkTransOther.CheckedChanged
        Dim isTransOther = chkTransOther.Checked
        txtTransOther.Enabled = isTransOther
        rfvTransOther.Enabled = isTransOther
        txtTransOther.Style("background-color") = IIf(isTransOther, "#FFFFFF", "#CCCCCC")
    End Sub
    Protected Sub chkOperations_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkOperations.CheckedChanged
        Dim isOperations = chkOperations.Checked
        ddlOpPercent.Enabled = isOperations
        rfvOpPercent.Enabled = isOperations
    End Sub
    Protected Sub chkFinancing_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkFinancing.CheckedChanged
        Dim isFinancing = chkFinancing.Checked
        ddlFinancing.Enabled = isFinancing
        rfvFinancing.Enabled = isFinancing
    End Sub
    Protected Sub chkRealEstateOW_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkRealestate.CheckedChanged
        Dim isRealEstate = chkRealestate.Checked
        ddlRealEstate.Enabled = isRealEstate
        rfvRealEstate.Enabled = isRealEstate
    End Sub
    Protected Sub chkMgt_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkMgt.CheckedChanged
        Dim isMgt = chkMgt.Checked
        ddlMgt.Enabled = isMgt
        rfvMgt.Enabled = isMgt
    End Sub
    Protected Sub chkRealestate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkRealEstateOW.CheckedChanged
        Dim isRealestate = chkRealEstateOW.Checked
        rblEntityRelation.Enabled = isRealestate
        rfvEntityRelation.Enabled = isRealestate
    End Sub
    Protected Sub chkOpOwner_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkOpOwner.CheckedChanged
        Dim isOpOwner = chkOpOwner.Checked
        txtLegalName.Enabled = isOpOwner
        txtLegalName.Style("background-color") = IIf(isOpOwner, "#FFFFFF", "#CCCCCC")
        rfvLegalName.Enabled = isOpOwner
        txtEIN.Enabled = isOpOwner
        txtEIN.Style("background-color") = IIf(isOpOwner, "#FFFFFF", "#CCCCCC")
        rfvEIN.Enabled = isOpOwner
        txtPercent.Enabled = isOpOwner
        txtPercent.Style("background-color") = IIf(isOpOwner, "#FFFFFF", "#CCCCCC")
        rfvPercent.Enabled = isOpOwner
    End Sub
End Class
