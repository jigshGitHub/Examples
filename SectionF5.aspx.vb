Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionF5
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
            'End If

            'SY2.Text = ConfigurationManager.AppSettings("year")
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            '------------------------------------------------------------------------------
            '------------------------------------------------------------------------------

            LoadSurvey()
            LoadCerti()
            msave.Visible = False
        End If
    End Sub
    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBack.Click
        'Response.Redirect("menu2.aspx")
        Response.Redirect("menu.aspx")
    End Sub

    Protected Sub btnMenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMenu.Click
        SaveSurvey(1)
        SaveSectionC(1)
        msave.Visible = True
    End Sub

    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        Response.Redirect("SectionG.aspx")
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
        If DBReader("Certification2") = True Then
            btnMenu.Enabled = False
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
        'strSQL = "Select * FROM Costs where UserName='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim costsDB As CostsDBLayer = New CostsDBLayer()
        Dim DBReader = costsDB.GetCosts("Select * FROM Costs where UserName='" & UserName.Text & "'")
        While DBReader.Read()

            If Len(DBReader("_1BldgFixA10") & "") > 0 Then _1BldgFixA10.Text = DBReader("_1BldgFixA10")
            If Len(DBReader("_2MovEquipA10") & "") > 0 Then _2MovEquipA10.Text = DBReader("_2MovEquipA10")
            If Len(DBReader("_54EmpBenefitsA10") & "") > 0 Then _54EmpBenefitsA10.Text = DBReader("_54EmpBenefitsA10")
            If Len(DBReader("_6AGA10") & "") > 0 Then _6AGA10.Text = DBReader("_6AGA10")
            If Len(DBReader("_3PlantOpA10") & "") > 0 Then _3PlantOpA10.Text = DBReader("_3PlantOpA10")
            If Len(DBReader("_55LLServA10") & "") > 0 Then _55LLServA10.Text = DBReader("_55LLServA10")
            If Len(DBReader("_56hkeepingA10") & "") > 0 Then _56hkeepingA10.Text = DBReader("_56hkeepingA10")
            If Len(DBReader("_57DietaryA10") & "") > 0 Then _57DietaryA10.Text = DBReader("_57DietaryA10")
            If Len(DBReader("_57DietaryB7") & "") > 0 Then _57DietaryB7.Text = DBReader("_57DietaryB7")
            If Len(DBReader("_58NursAdmA10") & "") > 0 Then _58NursAdmA10.Text = DBReader("_58NursAdmA10")
            If Len(DBReader("_58NursAdmB7") & "") > 0 Then _58NursAdmB7.Text = DBReader("_58NursAdmB7")
            If Len(DBReader("_59RMSA10") & "") > 0 Then _59RMSA10.Text = DBReader("_59RMSA10")
            If Len(DBReader("_59RMSAB7") & "") > 0 Then _59RMSAB7.Text = DBReader("_59RMSAB7")

            If Len(DBReader("_60MedRecA10") & "") > 0 Then _60MedRecA10.Text = DBReader("_60MedRecA10")
            If Len(DBReader("_60MedRecB7") & "") > 0 Then _60MedRecB7.Text = DBReader("_60MedRecB7")
            If Len(DBReader("_61TransStaffA10") & "") > 0 Then _61TransStaffA10.Text = DBReader("_61TransStaffA10")
            If Len(DBReader("_61TransStaffB7") & "") > 0 Then _61TransStaffB7.Text = DBReader("_61TransStaffB7")
            If Len(DBReader("_62VolServA10") & "") > 0 Then _62VolServA10.Text = DBReader("_62VolServA10")
            If Len(DBReader("_62VolServB7") & "") > 0 Then _62VolServB7.Text = DBReader("_62VolServB7")
            If Len(DBReader("_63PharmA10") & "") > 0 Then _63PharmA10.Text = DBReader("_63PharmA10")
            If Len(DBReader("_63PharmB7") & "") > 0 Then _63PharmB7.Text = DBReader("_63PharmB7")
            If Len(DBReader("_64MDASA10") & "") > 0 Then _64MDASA10.Text = DBReader("_64MDASA10")
            If Len(DBReader("_64MDASB7") & "") > 0 Then _64MDASB7.Text = DBReader("_64MDASB7")
            If Len(DBReader("_65OAGServOther") & "") > 0 Then _65OAGServOther.Text = DBReader("_65OAGServOther")
            If Len(DBReader("_65OAGServA10") & "") > 0 Then _65OAGServA10.Text = DBReader("_65OAGServA10")
            If Len(DBReader("_65OAGServB7") & "") > 0 Then _65OAGServB7.Text = DBReader("_65OAGServB7")
            If Len(DBReader("_66PRCServsA10") & "") > 0 Then _66PRCServsA10.Text = DBReader("_66PRCServsA10")
            If Len(DBReader("_66PRCServsB7") & "") > 0 Then _66PRCServsB7.Text = DBReader("_66PRCServsB7")

            If Len(DBReader("_67IPCareA10") & "") > 0 Then _67IPCareA10.Text = DBReader("_67IPCareA10")
            If Len(DBReader("_67IPCareB7") & "") > 0 Then _67IPCareB7.Text = DBReader("_67IPCareB7")
            If Len(DBReader("_15MDAA10") & "") > 0 Then _15MDAA10.Text = DBReader("_15MDAA10")
            If Len(DBReader("_15MDAB7") & "") > 0 Then _15MDAB7.Text = DBReader("_15MDAB7")
            If Len(DBReader("_67NursPractA10") & "") > 0 Then _67NursPractA10.Text = DBReader("_67NursPractA10")
            If Len(DBReader("_67NursPractB7") & "") > 0 Then _67NursPractB7.Text = DBReader("_67NursPractB7")
            If Len(DBReader("_68RegNursA10") & "") > 0 Then _68RegNursA10.Text = DBReader("_68RegNursA10")
            If Len(DBReader("_68RegNursB7") & "") > 0 Then _68RegNursB7.Text = DBReader("_68RegNursB7")

            If Len(DBReader("_69LPVNA10") & "") > 0 Then _69LPVNA10.Text = DBReader("_69LPVNA10")
            If Len(DBReader("_69LPVNB7") & "") > 0 Then _69LPVNB7.Text = DBReader("_69LPVNB7")
            If Len(DBReader("_17PTAA10") & "") > 0 Then _17PTAA10.Text = DBReader("_17PTAA10")
            If Len(DBReader("_17PTAB7") & "") > 0 Then _17PTAB7.Text = DBReader("_17PTAB7")
            If Len(DBReader("_18OTA10") & "") > 0 Then _18OTA10.Text = DBReader("_18OTA10")
            If Len(DBReader("_18OTB7") & "") > 0 Then _18OTB7.Text = DBReader("_18OTB7")
            If Len(DBReader("_19SLPA10") & "") > 0 Then _19SLPA10.Text = DBReader("_19SLPA10")
            If Len(DBReader("_19SLPB7") & "") > 0 Then _19SLPB7.Text = DBReader("_19SLPB7")
            If Len(DBReader("_20MedSSA10") & "") > 0 Then _20MedSSA10.Text = DBReader("_20MedSSA10")
            If Len(DBReader("_20MedSSB7") & "") > 0 Then _20MedSSB7.Text = DBReader("_20MedSSB7")
            If Len(DBReader("_21ChapA10") & "") > 0 Then _21ChapA10.Text = DBReader("_21ChapA10")
            If Len(DBReader("_21ChapB7") & "") > 0 Then _21ChapB7.Text = DBReader("_21ChapB7")
            If Len(DBReader("_22DietA10") & "") > 0 Then _22DietA10.Text = DBReader("_22DietA10")
            If Len(DBReader("_22DietB7") & "") > 0 Then _22DietB7.Text = DBReader("_22DietB7")
            If Len(DBReader("_23OtherCounsA10") & "") > 0 Then _23OtherCounsA10.Text = DBReader("_23OtherCounsA10")
            If Len(DBReader("_23OtherCounsB7") & "") > 0 Then _23OtherCounsB7.Text = DBReader("_23OtherCounsB7")
            If Len(DBReader("_70HAHSA10") & "") > 0 Then _70HAHSA10.Text = DBReader("_70HAHSA10")
            If Len(DBReader("_70HAHSB7") & "") > 0 Then _70HAHSB7.Text = DBReader("_70HAHSB7")
            If Len(DBReader("_30RxBioInfA10") & "") > 0 Then _30RxBioInfA10.Text = DBReader("_30RxBioInfA10")
            If Len(DBReader("_30RxBioInfB7") & "") > 0 Then _30RxBioInfB7.Text = DBReader("_30RxBioInfB7")

            If Len(DBReader("_32PtTransA10") & "") > 0 Then _32PtTransA10.Text = DBReader("_32PtTransA10")
            If Len(DBReader("_32PtTransB7") & "") > 0 Then _32PtTransB7.Text = DBReader("_32PtTransB7")
            If Len(DBReader("_33ImagA10") & "") > 0 Then _33ImagA10.Text = DBReader("_33ImagA10")
            If Len(DBReader("_33ImagB7") & "") > 0 Then _33ImagB7.Text = DBReader("_33ImagB7")
            If Len(DBReader("_34LabDiagA10") & "") > 0 Then _34LabDiagA10.Text = DBReader("_34LabDiagA10")
            If Len(DBReader("_34LabDiagB7") & "") > 0 Then _34LabDiagB7.Text = DBReader("_34LabDiagB7")
            If Len(DBReader("_35MedSupA10") & "") > 0 Then _35MedSupA10.Text = DBReader("_35MedSupA10")
            If Len(DBReader("_35MedSupB7") & "") > 0 Then _35MedSupB7.Text = DBReader("_35MedSupB7")
            If Len(DBReader("_36OPA10") & "") > 0 Then _36OPA10.Text = DBReader("_36OPA10")
            If Len(DBReader("_36OPB7") & "") > 0 Then _36OPB7.Text = DBReader("_36OPB7")
            If Len(DBReader("_71PRTA10") & "") > 0 Then _71PRTA10.Text = DBReader("_71PRTA10")
            If Len(DBReader("_71PRTB7") & "") > 0 Then _71PRTB7.Text = DBReader("_71PRTB7")
            If Len(DBReader("_72PallChemoA10") & "") > 0 Then _72PallChemoA10.Text = DBReader("_72PallChemoA10")
            If Len(DBReader("_72PallChemoB7") & "") > 0 Then _72PallChemoB7.Text = DBReader("_72PallChemoB7")
            If Len(DBReader("_73OPCSA10") & "") > 0 Then _73OPCSA10.Text = DBReader("_73OPCSA10")
            If Len(DBReader("_73OPCSB7") & "") > 0 Then _73OPCSB7.Text = DBReader("_73OPCSB7")
            If Len(DBReader("_73OPCSOther") & "") > 0 Then _73OPCSOther.Text = DBReader("_73OPCSOther")
            If Len(DBReader("_50BereavA10") & "") > 0 Then _50BereavA10.Text = DBReader("_50BereavA10")
            If Len(DBReader("_50BereavB7") & "") > 0 Then _50BereavB7.Text = DBReader("_50BereavB7")
            If Len(DBReader("_51VolA10") & "") > 0 Then _51VolA10.Text = DBReader("_51VolA10")
            If Len(DBReader("_51VolB7") & "") > 0 Then _51VolB7.Text = DBReader("_51VolB7")
            If Len(DBReader("_52FundraisA10") & "") > 0 Then _52FundraisA10.Text = DBReader("_52FundraisA10")
            If Len(DBReader("_52FundraisB7") & "") > 0 Then _52FundraisB7.Text = DBReader("_52FundraisB7")
            If Len(DBReader("_74HPMFA10") & "") > 0 Then _74HPMFA10.Text = DBReader("_74HPMFA10")
            If Len(DBReader("_74HPMFB7") & "") > 0 Then _74HPMFB7.Text = DBReader("_74HPMFB7")
            If Len(DBReader("_75PCPA10") & "") > 0 Then _75PCPA10.Text = DBReader("_75PCPA10")
            If Len(DBReader("_75PCPB7") & "") > 0 Then _75PCPB7.Text = DBReader("_75PCPB7")
            If Len(DBReader("_76MDASA10") & "") > 0 Then _76MDASA10.Text = DBReader("_76MDASA10")
            If Len(DBReader("_76MDASB7") & "") > 0 Then _76MDASB7.Text = DBReader("_76MDASB7")
            If Len(DBReader("_77ResCareA10") & "") > 0 Then _77ResCareA10.Text = DBReader("_77ResCareA10")
            If Len(DBReader("_77ResCareB7") & "") > 0 Then _77ResCareB7.Text = DBReader("_77ResCareB7")
            If Len(DBReader("_78Advert10") & "") > 0 Then _78Advert10.Text = DBReader("_78Advert10")
            If Len(DBReader("_78AdvertB7") & "") > 0 Then _78AdvertB7.Text = DBReader("_78AdvertB7")
            If Len(DBReader("_79THTMA10") & "") > 0 Then _79THTMA10.Text = DBReader("_79THTMA10")
            If Len(DBReader("_79THTMB7") & "") > 0 Then _79THTMB7.Text = DBReader("_79THTMB7")
            If Len(DBReader("_80thriftStA10") & "") > 0 Then _80thriftStA10.Text = DBReader("_80thriftStA10")
            If Len(DBReader("_80thriftStB7") & "") > 0 Then _80thriftStB7.Text = DBReader("_80thriftStB7")
            If Len(DBReader("_81NursFacRmA10") & "") > 0 Then _81NursFacRmA10.Text = DBReader("_81NursFacRmA10")
            If Len(DBReader("_81NursFacRmB7") & "") > 0 Then _81NursFacRmB7.Text = DBReader("_81NursFacRmB7")
            If Len(DBReader("_82NonReimbOtherA10") & "") > 0 Then _82NonReimbOtherA10.Text = DBReader("_82NonReimbOtherA10")
            If Len(DBReader("_82NonReimbOtherB7") & "") > 0 Then _82NonReimbOtherB7.Text = DBReader("_82NonReimbOtherB7")
            If Len(DBReader("_82NonReimbOther") & "") > 0 Then _82NonReimbOther.Text = DBReader("_82NonReimbOther")
            'If Len(DBReader("_71Other") & "") > 0 Then _71Other.Text = DBReader("_71Other") _txt82NonReimbOther
            If Len(DBReader("_83ContHomeCareA10") & "") > 0 Then _83ContHomeCareA10.Text = DBReader("_83ContHomeCareA10")
            If Len(DBReader("_83ContHomeCareB7") & "") > 0 Then _83ContHomeCareB7.Text = DBReader("_83ContHomeCareB7")
            If Len(DBReader("_84RoutHomeCareA10") & "") > 0 Then _84RoutHomeCareA10.Text = DBReader("_84RoutHomeCareA10")
            If Len(DBReader("_84RoutHomeCareB7") & "") > 0 Then _84RoutHomeCareB7.Text = DBReader("_84RoutHomeCareB7")
            If Len(DBReader("_85InpatRespA10") & "") > 0 Then _85InpatRespA10.Text = DBReader("_85InpatRespA10")
            If Len(DBReader("_85InpatRespB7") & "") > 0 Then _85InpatRespB7.Text = DBReader("_85InpatRespB7")
            If Len(DBReader("_86GenRespA10") & "") > 0 Then _86GenRespA10.Text = DBReader("_86GenRespA10")
            If Len(DBReader("_86GenRespB7") & "") > 0 Then _86GenRespB7.Text = DBReader("_86GenRespB7")
            If Len(DBReader("_100TotalCostsA10") & "") > 0 Then _100TotalCostsA10.Text = DBReader("_100TotalCostsA10")
            If Len(DBReader("_100TotalCostsB7") & "") > 0 Then _100TotalCostsB7.Text = DBReader("_100TotalCostsB7")
            If Len(DBReader("CostRptRouHomeCare") & "") > 0 Then CostRptRouHomeCare.Text = DBReader("CostRptRouHomeCare")
            If Len(DBReader("CostRptGIDays") & "") > 0 Then CostRptGIDays.Text = DBReader("CostRptGIDays")
            If Len(DBReader("CostRPTRespiteDays") & "") > 0 Then CostRPTRespiteDays.Text = DBReader("CostRPTRespiteDays")
            If Len(DBReader("CostRPTTotHosDays") & "") > 0 Then CostRPTTotHosDays.Text = DBReader("CostRPTTotHosDays")
            If Len(DBReader("CostRptContHomeCare") & "") > 0 Then CostRptContHomeCare.Text = DBReader("CostRptContHomeCare")
            If Len(DBReader("totPallCareVisits") & "") > 0 Then totPallCareVisits.Text = DBReader("totPallCareVisits")
            If Len(DBReader("totPallCareRev") & "") > 0 Then totPallCareRev.Text = DBReader("totPallCareRev")


        End While
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        costsDB.TerminateDBOperation()
    End Sub
    Sub SaveSectionC(ByVal int As Integer)
        'Commented code - JS 
        'Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Update Survey set SectionF5='" & int & "' WHERE Username='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey("Update Survey set SectionF5='" & int & "' WHERE Username='" & UserName.Text & "'")
    End Sub
    Sub SaveSurvey(ByVal int As Integer)
        Dim intCount As Integer
        Dim success As Integer = 1
        Dim SQLinsert As String = "INSERT INTO Costs (UserName, _1BldgFixA10, _2MovEquipA10, _54EmpBenefitsA10, _6AGA10, _3PlantOpA10, "
        SQLinsert = SQLinsert + "_55LLServA10, _56hkeepingA10, _57DietaryA10, _57DietaryB7, _58NursAdmA10, _58NursAdmB7, _59RMSA10, _59RMSAB7, "
        SQLinsert = SQLinsert + "_60MedRecA10, _60MedRecB7, _61TransStaffA10, _61TransStaffB7, _62VolServA10, _62VolServB7, _63PharmA10, _63PharmB7, _64MDASA10, _64MDASB7, _65OAGServA10, "
        SQLinsert = SQLinsert + "_65OAGServB7, _65OAGServOther, _66PRCServsA10, _66PRCServsB7, _67IPCareA10, _67IPCareB7, _15MDAA10, _15MDAB7, _67NursPractA10, _67NursPractB7, "
        SQLinsert = SQLinsert + "_68RegNursA10, _68RegNursB7, _69LPVNA10, _69LPVNB7, _17PTAA10, _17PTAB7, _18OTA10, _18OTB7, "
        SQLinsert = SQLinsert + "_19SLPA10, _19SLPB7, _20MedSSA10, _20MedSSB7, _21ChapA10, _21ChapB7, _22DietA10, _22DietB7, _23OtherCounsA10, _23OtherCounsB7, "
        SQLinsert = SQLinsert + "_70HAHSA10, _70HAHSB7, _30RxBioInfA10, _30RxBioInfB7, _32PtTransA10, _32PtTransB7, _33ImagA10, _33ImagB7, _34LabDiagA10, "
        SQLinsert = SQLinsert + "_34LabDiagB7, _35MedSupA10, _35MedSupB7, _36OPA10, _36OPB7, _71PRTA10, _71PRTB7, _72PallChemoA10, _72PallChemoB7, "
        SQLinsert = SQLinsert + "_73OPCSA10, _73OPCSB7, _73OPCSOther, _50BereavA10, _50BereavB7, _51VolA10, _51VolB7, _52FundraisA10, _52FundraisB7, _74HPMFA10, "
        SQLinsert = SQLinsert + "_74HPMFB7, _75PCPA10, _75PCPB7, _76MDASA10, _76MDASB7, _77ResCareA10, _77ResCareB7, _78Advert10, _78AdvertB7, "
        SQLinsert = SQLinsert + "_79THTMA10, _79THTMB7, _80thriftStA10, _80thriftStB7, _81NursFacRmA10, _81NursFacRmB7, _82NonReimbOtherA10, _82NonReimbOtherB7, _82NonReimbOther, "
        SQLinsert = SQLinsert + "_83ContHomeCareA10, _83ContHomeCareB7, _84RoutHomeCareA10, _84RoutHomeCareB7, _85InpatRespA10, _85InpatRespB7,_86GenRespA10, _86GenRespB7, "
        SQLinsert = SQLinsert + "_100TotalCostsA10, _100TotalCostsB7, CostRptGIDays, CostRPTRespiteDays, CostRPTTotHosDays, CostRptContHomeCare, CostRptRouHomeCare, totPallCareVisits, totPallCareRev, SectionF5)"
        SQLinsert = SQLinsert + "Values (@UserName, @_1BldgFixA10, @_2MovEquipA10, @_54EmpBenefitsA10, @_6AGA10, @_3PlantOpA10, "
        SQLinsert = SQLinsert + "@_55LLServA10, @_56hkeepingA10, @_57DietaryA10, @_57DietaryB7, @_58NursAdmA10, @_58NursAdmB7, @_59RMSA10, @_59RMSAB7, "
        SQLinsert = SQLinsert + "@_60MedRecA10, @_60MedRecB7, @_61TransStaffA10, @_61TransStaffB7, @_62VolServA10, @_62VolServB7, @_63PharmA10, @_63PharmB7, @_64MDASA10, @_64MDASB7, @_65OAGServA10, "
        SQLinsert = SQLinsert + "@_65OAGServB7, @_65OAGServOther, @_66PRCServsA10, @_66PRCServsB7, @_67IPCareA10, @_67IPCareB7, @_15MDAA10, @_15MDAB7, @_67NursPractA10, @_67NursPractB7, "
        SQLinsert = SQLinsert + "@_68RegNursA10, @_68RegNursB7, @_69LPVNA10, @_69LPVNB7, @_17PTAA10, @_17PTAB7, @_18OTA10, @_18OTB7, "
        SQLinsert = SQLinsert + "@_19SLPA10, @_19SLPB7, @_20MedSSA10, @_20MedSSB7, @_21ChapA10, @_21ChapB7, @_22DietA10, @_22DietB7, @_23OtherCounsA10, @_23OtherCounsB7, "
        SQLinsert = SQLinsert + "@_70HAHSA10, @_70HAHSB7, @_30RxBioInfA10, @_30RxBioInfB7, @_32PtTransA10, @_32PtTransB7, @_33ImagA10, @_33ImagB7, @_34LabDiagA10, "
        SQLinsert = SQLinsert + "@_34LabDiagB7, @_35MedSupA10, @_35MedSupB7, @_36OPA10, @_36OPB7, @_71PRTA10, @_71PRTB7, @_72PallChemoA10, @_72PallChemoB7, "
        SQLinsert = SQLinsert + "@_73OPCSA10, @_73OPCSB7, @_73OPCSOther, @_50BereavA10, @_50BereavB7, @_51VolA10, @_51VolB7, @_52FundraisA10, @_52FundraisB7, @_74HPMFA10, "
        SQLinsert = SQLinsert + "@_74HPMFB7, @_75PCPA10, @_75PCPB7, @_76MDASA10, @_76MDASB7, @_77ResCareA10, @_77ResCareB7, @_78Advert10, @_78AdvertB7, "
        SQLinsert = SQLinsert + "@_79THTMA10, @_79THTMB7, @_80thriftStA10, @_80thriftStB7, @_81NursFacRmA10, @_81NursFacRmB7, @_82NonReimbOtherA10, @_82NonReimbOtherB7, @_82NonReimbOther, "
        SQLinsert = SQLinsert + "@_83ContHomeCareA10, @_83ContHomeCareB7, @_84RoutHomeCareA10, @_84RoutHomeCareB7, @_85InpatRespA10, @_85InpatRespB7,@_86GenRespA10, @_86GenRespB7, "
        SQLinsert = SQLinsert + "@_100TotalCostsA10, @_100TotalCostsB7, @CostRptGIDays, @CostRPTRespiteDays, @CostRPTTotHosDays, @CostRptContHomeCare, @CostRptRouHomeCare, @totPallCareVisits, @totPallCareRev, @SectionF5)"
        Dim SQLexist As String = "SELECT COUNT(*) FROM Costs WHERE UserName='" & UserName.Text & "'"
        Dim SQLupdate As String
        Dim cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        cnn.Open()
        Using cmdinsert As New SqlCommand(SQLinsert, cnn)
            Using cmdexist As New SqlCommand(SQLexist, cnn)
                cmdexist.Parameters.Clear()
                intCount = cmdexist.ExecuteScalar()
                If (intCount = 0) Then
                    cmdinsert.Parameters.Clear()
                    cmdinsert.Parameters.AddWithValue("@UserName", UserName.Text)
                    If Len(_1BldgFixA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_1BldgFixA10", _1BldgFixA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_1BldgFixA10", "0.00")
                    End If

                    If Len(_2MovEquipA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_2MovEquipA10", _2MovEquipA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_2MovEquipA10", "0.00")
                    End If

                    If Len(_54EmpBenefitsA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_54EmpBenefitsA10", _54EmpBenefitsA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_54EmpBenefitsA10", "0.00")
                    End If

                    If Len(_6AGA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_6AGA10", _6AGA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_6AGA10", "0.00")
                    End If

                    If Len(_3PlantOpA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_3PlantOpA10", _3PlantOpA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_3PlantOpA10", "0.00")
                    End If

                    If Len(_55LLServA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_55LLServA10", _55LLServA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_55LLServA10", "0.00")
                    End If

                    If Len(_56hkeepingA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_56hkeepingA10", _56hkeepingA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_56hkeepingA10", "0.00")
                    End If

                    If Len(_57DietaryA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_57DietaryA10", _57DietaryA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_57DietaryA10", "0.00")
                    End If

                    If Len(_57DietaryB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_57DietaryB7", _57DietaryB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_57DietaryB7", "0.00")
                    End If

                    If Len(_58NursAdmA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_58NursAdmA10", _58NursAdmA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_58NursAdmA10", "0.00")
                    End If

                    If Len(_58NursAdmB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_58NursAdmB7", _58NursAdmB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_58NursAdmB7", "0.00")
                    End If

                    If Len(_59RMSA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_59RMSA10", _59RMSA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_59RMSA10", "0.00")
                    End If

                    If Len(_59RMSAB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_59RMSAB7", _59RMSAB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_59RMSAB7", "0.00")
                    End If

                    If Len(_60MedRecA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_60MedRecA10", _60MedRecA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_60MedRecA10", "0.00")
                    End If

                    If Len(_60MedRecB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_60MedRecB7", _60MedRecB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_60MedRecB7", "0.00")
                    End If

                    If Len(_61TransStaffA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_61TransStaffA10", _61TransStaffA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_61TransStaffA10", "0.00")
                    End If

                    If Len(_61TransStaffB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_61TransStaffB7", _61TransStaffB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_61TransStaffB7", "0.00")
                    End If

                    If Len(_62VolServA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_62VolServA10", _62VolServA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_62VolServA10", "0.00")
                    End If

                    If Len(_62VolServB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_62VolServB7", _62VolServB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_62VolServB7", "0.00")
                    End If

                    If Len(_63PharmA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_63PharmA10", _63PharmA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_63PharmA10", "0.00")
                    End If

                    If Len(_63PharmB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_63PharmB7", _63PharmB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_63PharmB7", "0.00")
                    End If

                    If Len(_64MDASA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_64MDASA10", _64MDASA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_64MDASA10", "0.00")
                    End If

                    If Len(_64MDASB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_64MDASB7", _64MDASB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_64MDASB7", "0.00")
                    End If

                    If Len(_65OAGServA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_65OAGServA10", _65OAGServA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_65OAGServA10", "0.00")
                    End If

                    If Len(_65OAGServB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_65OAGServB7", _65OAGServB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_65OAGServB7", "0.00")
                    End If

                    If Len(_66PRCServsA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_66PRCServsA10", _66PRCServsA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_66PRCServsA10", "0.00")
                    End If

                    If Len(_66PRCServsB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_66PRCServsB7", _66PRCServsB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_66PRCServsB7", "0.00")
                    End If

                    If Len(_67IPCareA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_67IPCareA10", _67IPCareA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_67IPCareA10", "0.00")
                    End If

                    If Len(_67IPCareB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_67IPCareB7", _67IPCareB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_67IPCareB7", "0.00")
                    End If

                    If Len(_15MDAA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_15MDAA10", _15MDAA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_15MDAA10", "0.00")
                    End If

                    If Len(_15MDAB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_15MDAB7", _15MDAB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_15MDAB7", "0.00")
                    End If

                    If Len(_67NursPractA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_67NursPractA10", _67NursPractA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_67NursPractA10", "0.00")
                    End If

                    If Len(_67NursPractB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_67NursPractB7", _67NursPractB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_67NursPractB7", "0.00")
                    End If

                    If Len(_68RegNursA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_68RegNursA10", _68RegNursA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_68RegNursA10", "0.00")
                    End If

                    If Len(_68RegNursB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_68RegNursB7", _68RegNursB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_68RegNursB7", "0.00")
                    End If

                    If Len(_69LPVNA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_69LPVNA10", _69LPVNA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_69LPVNA10", "0.00")
                    End If

                    If Len(_69LPVNB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_69LPVNB7", _69LPVNB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_69LPVNB7", "0.00")
                    End If

                    If Len(_17PTAA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_17PTAA10", _17PTAA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_17PTAA10", "0.00")
                    End If

                    If Len(_17PTAB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_17PTAB7", _17PTAB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_17PTAB7", "0.00")
                    End If

                    If Len(_18OTA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_18OTA10", _18OTA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_18OTA10", "0.00")
                    End If

                    If Len(_18OTB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_18OTB7", _18OTB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_18OTB7", "0.00")
                    End If

                    If Len(_19SLPA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_19SLPA10", _19SLPA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_19SLPA10", "0.00")
                    End If

                    If Len(_19SLPB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_19SLPB7", _19SLPB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_19SLPB7", "0.00")
                    End If

                    If Len(_20MedSSA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_20MedSSA10", _20MedSSA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_20MedSSA10", "0.00")
                    End If

                    If Len(_20MedSSB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_20MedSSB7", _20MedSSB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_20MedSSB7", "0.00")
                    End If

                    If Len(_21ChapA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_21ChapA10", _21ChapA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_21ChapA10", "0.00")
                    End If

                    If Len(_21ChapB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_21ChapB7", _21ChapB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_21ChapB7", "0.00")
                    End If

                    If Len(_22DietA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_22DietA10", _22DietA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_22DietA10", "0.00")
                    End If

                    If Len(_22DietB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_22DietB7", _22DietB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_22DietB7", "0.00")
                    End If

                    If Len(_23OtherCounsA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_23OtherCounsA10", _23OtherCounsA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_23OtherCounsA10", "0.00")
                    End If

                    If Len(_23OtherCounsB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("_23OtherCounsB7", _23OtherCounsB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("_23OtherCounsB7", "0.00")
                    End If

                    If Len(_70HAHSA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_70HAHSA10", _70HAHSA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_70HAHSA10", "0.00")
                    End If

                    If Len(_70HAHSB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_70HAHSB7", _70HAHSB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_70HAHSB7", "0.00")
                    End If

                    If Len(_30RxBioInfA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_30RxBioInfA10", _30RxBioInfA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("_30RxBioInfA10", "0.00")
                    End If

                    If Len(_30RxBioInfB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_30RxBioInfB7", _30RxBioInfB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_30RxBioInfB7", "0.00")
                    End If

                    If Len(_32PtTransA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("_32PtTransA10", _32PtTransA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("_32PtTransA10", "0.00")
                    End If

                    If Len(_32PtTransB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_32PtTransB7", _32PtTransB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_32PtTransB7", "0.00")
                    End If

                    If Len(_33ImagA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_33ImagA10", _33ImagA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_33ImagA10", "0.00")
                    End If

                    If Len(_33ImagB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_33ImagB7", _33ImagB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_33ImagB7", "0.00")
                    End If

                    If Len(_34LabDiagA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_34LabDiagA10", _34LabDiagA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_34LabDiagA10", "0.00")
                    End If

                    If Len(_34LabDiagB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_34LabDiagB7", _34LabDiagB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_34LabDiagB7", "0.00")
                    End If

                    If Len(_35MedSupA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_35MedSupA10", _35MedSupA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_35MedSupA10", "0.00")
                    End If

                    If Len(_35MedSupB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_35MedSupB7", _35MedSupB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_35MedSupB7", "0.00")
                    End If

                    If Len(_36OPA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_36OPA10", _36OPA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_36OPA10", "0.00")
                    End If

                    If Len(_36OPB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_36OPB7", _36OPB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_36OPB7", "0.00")
                    End If

                    If Len(_71PRTA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_71PRTA10", _71PRTA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_71PRTA10", "0.00")
                    End If

                    If Len(_71PRTB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_71PRTB7", _71PRTB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_71PRTB7", "0.00")
                    End If

                    If Len(_72PallChemoA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_72PallChemoA10", _72PallChemoA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_72PallChemoA10", "0.00")
                    End If

                    If Len(_72PallChemoB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_72PallChemoB7", _72PallChemoB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_72PallChemoB7", "0.00")
                    End If

                    If Len(_73OPCSA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_73OPCSA10", _73OPCSA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_73OPCSA10", "0.00")
                    End If
                    If Len(_73OPCSB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_73OPCSB7", _73OPCSB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_73OPCSB7", "0.00")
                    End If

                    If Len(_83ContHomeCareA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_83ContHomeCareA10", _83ContHomeCareA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_83ContHomeCareA10", "0.00")
                    End If

                    If Len(_83ContHomeCareB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_83ContHomeCareB7", _83ContHomeCareB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_83ContHomeCareB7", "0.00")
                    End If

                    If Len(_84RoutHomeCareA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_84RoutHomeCareA10", _84RoutHomeCareA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_84RoutHomeCareA10", "0.00")
                    End If

                    If Len(_84RoutHomeCareB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_84RoutHomeCareB7", _84RoutHomeCareB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_84RoutHomeCareB7", "0.00")
                    End If

                    If Len(_85InpatRespA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_85InpatRespA10", _85InpatRespA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_85InpatRespA10", "0.00")
                    End If

                    If Len(_85InpatRespB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_85InpatRespB7", _85InpatRespB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_85InpatRespB7", "0.00")
                    End If

                    If Len(_86GenRespA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_86GenRespA10", _86GenRespA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_86GenRespA10", "0.00")
                    End If

                    If Len(_86GenRespB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_86GenRespB7", _86GenRespB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_86GenRespB7", "0.00")
                    End If

                    If Len(_50BereavA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("_50BereavA10", _50BereavA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_50BereavA10", "0.00")
                    End If

                    If Len(_50BereavB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_50BereavB7", _50BereavB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_50BereavB7", "0.00")
                    End If

                    If Len(_51VolA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_51VolA10", _51VolA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_51VolA10", "0.00")
                    End If

                    If Len(_51VolB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_51VolB7", _51VolB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_51VolB7", "0.00")
                    End If

                    If Len(_52FundraisA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_52FundraisA10", _52FundraisA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_52FundraisA10", "0.00")
                    End If

                    If Len(_52FundraisB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_52FundraisB7", _52FundraisB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_52FundraisB7", "0.00")
                    End If

                    If Len(_74HPMFA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_74HPMFA10", _74HPMFA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_74HPMFA10", "0.00")
                    End If

                    If Len(_74HPMFB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_74HPMFB7", _74HPMFB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_74HPMFB7", "0.00")
                    End If

                    If Len(_75PCPA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_75PCPA10", _75PCPA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_75PCPA10", "0.00")
                    End If

                    If Len(_75PCPB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_75PCPB7", _75PCPB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_75PCPB7", "0.00")
                    End If

                    If Len(_76MDASA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_76MDASA10", _76MDASA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_76MDASA10", "0.00")
                    End If

                    If Len(_76MDASB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_76MDASB7", _76MDASB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_76MDASB7", "0.00")
                    End If

                    If Len(_77ResCareA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_77ResCareA10", _77ResCareA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_77ResCareA10", "0.00")
                    End If

                    If Len(_77ResCareB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_77ResCareB7", _77ResCareB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_77ResCareB7", "0.00")
                    End If

                    If Len(_78Advert10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_78Advert10", _78Advert10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_78Advert10", "0.00")
                    End If

                    If Len(_78AdvertB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_78AdvertB7", _78AdvertB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_78AdvertB7", "0.00")
                    End If

                    If Len(_79THTMA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_79THTMA10", _79THTMA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_79THTMA10", "0.00")
                    End If

                    If Len(_79THTMB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_79THTMB7", _79THTMB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_79THTMB7", "0.00")
                    End If

                    If Len(_80thriftStA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_80thriftStA10", _80thriftStA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_80thriftStA10", "0.00")
                    End If

                    If Len(_80thriftStB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_80thriftStB7", _80thriftStB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_80thriftStB7", "0.00")
                    End If

                    If Len(_81NursFacRmA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_81NursFacRmA10", _81NursFacRmA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_81NursFacRmA10", "0.00")
                    End If

                    If Len(_81NursFacRmB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_81NursFacRmB7", _81NursFacRmB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_81NursFacRmB7", "0.00")
                    End If

                    If Len(_82NonReimbOtherA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_82NonReimbOtherA10", _82NonReimbOtherA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_82NonReimbOtherA10", "0.00")
                    End If

                    If Len(_82NonReimbOtherB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_82NonReimbOtherB7", _82NonReimbOtherB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_82NonReimbOtherB7", "0.00")
                    End If

                    If Len(_82NonReimbOther.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_82NonReimbOther", _82NonReimbOther.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_82NonReimbOther", "")
                    End If

                    If Len(_65OAGServOther.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_65OAGServOther", _65OAGServOther.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_65OAGServOther", "")
                    End If

                    If Len(_73OPCSOther.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_73OPCSOther", _73OPCSOther.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_73OPCSOther", "")
                    End If

                    'If Len(_71Other.Text & "") > 0 Then
                    '    cmdinsert.Parameters.AddWithValue("@_71Other", _71Other.Text)
                    'Else
                    '    cmdinsert.Parameters.AddWithValue("@_71Other", "")
                    'End If

                    If Len(_100TotalCostsA10.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_100TotalCostsA10", _100TotalCostsA10.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_100TotalCostsA10", "0.00")
                    End If

                    If Len(_100TotalCostsB7.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@_100TotalCostsB7", _100TotalCostsB7.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@_100TotalCostsB7", "0.00")
                    End If

                    If Len(CostRptContHomeCare.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@CostRptContHomeCare", CostRptContHomeCare.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@CostRptContHomeCare", "0.00")
                    End If

                    If Len(CostRptRouHomeCare.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@CostRptRouHomeCare", CostRptRouHomeCare.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@CostRptRouHomeCare", "0.00")
                    End If

                    If Len(CostRptGIDays.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@CostRptGIDays", CostRptGIDays.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@CostRptGIDays", "0.00")
                    End If

                    If Len(CostRPTRespiteDays.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@CostRPTRespiteDays", CostRPTRespiteDays.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@CostRPTRespiteDays", "0.00")
                    End If

                    If Len(CostRPTTotHosDays.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@CostRPTTotHosDays", CostRPTTotHosDays.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@CostRPTTotHosDays", "0.00")
                    End If

                    If Len(totPallCareVisits.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@totPallCareVisits", totPallCareVisits.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@totPallCareVisits", "0.00")
                    End If

                    If Len(totPallCareRev.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@totPallCareRev", totPallCareRev.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@totPallCareRev", "0.00")
                    End If

                    cmdinsert.Parameters.AddWithValue("@SectionF5", int)
                    cmdinsert.ExecuteNonQuery()
                Else
                    'exists already - just update record
                    SQLupdate = "Update Costs SET "
                    If Len(_1BldgFixA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _1BldgFixA10='" & _1BldgFixA10.Text & "'," Else SQLupdate = SQLupdate & " _1BldgFixA10=0.00,"
                    If Len(_2MovEquipA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _2MovEquipA10='" & _2MovEquipA10.Text & "'," Else SQLupdate = SQLupdate & " _2MovEquipA10=0.00,"
                    If Len(_54EmpBenefitsA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _54EmpBenefitsA10='" & _54EmpBenefitsA10.Text & "'," Else SQLupdate = SQLupdate & " _54EmpBenefitsA10=0.00,"
                    If Len(_6AGA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _6AGA10='" & _6AGA10.Text & "'," Else SQLupdate = SQLupdate & " _6AGA10=0.00,"
                    If Len(_3PlantOpA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _3PlantOpA10='" & _3PlantOpA10.Text & "'," Else SQLupdate = SQLupdate & " _3PlantOpA10=0.00,"
                    If Len(_55LLServA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _55LLServA10='" & _55LLServA10.Text & "'," Else SQLupdate = SQLupdate & " _55LLServA10=0.00,"
                    If Len(_56hkeepingA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _56hkeepingA10='" & _56hkeepingA10.Text & "'," Else SQLupdate = SQLupdate & " _56hkeepingA10=0.00,"
                    If Len(_57DietaryA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _57DietaryA10='" & _57DietaryA10.Text & "'," Else SQLupdate = SQLupdate & " _57DietaryA10=0.00,"
                    If Len(_57DietaryB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _57DietaryB7='" & _57DietaryB7.Text & "'," Else SQLupdate = SQLupdate & " _57DietaryB7=0.00,"
                    If Len(_58NursAdmA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _58NursAdmA10='" & _58NursAdmA10.Text & "'," Else SQLupdate = SQLupdate & " _58NursAdmA10=0.00,"
                    If Len(_58NursAdmB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _58NursAdmB7='" & _58NursAdmB7.Text & "'," Else SQLupdate = SQLupdate & " _58NursAdmB7=0.00,"
                    If Len(_59RMSA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _59RMSA10='" & _59RMSA10.Text & "'," Else SQLupdate = SQLupdate & " _59RMSA10=0.00,"
                    If Len(_59RMSAB7.Text & "") > 0 Then SQLupdate = SQLupdate & "  _59RMSAB7='" & _59RMSAB7.Text & "'," Else SQLupdate = SQLupdate & "  _59RMSAB7=0.00,"
                    If Len(_60MedRecA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _60MedRecA10='" & _60MedRecA10.Text & "'," Else SQLupdate = SQLupdate & " _60MedRecA10=0.00,"
                    If Len(_60MedRecB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _60MedRecB7='" & _60MedRecB7.Text & "'," Else SQLupdate = SQLupdate & " _60MedRecB7=0.00,"
                    If Len(_61TransStaffA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _61TransStaffA10='" & _61TransStaffA10.Text & "'," Else SQLupdate = SQLupdate & " _61TransStaffA10=0.00,"
                    If Len(_61TransStaffB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _61TransStaffB7='" & _61TransStaffB7.Text & "'," Else SQLupdate = SQLupdate & " _61TransStaffB7=0.00,"
                    If Len(_62VolServA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _62VolServA10='" & _62VolServA10.Text & "'," Else SQLupdate = SQLupdate & " _62VolServA10=0.00,"
                    If Len(_62VolServB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _62VolServB7='" & _62VolServB7.Text & "'," Else SQLupdate = SQLupdate & " _62VolServB7=0.00,"
                    If Len(_63PharmA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _63PharmA10='" & _63PharmA10.Text & "'," Else SQLupdate = SQLupdate & " _63PharmA10=0.00,"
                    If Len(_63PharmB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _63PharmB7='" & _63PharmB7.Text & "'," Else SQLupdate = SQLupdate & " _63PharmB7=0.00,"
                    If Len(_64MDASA10.Text & "") > 0 Then SQLupdate = SQLupdate & "  _64MDASA10='" & _64MDASA10.Text & "'," Else SQLupdate = SQLupdate & "  _64MDASA10=0.00,"
                    If Len(_64MDASB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _64MDASB7='" & _64MDASB7.Text & "'," Else SQLupdate = SQLupdate & " _64MDASB7=0.00,"
                    If Len(_65OAGServA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _65OAGServA10='" & _65OAGServA10.Text & "'," Else SQLupdate = SQLupdate & " _65OAGServA10=0.00,"
                    If Len(_65OAGServB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _65OAGServB7='" & _65OAGServB7.Text & "'," Else SQLupdate = SQLupdate & " _65OAGServB7=0.00,"
                    If Len(_66PRCServsA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _66PRCServsA10='" & _66PRCServsA10.Text & "'," Else SQLupdate = SQLupdate & " _66PRCServsA10=0.00,"
                    If Len(_66PRCServsB7.Text & "") > 0 Then SQLupdate = SQLupdate & "  _66PRCServsB7='" & _66PRCServsB7.Text & "'," Else SQLupdate = SQLupdate & "  _66PRCServsB7=0.00,"
                    If Len(_67IPCareA10.Text & "") > 0 Then SQLupdate = SQLupdate & "  _67IPCareA10='" & _67IPCareA10.Text & "'," Else SQLupdate = SQLupdate & "  _67IPCareA10=0.00,"
                    If Len(_67IPCareB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _67IPCareB7='" & _67IPCareB7.Text & "'," Else SQLupdate = SQLupdate & " _67IPCareB7=0.00,"
                    If Len(_15MDAA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _15MDAA10='" & _15MDAA10.Text & "'," Else SQLupdate = SQLupdate & " _15MDAA10=0.00,"
                    If Len(_15MDAB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _15MDAB7='" & _15MDAB7.Text & "'," Else SQLupdate = SQLupdate & " _15MDAB7=0.00,"
                    If Len(_67NursPractA10.Text & "") > 0 Then SQLupdate = SQLupdate & "  _67NursPractA10='" & _67NursPractA10.Text & "'," Else SQLupdate = SQLupdate & "  _67NursPractA10=0.00,"
                    If Len(_67NursPractB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _67NursPractB7='" & _67NursPractB7.Text & "'," Else SQLupdate = SQLupdate & " _67NursPractB7=0.00,"
                    If Len(_68RegNursA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _68RegNursA10='" & _68RegNursA10.Text & "'," Else SQLupdate = SQLupdate & " _68RegNursA10=0.00,"
                    If Len(_68RegNursB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _68RegNursB7='" & _68RegNursB7.Text & "'," Else SQLupdate = SQLupdate & " _68RegNursB7=0.00,"
                    If Len(_17PTAA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _17PTAA10='" & _17PTAA10.Text & "'," Else SQLupdate = SQLupdate & " _17PTAA10=0.00,"
                    If Len(_17PTAB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _17PTAB7='" & _17PTAB7.Text & "'," Else SQLupdate = SQLupdate & "  _17PTAB7=0.00,"
                    If Len(_18OTA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _18OTA10='" & _18OTA10.Text & "'," Else SQLupdate = SQLupdate & " _18OTA10=0.00,"
                    If Len(_18OTB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _18OTB7='" & _18OTB7.Text & "'," Else SQLupdate = SQLupdate & " _18OTB7=0.00,"
                    If Len(_19SLPA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _19SLPA10='" & _19SLPA10.Text & "'," Else SQLupdate = SQLupdate & " _19SLPA10=0.00,"
                    If Len(_19SLPB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _19SLPB7='" & _19SLPB7.Text & "'," Else SQLupdate = SQLupdate & " _19SLPB7=0.00,"
                    If Len(_20MedSSA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _20MedSSA10='" & _20MedSSA10.Text & "'," Else SQLupdate = SQLupdate & " _20MedSSA10=0.00,"
                    If Len(_20MedSSB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _20MedSSB7='" & _20MedSSB7.Text & "'," Else SQLupdate = SQLupdate & " _20MedSSB7=0.00,"
                    If Len(_21ChapA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _21ChapA10='" & _21ChapA10.Text & "'," Else SQLupdate = SQLupdate & "  _21ChapA10=0.00,"
                    If Len(_21ChapB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _21ChapB7='" & _21ChapB7.Text & "'," Else SQLupdate = SQLupdate & " _21ChapB7=0.00,"
                    If Len(_22DietA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _22DietA10='" & _22DietA10.Text & "'," Else SQLupdate = SQLupdate & " _22DietA10=0.00,"
                    If Len(_22DietB7.Text & "") > 0 Then SQLupdate = SQLupdate & "  _22DietB7='" & _22DietB7.Text & "'," Else SQLupdate = SQLupdate & "  _22DietB7=0.00,"
                    If Len(_23OtherCounsA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _23OtherCounsA10='" & _23OtherCounsA10.Text & "'," Else SQLupdate = SQLupdate & " _23OtherCounsA10=0.00,"
                    If Len(_23OtherCounsB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _23OtherCounsB7='" & _23OtherCounsB7.Text & "'," Else SQLupdate = SQLupdate & " _23OtherCounsB7=0.00,"
                    If Len(_70HAHSA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _70HAHSA10='" & _70HAHSA10.Text & "'," Else SQLupdate = SQLupdate & " _70HAHSA10=0.00,"
                    If Len(_70HAHSB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _70HAHSB7='" & _70HAHSB7.Text & "'," Else SQLupdate = SQLupdate & " _70HAHSB7=0.00,"
                    If Len(_30RxBioInfA10.Text & "") > 0 Then SQLupdate = SQLupdate & "  _30RxBioInfA10='" & _30RxBioInfA10.Text & "'," Else SQLupdate = SQLupdate & "  _30RxBioInfA10=0.00,"
                    If Len(_30RxBioInfB7.Text & "") > 0 Then SQLupdate = SQLupdate & "  _30RxBioInfB7='" & _30RxBioInfB7.Text & "'," Else SQLupdate = SQLupdate & "  _30RxBioInfB7=0.00,"
                    If Len(_32PtTransA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _32PtTransA10='" & _32PtTransA10.Text & "'," Else SQLupdate = SQLupdate & " _32PtTransA10=0.00,"
                    If Len(_32PtTransB7.Text & "") > 0 Then SQLupdate = SQLupdate & "  _32PtTransB7='" & _32PtTransB7.Text & "'," Else SQLupdate = SQLupdate & "  _32PtTransB7=0.00,"
                    If Len(_33ImagA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _33ImagA10='" & _33ImagA10.Text & "'," Else SQLupdate = SQLupdate & "_33ImagA10=0.00,"
                    If Len(_33ImagB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _33ImagB7='" & _33ImagB7.Text & "'," Else SQLupdate = SQLupdate & " _33ImagB7=0.00,"
                    If Len(_34LabDiagA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _34LabDiagA10='" & _34LabDiagA10.Text & "'," Else SQLupdate = SQLupdate & " _34LabDiagA10=0.00,"
                    If Len(_34LabDiagB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _34LabDiagB7='" & _34LabDiagB7.Text & "'," Else SQLupdate = SQLupdate & " _34LabDiagB7=0.00,"
                    If Len(_35MedSupA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _35MedSupA10='" & _35MedSupA10.Text & "'," Else SQLupdate = SQLupdate & " _35MedSupA10=0.00,"
                    If Len(_35MedSupB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _35MedSupB7='" & _35MedSupB7.Text & "'," Else SQLupdate = SQLupdate & " _35MedSupB7=0.00,"
                    If Len(_36OPA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _36OPA10='" & _36OPA10.Text & "'," Else SQLupdate = SQLupdate & " _36OPA10=0.00,"
                    If Len(_36OPB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _36OPB7='" & _36OPB7.Text & "'," Else SQLupdate = SQLupdate & " _36OPB7=0.00,"
                    If Len(_71PRTA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _71PRTA10='" & _71PRTA10.Text & "'," Else SQLupdate = SQLupdate & " _71PRTA10=0.00,"
                    If Len(_71PRTB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _71PRTB7='" & _71PRTB7.Text & "'," Else SQLupdate = SQLupdate & " _71PRTB7=0.00,"
                    If Len(_72PallChemoA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _72PallChemoA10='" & _72PallChemoA10.Text & "'," Else SQLupdate = SQLupdate & " _72PallChemoA10=0.00,"
                    If Len(_72PallChemoB7.Text & "") > 0 Then SQLupdate = SQLupdate & "  _72PallChemoB7='" & _72PallChemoB7.Text & "'," Else SQLupdate = SQLupdate & "  _72PallChemoB7=0.00,"
                    If Len(_73OPCSA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _73OPCSA10='" & _73OPCSA10.Text & "'," Else SQLupdate = SQLupdate & " _73OPCSA10=0.00,"
                    If Len(_73OPCSB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _73OPCSB7='" & _73OPCSB7.Text & "'," Else SQLupdate = SQLupdate & " _73OPCSB7=0.00,"
                    If Len(_83ContHomeCareA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _83ContHomeCareA10='" & _83ContHomeCareA10.Text & "'," Else SQLupdate = SQLupdate & " _83ContHomeCareA10=0.00,"
                    If Len(_83ContHomeCareB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _83ContHomeCareB7='" & _83ContHomeCareB7.Text & "'," Else SQLupdate = SQLupdate & " _83ContHomeCareB7=0.00,"
                    If Len(_84RoutHomeCareA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _84RoutHomeCareA10='" & _84RoutHomeCareA10.Text & "'," Else SQLupdate = SQLupdate & " _84RoutHomeCareA10=0.00,"
                    If Len(_84RoutHomeCareB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _84RoutHomeCareB7='" & _84RoutHomeCareB7.Text & "'," Else SQLupdate = SQLupdate & " _84RoutHomeCareB7=0.00,"
                    If Len(_85InpatRespA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _85InpatRespA10='" & _85InpatRespA10.Text & "'," Else SQLupdate = SQLupdate & " _85InpatRespA10=0.00,"
                    If Len(_85InpatRespB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _85InpatRespB7='" & _85InpatRespB7.Text & "'," Else SQLupdate = SQLupdate & " _85InpatRespB7=0.00,"
                    If Len(_86GenRespA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _86GenRespA10='" & _86GenRespA10.Text & "'," Else SQLupdate = SQLupdate & " _86GenRespA10=0.00,"
                    If Len(_86GenRespB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _86GenRespB7='" & _86GenRespB7.Text & "'," Else SQLupdate = SQLupdate & " _86GenRespB7=0.00,"
                    If Len(_50BereavA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _50BereavA10='" & _50BereavA10.Text & "'," Else SQLupdate = SQLupdate & " _50BereavA10=0.00,"
                    If Len(_50BereavB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _50BereavB7='" & _50BereavB7.Text & "'," Else SQLupdate = SQLupdate & " _50BereavB7=0.00,"
                    If Len(_51VolA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _51VolA10='" & _51VolA10.Text & "'," Else SQLupdate = SQLupdate & " _51VolA10=0.00,"
                    If Len(_51VolB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _51VolB7='" & _51VolB7.Text & "'," Else SQLupdate = SQLupdate & " _51VolB7=0.00,"
                    If Len(_52FundraisA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _52FundraisA10='" & _52FundraisA10.Text & "'," Else SQLupdate = SQLupdate & " _52FundraisA10=0.00,"
                    If Len(_52FundraisB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _52FundraisB7='" & _52FundraisB7.Text & "'," Else SQLupdate = SQLupdate & " _52FundraisB7=0.00,"
                    If Len(_74HPMFA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _74HPMFA10='" & _74HPMFA10.Text & "'," Else SQLupdate = SQLupdate & " _74HPMFA10=0.00,"
                    If Len(_74HPMFB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _74HPMFB7='" & _74HPMFB7.Text & "'," Else SQLupdate = SQLupdate & " _74HPMFB7=0.00,"
                    If Len(_75PCPA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _75PCPA10='" & _75PCPA10.Text & "'," Else SQLupdate = SQLupdate & " _75PCPA10=0.00,"
                    If Len(_75PCPB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _75PCPB7='" & _75PCPB7.Text & "'," Else SQLupdate = SQLupdate & " _75PCPB7=0.00,"
                    If Len(_76MDASA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _76MDASA10='" & _76MDASA10.Text & "'," Else SQLupdate = SQLupdate & " _76MDASA10=0.00,"
                    If Len(_76MDASB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _76MDASB7='" & _76MDASB7.Text & "'," Else SQLupdate = SQLupdate & " _76MDASB7=0.00,"
                    If Len(_77ResCareA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _77ResCareA10='" & _77ResCareA10.Text & "'," Else SQLupdate = SQLupdate & " _77ResCareA10=0.00,"
                    If Len(_77ResCareB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _77ResCareB7='" & _77ResCareB7.Text & "'," Else SQLupdate = SQLupdate & " _77ResCareB7=0.00,"
                    If Len(_78Advert10.Text & "") > 0 Then SQLupdate = SQLupdate & " _78Advert10='" & _78Advert10.Text & "'," Else SQLupdate = SQLupdate & " _78Advert10=0.00,"
                    If Len(_78AdvertB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _78AdvertB7='" & _78AdvertB7.Text & "'," Else SQLupdate = SQLupdate & " _78AdvertB7=0.00,"
                    If Len(_79THTMA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _79THTMA10='" & _79THTMA10.Text & "'," Else SQLupdate = SQLupdate & " _79THTMA10=0.00,"
                    If Len(_79THTMB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _79THTMB7='" & _79THTMB7.Text & "'," Else SQLupdate = SQLupdate & " _79THTMB7=0.00,"
                    If Len(_80thriftStA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _80thriftStA10='" & _80thriftStA10.Text & "'," Else SQLupdate = SQLupdate & " _80thriftStA10=0.00,"
                    If Len(_80thriftStB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _80thriftStB7='" & _80thriftStB7.Text & "'," Else SQLupdate = SQLupdate & " _80thriftStB7=0.00,"
                    If Len(_81NursFacRmA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _81NursFacRmA10='" & _81NursFacRmA10.Text & "'," Else SQLupdate = SQLupdate & " _81NursFacRmA10=0.00,"
                    If Len(_81NursFacRmB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _81NursFacRmB7='" & _81NursFacRmB7.Text & "'," Else SQLupdate = SQLupdate & " _81NursFacRmB7=0.00,"
                    If Len(_82NonReimbOtherA10.Text & "") > 0 Then SQLupdate = SQLupdate & " _82NonReimbOtherA10='" & _82NonReimbOtherA10.Text & "'," Else SQLupdate = SQLupdate & " _82NonReimbOtherA10=0.00,"
                    If Len(_82NonReimbOtherB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _82NonReimbOtherB7='" & _82NonReimbOtherB7.Text & "'," Else SQLupdate = SQLupdate & " _82NonReimbOtherB7=0.00,"
                    If Len(_65OAGServOther.Text & "") > 0 Then SQLupdate = SQLupdate & " _65OAGServOther='" & _65OAGServOther.Text & "'," Else SQLupdate = SQLupdate & " _65OAGServOther='',"
                    If Len(_73OPCSOther.Text & "") > 0 Then SQLupdate = SQLupdate & " _73OPCSOther='" & _73OPCSOther.Text & "'," Else SQLupdate = SQLupdate & " _73OPCSOther='',"
                    If Len(_82NonReimbOther.Text & "") > 0 Then SQLupdate = SQLupdate & " _82NonReimbOther='" & _82NonReimbOther.Text & "'," Else SQLupdate = SQLupdate & " _82NonReimbOther='',"
                    'If Len(_71Other.Text & "") > 0 Then SQLupdate = SQLupdate & " _71Other='" & _71Other.Text & "'," Else SQLupdate = SQLupdate & " _71Other=,"
                    If Len(_100TotalCostsA10.Text & "") > 0 Then SQLupdate = SQLupdate & "  _100TotalCostsA10='" & _100TotalCostsA10.Text & "'," Else SQLupdate = SQLupdate & "  _100TotalCostsA10=0.00,"
                    If Len(_100TotalCostsB7.Text & "") > 0 Then SQLupdate = SQLupdate & " _100TotalCostsB7='" & _100TotalCostsB7.Text & "'," Else SQLupdate = SQLupdate & " _100TotalCostsB7=0.00,"
                    If Len(CostRptContHomeCare.Text & "") > 0 Then SQLupdate = SQLupdate & " CostRptContHomeCare='" & CostRptContHomeCare.Text & "'," Else SQLupdate = SQLupdate & " CostRptContHomeCare=0.00,"
                    If Len(CostRptRouHomeCare.Text & "") > 0 Then SQLupdate = SQLupdate & " CostRptRouHomeCare='" & CostRptRouHomeCare.Text & "'," Else SQLupdate = SQLupdate & " CostRptRouHomeCare=0.00,"
                    If Len(CostRptGIDays.Text & "") > 0 Then SQLupdate = SQLupdate & " CostRptGIDays='" & CostRptGIDays.Text & "'," Else SQLupdate = SQLupdate & " CostRptGIDays=0.00,"
                    If Len(CostRPTRespiteDays.Text & "") > 0 Then SQLupdate = SQLupdate & " CostRPTRespiteDays='" & CostRPTRespiteDays.Text & "'," Else SQLupdate = SQLupdate & " CostRPTRespiteDays=0.00,"
                    If Len(CostRPTTotHosDays.Text & "") > 0 Then SQLupdate = SQLupdate & " CostRPTTotHosDays='" & CostRPTTotHosDays.Text & "'," Else SQLupdate = SQLupdate & " CostRPTTotHosDays=0.00,"
                    If Len(totPallCareVisits.Text & "") > 0 Then SQLupdate = SQLupdate & " totPallCareVisits='" & totPallCareVisits.Text & "'," Else SQLupdate = SQLupdate & " totPallCareVisits=0.00,"
                    If Len(totPallCareRev.Text & "") > 0 Then SQLupdate = SQLupdate & " totPallCareRev='" & totPallCareRev.Text & "'," Else SQLupdate = SQLupdate & " totPallCareRev=0.00,"
                   
                    SQLupdate = SQLupdate & " SectionF5='" & int & "'"
                    SQLupdate = SQLupdate & " WHERE Username='" & UserName.Text & "'"
                    Using cmdupdate As New SqlCommand(SQLupdate, cnn)
                        cmdupdate.ExecuteNonQuery()
                        cmdupdate.Dispose()
                    End Using
                End If
                cmdexist.Dispose()
            End Using
            cmdinsert.Dispose()
        End Using
        cnn.Close()
    End Sub
  

End Class
