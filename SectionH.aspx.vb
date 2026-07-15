Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionH
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
            '    SY4.Text = ConfigurationManager.AppSettings("year")
            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()
            SY3.Text = GetYear()
            SY4.Text = GetYear()
            btnaddfacility.Enabled = False
            msave.Visible = False
            LoadSurvey()
            LoadCerti()
        End If
    End Sub
    Protected Sub btnMENU_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMENU.Click
        Response.Redirect("menu.aspx")
    End Sub
    Protected Sub btnSAVE_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSAVE.Click


        AddFac(1)
        SaveSectionC(1)
        msave.Visible = True
        msave.Text = "Inpatient Saved Successfully"
        msave.ForeColor = Drawing.Color.Blue
        btnaddfacility.Enabled = True
        lblselectres.Visible = True
        dd_InFac.Visible = True
        dd_InFac.DataBind()
    End Sub
    Protected Sub btnaddfacility_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddfacility.Click
        dd_InFac.ClearSelection()
        InFacCounty1.ClearSelection()
        InFacSite1.ClearSelection()
        InFacLevel1.ClearSelection()
        InFacYear.ClearSelection()
        InFacMonth1.ClearSelection()
        EmptyTextBoxValues(Me)
        msave.Text = ""
        msave.Visible = False
        btnaddfacility.Enabled = False
        lblselectres.Visible = False
        dd_InFac.Visible = False
        InFacName1.Enabled = True
    End Sub
    Sub LoadCerti()
        'Commented code - JS 
        'Dim strSQL As String
        ' Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        ' con.Open()
        ' strSQL = "Select * FROM Survey where UserName='" & UserName.Text & "'"
        ' Dim cmd As New SqlCommand(strSQL, con)
        ' Dim DBReader = cmd.ExecuteReader()
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        Dim DBReader = surveyDB.GetSurveyByUsername(UserName.Text)
        DBReader.Read()
        If Len(DBReader("Certification1") & "") > 0 Then
            Certi1.Text = DBReader("Certification1")
            If Certi1.Text = "True" Then
                btnSAVE.Enabled = False
                btnaddfacility.Enabled = False
            End If
        End If
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing
        surveyDB.TerminateDBOperation()
    End Sub
    Sub LoadSurvey()
        'Dim intCount As Integer
        'Dim SQLexist As String = "SELECT COUNT(*) FROM Inpatient WHERE UserName='" & UserName.Text & "'"
        'Dim SQLgetInc As String = "SELECT * FROM Inpatient WHERE UserName='" & UserName.Text & "' ORDER BY InFacName1"
        'Dim cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        InFacCounty1.ClearSelection()
        InFacSite1.ClearSelection()
        InFacLevel1.ClearSelection()
        InFacYear.ClearSelection()
        InFacMonth1.ClearSelection()
        'cnn.Open()
        'Using cmdexist As New SqlCommand(SQLexist, cnn)
        'cmdexist.Parameters.Clear()
        '    cmdexist.Parameters.AddWithValue("@UserName", UserName.Text)
        '    intCount = cmdexist.ExecuteScalar()
        Dim inpatientDB As InpatientDBLayer = New InpatientDBLayer()
        Dim DBReader = inpatientDB.GetInpatient("SELECT * FROM Inpatient WHERE UserName='" & UserName.Text & "' ORDER BY InFacName1")
        'If (intCount > 0) Then
        If DBReader.HasRows Then
            dd_InFac.Visible = True
            lblselectres.Visible = True
            'Using cmdgetInc As New SqlCommand(SQLgetInc, cnn)
            'Dim DBReader As SqlDataReader
            'DBReader = cmdgetInc.ExecuteReader
            DBReader.Read()
            dd_InFac.SelectedValue = DBReader.Item("InFacName1")
            'QID.Text = DBReader.Item("QID")
            If Len(DBReader("InFacName1") & "") > 0 Then InFacName1.Text = DBReader("InFacName1")
            If Len(DBReader("InFacCounty1") & "") > 0 Then InFacCounty1.Items.FindByValue(DBReader("InFacCounty1")).Selected = True
            If Len(DBReader("InFacSite1") & "") > 0 Then
                InFacSite1.Items.FindByValue(DBReader("InFacSite1")).Selected = True
                If DBReader("InFacSite1") = "04" Then
                    vInFacOther_text1.Enabled = True
                    InFacOther_text1.Enabled = True
                    InFacOther_text1.Style("background-color") = "#FFFFFF"
                    If Len(DBReader("InFacOther_text1") & "") > 0 Then InFacOther_text1.Text = DBReader("InFacOther_text1")
                Else
                    InFacOther_text1.Enabled = False
                    InFacOther_text1.Text = ""
                    vInFacOther_text1.Enabled = False
                    InFacOther_text1.Style("background-color") = "#CCCCCC"
                End If
            End If

            If Len(DBReader("InFacLevel1") & "") > 0 Then InFacLevel1.Items.FindByValue(DBReader("InFacLevel1")).Selected = True
            If Len(DBReader("InFacBeds1") & "") > 0 Then InFacBeds1.Text = DBReader("InFacBeds1")

            If Len(DBReader("InFacAdmin1") & "") > 0 Then InFacAdmin1.Text = DBReader("InFacAdmin1")
            If Len(DBReader("InFacGenDeaths1") & "") > 0 Then InFacGenDeaths1.Text = DBReader("InFacGenDeaths1")

            If Len(DBReader("InFacGenLiveDis1") & "") > 0 Then InFacGenLiveDis1.Text = DBReader("InFacGenLiveDis1")
            If Len(DBReader("InFacGenPatsServed1") & "") > 0 Then InFacGenPatsServed1.Text = DBReader("InFacGenPatsServed1")
            If Len(DBReader("InFacPDays1") & "") > 0 Then InFacPDays1.Text = DBReader("InFacPDays1")
            If Len(DBReader("InFacInptResAdmin1") & "") > 0 Then InFacInptResAdmin1.Text = DBReader("InFacInptResAdmin1")
            If Len(DBReader("InFacInptResDeaths1") & "") > 0 Then InFacInptResDeaths1.Text = DBReader("InFacInptResDeaths1")
            If Len(DBReader("InFacInptResLiveDis1") & "") > 0 Then InFacInptResLiveDis1.Text = DBReader("InFacInptResLiveDis1")
            If Len(DBReader("InFacInptResPatsServed1") & "") > 0 Then InFacInptResPatsServed1.Text = DBReader("InFacInptResPatsServed1")
            If Len(DBReader("InFacInptResPDays1") & "") > 0 Then InFacInptResPDays1.Text = DBReader("InFacInptResPDays1")

            If Len(DBReader("InFacResAdmin1") & "") > 0 Then InFacResAdmin1.Text = DBReader("InFacResAdmin1")
            If Len(DBReader("InFacResDeaths1") & "") > 0 Then InFacResDeaths1.Text = DBReader("InFacResDeaths1")
            If Len(DBReader("InFacResLiveDis1") & "") > 0 Then InFacResLiveDis1.Text = DBReader("InFacResLiveDis1")
            If Len(DBReader("InFacResPatsServed1") & "") > 0 Then InFacResPatsServed1.Text = DBReader("InFacResPatsServed1")
            If Len(DBReader("InFacResPDays1") & "") > 0 Then InFacResPDays1.Text = DBReader("InFacResPDays1")

            If Len(DBReader("InFacYear") & "") > 0 Then
                InFacYear.Items.FindByValue(DBReader("InFacYear")).Selected = True
                If DBReader("InFacYear") = "1" Then
                    vInFacMonth1.Enabled = True
                    InFacMonth1.Enabled = True
                    If Len(DBReader("InFacMonth1") & "") > 0 Then InFacMonth1.Items.FindByValue(DBReader("InFacMonth1")).Selected = True
                Else
                    InFacMonth1.Enabled = False
                    vInFacMonth1.Enabled = False
                End If
            End If
            If Len(DBReader("FTENursingIF1") & "") > 0 Then FTENursingIF1.Text = DBReader("FTENursingIF1")
            If Len(DBReader("FTENursingPractIF1") & "") > 0 Then FTENursingPractIF1.Text = DBReader("FTENursingPractIF1")
            If Len(DBReader("FTESocialIF1") & "") > 0 Then FTESocialIF1.Text = DBReader("FTESocialIF1")
            If Len(DBReader("FTEHHAIF1") & "") > 0 Then FTEHHAIF1.Text = DBReader("FTEHHAIF1")

            If Len(DBReader("FTEMDIF1") & "") > 0 Then FTEMDIF1.Text = DBReader("FTEMDIF1")
            If Len(DBReader("FTEMDVolIF1") & "") > 0 Then FTEMDVolIF1.Text = DBReader("FTEMDVolIF1")
            If Len(DBReader("FTEChapIF1") & "") > 0 Then FTEChapIF1.Text = DBReader("FTEChapIF1")
            If Len(DBReader("FTEOtherClinicalIF1") & "") > 0 Then FTEOtherClinicalIF1.Text = DBReader("FTEOtherClinicalIF1")
            If Len(DBReader("FTENonClinicalIF1") & "") > 0 Then FTENonClinicalIF1.Text = DBReader("FTENonClinicalIF1")
            'New code 07/13/2026
            'Section H7
            SetTextBoxValue(DBReader("EmpNursing"), EmpNursing)
            SetTextBoxValue(DBReader("StaffNursing"), StaffNursing)
            SetTextBoxValue(DBReader("EmpNursingPract"), EmpNursingPract)
            SetTextBoxValue(DBReader("StaffNursingPract"), StaffNursingPract)
            SetTextBoxValue(DBReader("EmpSocialServ"), EmpSocialServ)
            SetTextBoxValue(DBReader("StaffSocialServ"), StaffSocialServ)
            SetTextBoxValue(DBReader("EmpHHA"), EmpHHA)
            SetTextBoxValue(DBReader("StaffHHA"), StaffHHA)
            SetTextBoxValue(DBReader("EmpMD"), EmpMD)
            SetTextBoxValue(DBReader("StaffMD"), StaffMD)
            SetTextBoxValue(DBReader("EmpMDVol"), EmpMDVol)
            SetTextBoxValue(DBReader("StaffMDVol"), StaffMDVol)
            SetTextBoxValue(DBReader("EmpChap"), EmpChap)
            SetTextBoxValue(DBReader("StaffChap"), StaffChap)
            SetTextBoxValue(DBReader("EmpOtherClinical"), EmpOtherClinical)
            SetTextBoxValue(DBReader("StaffOtherClinical"), StaffOtherClinical)
            SetTextBoxValue(DBReader("EmpNonClinical"), EmpNonClinical)
            SetTextBoxValue(DBReader("StaffNonClinical"), StaffNonClinical)
            SetTextBoxValue(DBReader("EmpTotal"), EmpTotal)
            SetTextBoxValue(DBReader("StaffTotal"), StaffTotal)
            SetTextBoxValue(DBReader("FTETotal"), FTETotal)
            'If Len(DBReader("MoreInFac1") & "") > 0 Then
            '    MoreInFac1.Items.FindByValue(DBReader("MoreInFac1")).Selected = True
            '    If MoreInFac1.SelectedItem.Value = "1" Then
            '        InMoreFac1.Enabled = True
            '    Else
            '        InMoreFac1.Enabled = False
            '    End If
            '    InMoreFac1.Enabled = False
            'End If
            'DBReader.Close()
            'cmdgetInc.Dispose()
            'End Using
            InFacName1.Enabled = False
            dd_InFac.Visible = True
            btnaddfacility.Enabled = True
        Else
            dd_InFac.Visible = False
            lblselectres.Visible = False
        End If
        '    cmdexist.Dispose()
        'End Using
        'cnn.Close()
        'If intCount > 1 Then btnaddfacility.Enabled = True
        inpatientDB.TerminateDBOperation()
    End Sub
    Private Sub EmptyTextBoxValues(ByVal parent As Control)
        For Each c As Control In parent.Controls
            If (c.Controls.Count > 0) Then
                EmptyTextBoxValues(c)
            Else
                If TypeOf c Is TextBox Then
                    CType(c, TextBox).Text = ""
                End If
                If TypeOf c Is RadioButtonList Then
                    CType(c, RadioButtonList).ClearSelection()
                End If
                If TypeOf c Is DropDownList Then
                    CType(c, DropDownList).ClearSelection()
                End If
            End If
        Next
    End Sub
    Sub SaveSectionC(ByVal int As Integer)
        'Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Update Survey set SectionH='" & int & "' WHERE Username='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey("Update Survey set SectionH='" & int & "' WHERE Username='" & UserName.Text & "'")
    End Sub
    Sub AddFac(ByVal int As Integer)
        msave.Text = "made it into addfac"
        msave.Visible = True
        Dim intCount As Integer = 0
        'Dim value As String = Get_Facility()
        'QID.Text = value
        Dim SQLinsert As String = "INSERT INTO Inpatient (UserName, InFacName1, InFacCounty1, InFacSite1, InFacOther_text1, "
        SQLinsert = SQLinsert + "InFacLevel1, InFacBeds1, InFacAdmin1, InFacGenDeaths1, InFacGenLiveDis1, InFacGenPatsServed1, "
        SQLinsert = SQLinsert + "InFacPDays1, InFacInptResAdmin1, InFacInptResDeaths1, InFacInptResLiveDis1, InFacInptResPatsServed1, InFacInptResPDays1, InFacResAdmin1, "
        SQLinsert = SQLinsert + "InFacResDeaths1, InFacResLiveDis1, InFacResPatsServed1, InFacResPDays1, InFacYear, InFacMonth1, FTENursingIF1, FTENursingPractIF1, FTESocialIF1, FTEHHAIF1, FTEMDIF1, "
        SQLinsert = SQLinsert + "FTEMDVolIF1, FTEChapIF1, FTEOtherClinicalIF1, FTENonClinicalIF1, "
        SQLinsert = SQLinsert + "EmpNursing, StaffNursing, EmpNursingPract, StaffNursingPract, EmpSocialServ, StaffSocialServ, "
        SQLinsert = SQLinsert + "EmpHHA, StaffHHA, EmpMD, StaffMD, EmpMDVol, StaffMDVol, EmpChap, StaffChap, EmpOtherClinical, "
        SQLinsert = SQLinsert + "StaffOtherClinical, EmpNonClinical, StaffNonClinical, EmpTotal, StaffTotal, FTETotal, SectionH) "
        SQLinsert = SQLinsert + " VALUES (@UserName, @InFacName1, @InFacCounty1, @InFacSite1, @InFacOther_text1, "
        SQLinsert = SQLinsert + "@InFacLevel1, @InFacBeds1,  @InFacAdmin1, @InFacGenDeaths1, @InFacGenLiveDis1, @InFacGenPatsServed1, "
        SQLinsert = SQLinsert + "@InFacPDays1, @InFacInptResAdmin1, @InFacInptResDeaths1, @InFacInptResLiveDis1, @InFacInptResPatsServed1, @InFacInptResPDays1, @InFacResAdmin1, "
        SQLinsert = SQLinsert + "@InFacResDeaths1, @InFacResLiveDis1, @InFacResPatsServed1, @InFacResPDays1, @InFacYear, @InFacMonth1, @FTENursingIF1, @FTENursingPractIF1, @FTESocialIF1, @FTEHHAIF1, @FTEMDIF1, "
        SQLinsert = SQLinsert + "@FTEMDVolIF1, @FTEChapIF1, @FTEOtherClinicalIF1, @FTENonClinicalIF1, "
        SQLinsert = SQLinsert + "@EmpNursing, @StaffNursing, @EmpNursingPract, @StaffNursingPract, @EmpSocialServ, @StaffSocialServ, "
        SQLinsert = SQLinsert + "@EmpHHA, @StaffHHA, @EmpMD, @StaffMD, @EmpMDVol, @StaffMDVol, @EmpChap, @StaffChap, "
        SQLinsert = SQLinsert + "@EmpOtherClinical, @StaffOtherClinical, @EmpNonClinical, @StaffNonClinical, @EmpTotal, @StaffTotal, "
        SQLinsert = SQLinsert + "@FTETotal, @SectionH)"
        Dim SQLexist As String = "SELECT COUNT(*) FROM Inpatient WHERE UserName='" & UserName.Text & "'" & " AND InFacName1='" & Replace(InFacName1.Text, "'", "''") & "'"

        Dim SQLupdate As String
        Dim cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        cnn.Open()
        Using cmdinsert As New SqlCommand(SQLinsert, cnn)
            Using cmdexist As New SqlCommand(SQLexist, cnn)
                cmdexist.Parameters.Clear()
                intCount = cmdexist.ExecuteScalar()
                If (intCount = 0) Then
                    cmdinsert.Parameters.Clear()
                    'cmdinsert.Parameters.AddWithValue("@QID", QID.Text)
                    cmdinsert.Parameters.AddWithValue("@UserName", UserName.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacName1", InFacName1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacCounty1", InFacCounty1.SelectedValue)
                    If Len(InFacSite1.SelectedItem.Value & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@InFacSite1", InFacSite1.SelectedValue)
                        If InFacSite1.SelectedItem.Value = "04" Then
                            cmdinsert.Parameters.AddWithValue("@InFacOther_text1", InFacOther_text1.Text)
                        Else
                            cmdinsert.Parameters.AddWithValue("@InFacOther_text1", "")
                        End If
                    Else
                        cmdinsert.Parameters.AddWithValue("@InFacOther_text1", "")
                        cmdinsert.Parameters.AddWithValue("@InFacSite1", "")
                    End If
                    cmdinsert.Parameters.AddWithValue("@InFacLevel1", InFacLevel1.SelectedValue)
                    cmdinsert.Parameters.AddWithValue("@InFacBeds1", InFacBeds1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacAdmin1", InFacAdmin1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacGenDeaths1", InFacGenDeaths1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacGenLiveDis1", InFacGenLiveDis1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacGenPatsServed1", InFacGenPatsServed1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacPDays1", InFacPDays1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacInptResAdmin1", InFacInptResAdmin1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacInptResDeaths1", InFacInptResDeaths1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacInptResLiveDis1", InFacInptResLiveDis1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacInptResPatsServed1", InFacInptResPatsServed1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacInptResPDays1", InFacInptResPDays1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacResAdmin1", InFacResAdmin1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacResDeaths1", InFacResDeaths1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacResLiveDis1", InFacResLiveDis1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacResPatsServed1", InFacResPatsServed1.Text)
                    cmdinsert.Parameters.AddWithValue("@InFacResPDays1", InFacResPDays1.Text)
                    If Len(InFacYear.SelectedItem.Value & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@InFacYear", InFacYear.SelectedItem.Value)
                        If InFacYear.SelectedItem.Value = "1" Then
                            cmdinsert.Parameters.AddWithValue("@InFacMonth1", InFacMonth1.SelectedValue)
                        Else
                            cmdinsert.Parameters.AddWithValue("@InFacMonth1", "")
                        End If
                    Else
                        cmdinsert.Parameters.AddWithValue("@InFacYear", InFacMonth1.SelectedValue)
                        cmdinsert.Parameters.AddWithValue("@InFacMonth1", "")
                    End If

                    If Len(FTENursingIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTENursingIF1", FTENursingIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTENursingIF1", "0.00")
                    End If

                    If Len(FTENursingPractIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTENursingPractIF1", FTENursingPractIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTENursingPractIF1", "0.00")
                    End If

                    If Len(FTESocialIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTESocialIF1", FTESocialIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTESocialIF1", "0.00")
                    End If

                    If Len(FTEHHAIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTEHHAIF1", FTEHHAIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTEHHAIF1", "0.00")
                    End If

                    If Len(FTEMDIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTEMDIF1", FTEMDIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTEMDIF1", "0.00")
                    End If

                    If Len(FTEMDVolIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTEMDVolIF1", FTEMDVolIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTEMDVolIF1", "0.00")
                    End If

                    If Len(FTEChapIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTEChapIF1", FTEChapIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTEChapIF1", "0.00")
                    End If

                    If Len(FTEOtherClinicalIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTEOtherClinicalIF1", FTEOtherClinicalIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTEOtherClinicalIF1", "0.00")
                    End If

                    If Len(FTENonClinicalIF1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@FTENonClinicalIF1", FTENonClinicalIF1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@FTENonClinicalIF1", "0.00")
                    End If

                    'New code July 13 2026
                    'Section H7
                    MapTextValueField(cmdinsert, EmpNursing, "@EmpNursing", "0.00")
                    MapTextValueField(cmdinsert, StaffNursing, "@StaffNursing", "0.00")
                    MapTextValueField(cmdinsert, EmpNursingPract, "@EmpNursingPract", "0.00")
                    MapTextValueField(cmdinsert, StaffNursingPract, "@StaffNursingPract", "0.00")
                    MapTextValueField(cmdinsert, EmpSocialServ, "@EmpSocialServ", "0.00")
                    MapTextValueField(cmdinsert, StaffSocialServ, "@StaffSocialServ", "0.00")
                    MapTextValueField(cmdinsert, EmpHHA, "@EmpHHA", "0.00")
                    MapTextValueField(cmdinsert, StaffHHA, "@StaffHHA", "0.00")
                    MapTextValueField(cmdinsert, EmpMD, "@EmpMD", "0.00")
                    MapTextValueField(cmdinsert, StaffMD, "@StaffMD", "0.00")
                    MapTextValueField(cmdinsert, EmpMDVol, "@EmpMDVol", "0.00")
                    MapTextValueField(cmdinsert, StaffMDVol, "@StaffMDVol", "0.00")
                    MapTextValueField(cmdinsert, EmpChap, "@EmpChap", "0.00")
                    MapTextValueField(cmdinsert, StaffChap, "@StaffChap", "0.00")
                    MapTextValueField(cmdinsert, EmpOtherClinical, "@EmpOtherClinical", "0.00")
                    MapTextValueField(cmdinsert, StaffOtherClinical, "@StaffOtherClinical", "0.00")
                    MapTextValueField(cmdinsert, EmpNonClinical, "@EmpNonClinical", "0.00")
                    MapTextValueField(cmdinsert, StaffNonClinical, "@StaffNonClinical", "0.00")
                    MapTextValueField(cmdinsert, EmpTotal, "@EmpTotal", "0.00")
                    MapTextValueField(cmdinsert, StaffTotal, "@StaffTotal ", "0.00")
                    MapTextValueField(cmdinsert, FTETotal, "@FTETotal", "0.00")

                    cmdinsert.Parameters.AddWithValue("@SectionH", int)
                    Try
                        cmdinsert.ExecuteNonQuery()
                    Catch ex As sqlException
                        Throw ex
                    End Try
                Else
                    'exists already - just update record
                    SQLupdate = "Update Inpatient SET "
                    If Len(InFacCounty1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacCounty1='" & InFacCounty1.SelectedItem.Value & "'," Else SQLupdate = SQLupdate & " InFacCounty1=null,"
                    If Len(InFacSite1.SelectedItem.Value & "") > 0 Then
                        SQLupdate = SQLupdate & " InFacSite1='" & InFacSite1.SelectedItem.Value & "',"
                        If InFacSite1.SelectedItem.Value = "04" Then
                            SQLupdate = SQLupdate & " InFacOther_text1='" & InFacOther_text1.Text & "',"
                        Else
                            SQLupdate = SQLupdate & " InFacOther_text1=null,"
                        End If
                    Else
                        SQLupdate = SQLupdate & " InFacSite1=null,"
                        SQLupdate = SQLupdate & " InFacOther_text1=null,"
                    End If
                    If Len(InFacLevel1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacLevel1='" & InFacLevel1.SelectedItem.Value & "'," Else SQLupdate = SQLupdate & " InFacLevel1=null,"
                    If Len(InFacBeds1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacBeds1='" & InFacBeds1.Text & "'," Else SQLupdate = SQLupdate & " InFacBeds1=0,"
                    If Len(InFacAdmin1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacAdmin1='" & InFacAdmin1.Text & "'," Else SQLupdate = SQLupdate & " InFacAdmin1=0,"
                    If Len(InFacGenDeaths1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacGenDeaths1='" & InFacGenDeaths1.Text & "'," Else SQLupdate = SQLupdate & " InFacGenDeaths1=0,"
                    If Len(InFacGenLiveDis1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacGenLiveDis1='" & InFacGenLiveDis1.Text & "'," Else SQLupdate = SQLupdate & " InFacGenLiveDis1=0,"
                    If Len(InFacGenPatsServed1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacGenPatsServed1='" & InFacGenPatsServed1.Text & "'," Else SQLupdate = SQLupdate & " InFacGenPatsServed1=0,"
                    If Len(InFacPDays1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacPDays1='" & InFacPDays1.Text & "'," Else SQLupdate = SQLupdate & " InFacPDays1=0,"
                    If Len(InFacInptResAdmin1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacInptResAdmin1='" & InFacInptResAdmin1.Text & "'," Else SQLupdate = SQLupdate & " InFacInptResAdmin1=0,"
                    If Len(InFacInptResDeaths1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacInptResDeaths1='" & InFacInptResDeaths1.Text & "'," Else SQLupdate = SQLupdate & " InFacInptResDeaths1=0,"
                    If Len(InFacInptResLiveDis1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacInptResLiveDis1='" & InFacInptResLiveDis1.Text & "'," Else SQLupdate = SQLupdate & " InFacInptResLiveDis1=0,"
                    If Len(InFacInptResPatsServed1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacInptResPatsServed1='" & InFacInptResPatsServed1.Text & "'," Else SQLupdate = SQLupdate & " InFacInptResPatsServed1=0,"

                    If Len(InFacInptResPDays1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacInptResPDays1='" & InFacInptResPDays1.Text & "'," Else SQLupdate = SQLupdate & " InFacInptResPDays1=0,"
                    If Len(InFacResAdmin1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacResAdmin1='" & InFacResAdmin1.Text & "'," Else SQLupdate = SQLupdate & " InFacResAdmin1=0,"
                    If Len(InFacResDeaths1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacResDeaths1='" & InFacResDeaths1.Text & "'," Else SQLupdate = SQLupdate & " InFacResDeaths1=0,"
                    If Len(InFacResLiveDis1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacResLiveDis1='" & InFacResLiveDis1.Text & "'," Else SQLupdate = SQLupdate & " InFacResLiveDis1=0,"
                    If Len(InFacResPatsServed1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacResPatsServed1='" & InFacResPatsServed1.Text & "'," Else SQLupdate = SQLupdate & " InFacResPatsServed1=0,"
                    If Len(InFacResPDays1.Text & "") > 0 Then SQLupdate = SQLupdate & " InFacResPDays1='" & InFacResPDays1.Text & "'," Else SQLupdate = SQLupdate & " InFacResPDays1=0,"
                    If Len(InFacYear.SelectedItem.Value & "") > 0 Then
                        SQLupdate = SQLupdate & " InFacYear='" & InFacYear.SelectedItem.Value & "',"
                        If InFacYear.SelectedItem.Value = "1" Then
                            SQLupdate = SQLupdate & " InFacMonth1='" & InFacMonth1.SelectedItem.Value & "',"
                        Else
                            'SQLupdate = SQLupdate & " InFacMonth1='""',"
                        End If
                    Else
                        'SQLupdate = SQLupdate & " InFacMonth1='""',"
                        SQLupdate = SQLupdate & " InFacYear='""',"
                    End If
                    If Len(FTENursingIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTENursingIF1='" & FTENursingIF1.Text & "'," Else SQLupdate = SQLupdate & " FTENursingIF1=0.0,"
                    If Len(FTENursingPractIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTENursingPractIF1='" & FTENursingPractIF1.Text & "'," Else SQLupdate = SQLupdate & " FTENursingPractIF1=0.0,"
                    If Len(FTESocialIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTESocialIF1='" & FTESocialIF1.Text & "'," Else SQLupdate = SQLupdate & " FTESocialIF1=0.0,"
                    If Len(FTEHHAIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTEHHAIF1='" & FTEHHAIF1.Text & "'," Else SQLupdate = SQLupdate & " FTEHHAIF1=0.0,"
                    If Len(FTEMDIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTEMDIF1='" & FTEMDIF1.Text & "'," Else SQLupdate = SQLupdate & " FTEMDIF1=0.0,"
                    If Len(FTEMDVolIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTEMDVolIF1='" & FTEMDVolIF1.Text & "'," Else SQLupdate = SQLupdate & " FTEMDVolIF1=0.0,"
                    If Len(FTEChapIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTEChapIF1='" & FTEChapIF1.Text & "'," Else SQLupdate = SQLupdate & " FTEChapIF1=0.0,"
                    If Len(FTEOtherClinicalIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTEOtherClinicalIF1='" & FTEOtherClinicalIF1.Text & "'," Else SQLupdate = SQLupdate & " FTEOtherClinicalIF1=0.0,"
                    If Len(FTENonClinicalIF1.Text & "") > 0 Then SQLupdate = SQLupdate & " FTENonClinicalIF1='" & FTENonClinicalIF1.Text & "'," Else SQLupdate = SQLupdate & " FTENonClinicalIF1=0.0,"

                    'New code July 13 2026
                    'Section H7
                    SQLupdate = SQLupdate & MapTextValueField(StaffNursing, "StaffNursing", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpNursingPract, "EmpNursingPract", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffNursingPract, "StaffNursingPract", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpSocialServ, "EmpSocialServ", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffSocialServ, "StaffSocialServ", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpHHA, "EmpHHA", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffHHA, "StaffHHA", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpMD, "EmpMD", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffMD, "StaffMD", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpMDVol, "EmpMDVol", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffMDVol, "StaffMDVol", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpChap, "EmpChap", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffChap, "StaffChap", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpOtherClinical, "EmpOtherClinical", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffOtherClinical, "StaffOtherClinical", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpNonClinical, "EmpNonClinical", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffNonClinical, "StaffNonClinical", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(EmpTotal, "EmpTotal", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(StaffTotal, "StaffTotal ", "0.00")
                    SQLupdate = SQLupdate & MapTextValueField(FTETotal, "FTETotal", "0.00")

                    SQLupdate = SQLupdate & " SectionH='" & int & "'"
                    'SQLupdate = SQLupdate & " WHERE UserName='" & UserName.Text & "'" & " AND InFacName1='" & dd_InFac.SelectedValue & "'"
                    SQLupdate = SQLupdate & " WHERE UserName='" & UserName.Text & "'" & " AND InFacName1='" & Replace(dd_InFac.SelectedValue, "'", "''") & "'"

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
        InFacName1.Enabled = True
    End Sub
    Protected Sub InFacSite1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles InFacSite1.SelectedIndexChanged
        If InFacSite1.SelectedItem.Value = "04" Then
            InFacOther_text1.Enabled = True
            vInFacOther_text1.Enabled = True
            InFacOther_text1.Style("background-color") = "#FFFFFF"
        Else
            InFacOther_text1.Enabled = False
            InFacOther_text1.Text = ""
            vInFacOther_text1.Enabled = False
            InFacOther_text1.Style("background-color") = "#CCCCCC"
        End If
    End Sub
    Protected Sub dd_InFac_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dd_InFac.SelectedIndexChanged
        'Address problem where multiple items get selected
        With dd_InFac
            Dim strValue As String = Request.QueryString("valuetopreselect")
            Dim intLast As Integer = .Items.Count - 1
            For i As Integer = 0 To intLast
                If .Items(i).Value = strValue Then
                    .ClearSelection()
                    .SelectedIndex = i
                    Exit For
                End If
            Next
        End With
        InFacCounty1.ClearSelection()
        InFacSite1.ClearSelection()
        InFacLevel1.ClearSelection()
        InFacYear.ClearSelection()
        InFacMonth1.ClearSelection()
        'Dim strSQL As String = "SELECT * FROM Inpatient WHERE UserName='" & UserName.Text & "'" & " AND InFacName1='" & Replace(dd_InFac.SelectedValue, "'", "''") & "'"
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim inpatientDB As InpatientDBLayer = New InpatientDBLayer()
        Dim DBReader = inpatientDB.GetInpatient("SELECT * FROM Inpatient WHERE UserName='" & UserName.Text & "'" & " AND InFacName1='" & Replace(dd_InFac.SelectedValue, "'", "''") & "'")
        While DBReader.Read()
            If Len(DBReader("InFacName1") & "") > 0 Then InFacName1.Text = DBReader("InFacName1")
            If Len(DBReader("InFacCounty1") & "") > 0 Then InFacCounty1.Items.FindByValue(DBReader("InFacCounty1")).Selected = True
            If Len(DBReader("InFacSite1") & "") > 0 Then
                InFacSite1.Items.FindByValue(DBReader("InFacSite1")).Selected = True
                If DBReader("InFacSite1") = "04" Then
                    vInFacOther_text1.Enabled = True
                    InFacOther_text1.Enabled = True
                    InFacOther_text1.Style("background-color") = "#FFFFFF"
                    If Len(DBReader("InFacOther_text1") & "") > 0 Then InFacOther_text1.Text = DBReader("InFacOther_text1")
                Else
                    InFacOther_text1.Enabled = False
                    InFacOther_text1.Text = ""
                    vInFacOther_text1.Enabled = False
                    InFacOther_text1.Style("background-color") = "#CCCCCC"
                End If
            End If
            If Len(DBReader("InFacLevel1") & "") > 0 Then InFacLevel1.Items.FindByValue(DBReader("InFacLevel1")).Selected = True
            If Len(DBReader("InFacBeds1") & "") > 0 Then InFacBeds1.Text = DBReader("InFacBeds1")
            If Len(DBReader("InFacAdmin1") & "") > 0 Then InFacAdmin1.Text = DBReader("InFacAdmin1")
            If Len(DBReader("InFacGenDeaths1") & "") > 0 Then InFacGenDeaths1.Text = DBReader("InFacGenDeaths1")
            If Len(DBReader("InFacGenLiveDis1") & "") > 0 Then InFacGenLiveDis1.Text = DBReader("InFacGenLiveDis1")
            If Len(DBReader("InFacGenPatsServed1") & "") > 0 Then InFacGenPatsServed1.Text = DBReader("InFacGenPatsServed1")
            If Len(DBReader("InFacPDays1") & "") > 0 Then InFacPDays1.Text = DBReader("InFacPDays1")
            If Len(DBReader("InFacInptResAdmin1") & "") > 0 Then InFacInptResAdmin1.Text = DBReader("InFacInptResAdmin1")
            If Len(DBReader("InFacInptResDeaths1") & "") > 0 Then InFacInptResDeaths1.Text = DBReader("InFacInptResDeaths1")
            If Len(DBReader("InFacInptResLiveDis1") & "") > 0 Then InFacInptResLiveDis1.Text = DBReader("InFacInptResLiveDis1")
            If Len(DBReader("InFacInptResPatsServed1") & "") > 0 Then InFacInptResPatsServed1.Text = DBReader("InFacInptResPatsServed1")
            If Len(DBReader("InFacInptResPDays1") & "") > 0 Then InFacInptResPDays1.Text = DBReader("InFacInptResPDays1")
            If Len(DBReader("InFacResAdmin1") & "") > 0 Then InFacResAdmin1.Text = DBReader("InFacResAdmin1")
            If Len(DBReader("InFacResDeaths1") & "") > 0 Then InFacResDeaths1.Text = DBReader("InFacResDeaths1")
            If Len(DBReader("InFacResLiveDis1") & "") > 0 Then InFacResLiveDis1.Text = DBReader("InFacResLiveDis1")
            If Len(DBReader("InFacResPatsServed1") & "") > 0 Then InFacResPatsServed1.Text = DBReader("InFacResPatsServed1")
            If Len(DBReader("InFacResPDays1") & "") > 0 Then InFacResPDays1.Text = DBReader("InFacResPDays1")

            'Added code to read H6 value from database on 4/12/2019

            If Len(DBReader("InFacYear") & "") > 0 Then
                InFacYear.Items.FindByValue(DBReader("InFacYear")).Selected = True
                If DBReader("InFacYear") = "1" Then
                    vInFacMonth1.Enabled = True
                    InFacMonth1.Enabled = True
                    If Len(DBReader("InFacMonth1") & "") > 0 Then InFacMonth1.Items.FindByValue(DBReader("InFacMonth1")).Selected = True
                Else
                    InFacMonth1.Enabled = False
                    vInFacMonth1.Enabled = False
                End If
            End If

            'If Len(DBReader("InFacMonth1") & "") > 0 Then InFacMonth1.Items.FindByValue(DBReader("InFacMonth1")).Selected = True
            If Len(DBReader("FTENursingIF1") & "") > 0 Then FTENursingIF1.Text = DBReader("FTENursingIF1")
            If Len(DBReader("FTENursingPractIF1") & "") > 0 Then FTENursingPractIF1.Text = DBReader("FTENursingPractIF1")
            If Len(DBReader("FTESocialIF1") & "") > 0 Then FTESocialIF1.Text = DBReader("FTESocialIF1")
            If Len(DBReader("FTEHHAIF1") & "") > 0 Then FTEHHAIF1.Text = DBReader("FTEHHAIF1")
            If Len(DBReader("FTEMDIF1") & "") > 0 Then FTEMDIF1.Text = DBReader("FTEMDIF1")
            If Len(DBReader("FTEMDVolIF1") & "") > 0 Then FTEMDVolIF1.Text = DBReader("FTEMDVolIF1")
            If Len(DBReader("FTEChapIF1") & "") > 0 Then FTEChapIF1.Text = DBReader("FTEChapIF1")
            If Len(DBReader("FTEOtherClinicalIF1") & "") > 0 Then FTEOtherClinicalIF1.Text = DBReader("FTEOtherClinicalIF1")
            If Len(DBReader("FTENonClinicalIF1") & "") > 0 Then FTENonClinicalIF1.Text = DBReader("FTENonClinicalIF1")
        End While
        InFacName1.Enabled = False
        btnaddfacility.Enabled = True
        msave.Visible = False
        inpatientDB.TerminateDBOperation()
    End Sub
    Protected Sub InFacYear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles InFacYear.SelectedIndexChanged
        If InFacYear.SelectedItem.Value = "1" Then
            InFacMonth1.Enabled = True
            vInFacMonth1.Enabled = True
        Else
            InFacMonth1.Enabled = False
            vInFacMonth1.Enabled = False
        End If
    End Sub
#Region "Newcode functions"
    Private Sub MapTextValueField(ByVal cmdInsert As SqlCommand, ByVal txtBx As TextBox, ByVal dbField As String, Optional defaultVal As String = "")
        If Len(txtBx.Text & "") > 0 Then
            cmdInsert.Parameters.AddWithValue(dbField, txtBx.Text)
        ElseIf Not String.IsNullOrEmpty(defaultVal) Then
            cmdInsert.Parameters.AddWithValue(dbField, defaultVal)
        End If
    End Sub
    Private Function MapTextValueField(ByVal txtBx As TextBox, ByVal dbField As String, Optional defaultVal As String = "") As String
        Return IIf(Len(txtBx.Text & "") > 0, " " & dbField & "='" & txtBx.Text & "', ", " " & dbField & "='" & defaultVal & "', ")
    End Function
    Private Sub SetTextBoxValue(ByVal dbReaderValue As Object, ByVal txtBx As TextBox)
        If Not IsDBNull(dbReaderValue) And Len(dbReaderValue & "") > 0 Then
            txtBx.Text = dbReaderValue
        End If
    End Sub
#End Region
End Class
