Imports System.Data
Imports System.Data.SqlClient
Imports Mhcc.Hospice
Partial Class SectionI
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
            'End If
            UserName.Text = GetUserName()
            lblFirstname.Text = GetFirstName()
            lblLastName.Text = GetLastName()
            SY1.Text = GetYear()
            SY2.Text = GetYear()

            ResOther_text1.Enabled = False
            btnaddfacility.Enabled = False
            msave.Visible = False
            vresother.Enabled = False
            ResOther_text1.Style("background-color") = "#CCCCCC"
            vResMonth1.Enabled = True
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
        msave.Text = "Residence Saved Successfully<br> You may enter another facility or return to the menu."
        msave.ForeColor = Drawing.Color.Blue
        btnaddfacility.Enabled = True
        lblselectres.Visible = True
        dd_ResFac.Visible = True
        dd_ResFac.DataBind()
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
        If DBReader("Certification1") = True Then
            btnMENU.Enabled = False
        End If
        'DBReader.Close()
        'con.Close()
        'con = Nothing
        'DBReader = Nothing

        surveyDB.TerminateDBOperation()
    End Sub
    Sub LoadSurvey()
        'Dim intCount As Integer
        'Dim SQLexist As String = "SELECT COUNT(*) FROM Residential WHERE UserName='" & UserName.Text & "'"
        'Dim SQLgetInc As String = "SELECT * FROM Residential WHERE UserName='" & UserName.Text & "' ORDER BY ResName1"
        'Dim cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        dd_ResFac.ClearSelection()
        ResSite1.ClearSelection()
        ResCounty1.ClearSelection()
        ResFacYear.ClearSelection()
        ResMonth1.ClearSelection()
        'cnn.Open()
        'Using cmdexist As New SqlCommand(SQLexist, cnn)
        'cmdexist.Parameters.Clear()
        '    cmdexist.Parameters.AddWithValue("@UserName", UserName.Text)
        '    intCount = cmdexist.ExecuteScalar()
        Dim residentialDB As ResidentialDBLayer = New ResidentialDBLayer()
        Dim DBReader = residentialDB.GetResidential("SELECT * FROM Residential WHERE UserName='" & UserName.Text & "' ORDER BY ResName1")
        'If (intCount > 0) Then
        If DBReader.HasRows Then
            btnaddfacility.Enabled = True
            dd_ResFac.Visible = True
            lblselectres.Visible = True
            'Using cmdgetInc As New SqlCommand(SQLgetInc, cnn)
            'Dim DBReader As SqlDataReader
            '    DBReader = cmdgetInc.ExecuteReader
            DBReader.Read()
            dd_ResFac.SelectedValue = DBReader.Item("ResName1")
            'QID.Text = DBReader.Item("QID")
            If Len(DBReader("ResName1") & "") > 0 Then ResName1.Text = DBReader("ResName1")
            If Len(DBReader("ResCounty1") & "") > 0 Then ResCounty1.Items.FindByValue(DBReader("ResCounty1")).Selected = True
            If Len(DBReader("ResSite1") & "") > 0 Then
                ResSite1.Items.FindByValue(DBReader("ResSite1")).Selected = True
                If DBReader("ResSite1") = "04" Then
                    vresother.Enabled = True
                    ResOther_text1.Style("background-color") = "#FFFFFF"
                    ResOther_text1.Enabled = True
                    If Len(DBReader("ResOther_text1") & "") > 0 Then ResOther_text1.Text = DBReader("ResOther_text1")
                Else
                    ResOther_text1.Enabled = False
                    vresother.Enabled = False
                    ResOther_text1.Style("background-color") = "#CCCCCC"
                End If
            End If
            If Len(DBReader("ResBeds1") & "") > 0 Then ResBeds1.Text = DBReader("ResBeds1")
            If Len(DBReader("ResAdmin1") & "") > 0 Then ResAdmin1.Text = DBReader("ResAdmin1")
            If Len(DBReader("ResDeaths1") & "") > 0 Then ResDeaths1.Text = DBReader("ResDeaths1")
            If Len(DBReader("ResLiveDis1") & "") > 0 Then ResLiveDis1.Text = DBReader("ResLiveDis1")
            If Len(DBReader("ResPats1") & "") > 0 Then ResPats1.Text = DBReader("ResPats1")
            If Len(DBReader("ResDays1") & "") > 0 Then ResDays1.Text = DBReader("ResDays1")
            If Len(DBReader("ResFacYear") & "") > 0 Then
                ResFacYear.Items.FindByValue(DBReader("ResFacYear")).Selected = True
                If DBReader("ResFacYear") = "1" Then
                    ResMonth1.Enabled = True
                    vResMonth1.Enabled = True
                    If Len(DBReader("ResMonth1") & "") > 0 Then ResMonth1.Items.FindByValue(DBReader("ResMonth1")).Selected = True
                Else
                    ResMonth1.Enabled = False
                    vResMonth1.Enabled = False
                End If
            End If
            If Len(DBReader("ResNursFTE1") & "") > 0 Then ResNursFTE1.Text = DBReader("ResNursFTE1")
            If Len(DBReader("ResNursPractFTE1") & "") > 0 Then ResNursPractFTE1.Text = DBReader("ResNursPractFTE1")
            If Len(DBReader("ResSSFTE1") & "") > 0 Then ResSSFTE1.Text = DBReader("ResSSFTE1")
            If Len(DBReader("ResHHAFTE1") & "") > 0 Then ResHHAFTE1.Text = DBReader("ResHHAFTE1")
            If Len(DBReader("ResPhyPFTE1") & "") > 0 Then ResPhyPFTE1.Text = DBReader("ResPhyPFTE1")
            If Len(DBReader("ResPhyVFTE1") & "") > 0 Then ResPhyVFTE1.Text = DBReader("ResPhyVFTE1")
            If Len(DBReader("ResChapFTE1") & "") > 0 Then ResChapFTE1.Text = DBReader("ResChapFTE1")
            If Len(DBReader("ResOthFTE1") & "") > 0 Then ResOthFTE1.Text = DBReader("ResOthFTE1")
            If Len(DBReader("ResNonFTE1") & "") > 0 Then ResNonFTE1.Text = DBReader("ResNonFTE1")

            SetTextBoxValue(DBReader("PrivateRoom"), PrivateRoom)
            SetTextBoxValue(DBReader("SemiPrivateRoom"), SemiPrivateRoom)
            SetTextBoxValue(DBReader("ResEmpNurs"), ResEmpNurs)
            SetTextBoxValue(DBReader("ResStaffNurs"), ResStaffNurs)
            SetTextBoxValue(DBReader("ResEmpNursPract"), ResEmpNursPract)
            SetTextBoxValue(DBReader("ResStaffNursPract"), ResStaffNursPract)
            SetTextBoxValue(DBReader("ResEmpSS"), ResEmpSS)
            SetTextBoxValue(DBReader("ResStaffSS"), ResStaffSS)
            SetTextBoxValue(DBReader("ResEmpHHA"), ResEmpHHA)
            SetTextBoxValue(DBReader("ResStaffHHA"), ResStaffHHA)
            SetTextBoxValue(DBReader("ResEmpPhy"), ResEmpPhy)
            SetTextBoxValue(DBReader("ResStaffPhy"), ResStaffPhy)
            SetTextBoxValue(DBReader("ResEmpPhyVol"), ResEmpPhyVol)
            SetTextBoxValue(DBReader("ResStaffPhyVol"), ResStaffPhyVol)
            SetTextBoxValue(DBReader("ResEmpChap"), ResEmpChap)
            SetTextBoxValue(DBReader("ResStaffChap"), ResStaffChap)
            SetTextBoxValue(DBReader("ResEmpOth"), ResEmpOth)
            SetTextBoxValue(DBReader("ResStaffOth"), ResStaffOth)
            SetTextBoxValue(DBReader("ResEmpNon"), ResEmpNon)
            SetTextBoxValue(DBReader("ResStaffNon"), ResStaffNon)
            SetTextBoxValue(DBReader("ResEmpTotal"), ResEmpTotal)
            SetTextBoxValue(DBReader("ResStaffTotal"), ResStaffTotal)
            SetTextBoxValue(DBReader("ResFTETotal"), ResFTETotal)
            '    DBReader.Close()
            '    cmdgetInc.Dispose()
            'End Using
            ResName1.Enabled = False
            dd_ResFac.Visible = True
            btnaddfacility.Enabled = True
        Else
            dd_ResFac.Visible = False
            lblselectres.Visible = False
        End If
        '    cmdexist.Dispose()
        'End Using
        'cnn.Close()
        'If intCount > 1 Then btnaddfacility.Enabled = True
        residentialDB.TerminateDBOperation()
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
        'Commented code - JS 
        'Dim strSQL As String = ""
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'strSQL = "Update Survey set SectionI='" & int & "' WHERE Username='" & UserName.Text & "'"
        'Dim cmd As New SqlCommand(strSQL, con)
        'cmd.ExecuteNonQuery()
        'con.Close()
        'con = Nothing
        Dim surveyDB As SurveyDBLayer = New SurveyDBLayer()
        surveyDB.UpdateSurvey("Update Survey set SectionI='" & int & "' WHERE Username='" & UserName.Text & "'")
    End Sub
    Sub AddFac(ByVal int As Integer)
        Dim intCount As Integer = 0
        Dim SQLinsert As String = "INSERT INTO Residential (UserName, ResName1, ResCounty1, ResSite1, ResOther_text1, "
        SQLinsert = SQLinsert + "ResBeds1, ResAdmin1, ResDeaths1, ResLiveDis1, ResPats1, "
        SQLinsert = SQLinsert + "ResDays1, ResFacYear, ResMonth1, ResNursFTE1, ResNursPractFTE1, ResSSFTE1, ResHHAFTE1, ResPhyPFTE1, "
        SQLinsert = SQLinsert + "ResPhyVFTE1, ResChapFTE1, ResOthFTE1, ResNonFTE1, "
        SQLinsert = SQLinsert + "PrivateRoom, SemiPrivateRoom,ResEmpNurs, ResStaffNurs, "
        SQLinsert = SQLinsert + "ResEmpNursPract, ResStaffNursPract, ResEmpSS, ResStaffSS, ResEmpHHA, ResStaffHHA, "
        SQLinsert = SQLinsert + "ResEmpPhy, ResStaffPhy, ResEmpPhyVol, ResStaffPhyVol, ResEmpChap, ResStaffChap, "
        SQLinsert = SQLinsert + "ResEmpOth, ResStaffOth, ResEmpNon, ResStaffNon, ResEmpTotal, ResStaffTotal, ResFTETotal, SectionI)"
        SQLinsert = SQLinsert + " VALUES (@UserName, @ResName1, @ResCounty1, @ResSite1, @ResOther_text1, "
        SQLinsert = SQLinsert + "@ResBeds1, @ResAdmin1, @ResDeaths1, @ResLiveDis1, @ResPats1, "
        SQLinsert = SQLinsert + "@ResDays1, @ResFacYear, @ResMonth1, @ResNursFTE1, @ResNursPractFTE1, @ResSSFTE1, @ResHHAFTE1, @ResPhyPFTE1, "
        SQLinsert = SQLinsert + "@ResPhyVFTE1, @ResChapFTE1, @ResOthFTE1, @ResNonFTE1, "
        SQLinsert = SQLinsert + "@PrivateRoom, @SemiPrivateRoom,@ResEmpNurs, @ResStaffNurs, "
        SQLinsert = SQLinsert + "@ResEmpNursPract, @ResStaffNursPract, @ResEmpSS, @ResStaffSS, @ResEmpHHA, @ResStaffHHA, "
        SQLinsert = SQLinsert + "@ResEmpPhy, @ResStaffPhy, @ResEmpPhyVol, @ResStaffPhyVol, @ResEmpChap, @ResStaffChap, "
        SQLinsert = SQLinsert + "@ResEmpOth, @ResStaffOth, @ResEmpNon, @ResStaffNon, @ResEmpTotal, @ResStaffTotal, @ResFTETotal, @SectionI)"
        Dim SQLexist As String = "SELECT COUNT(*) FROM Residential WHERE UserName='" & UserName.Text & "'" & " AND ResName1='" & ResName1.Text & "'"
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
                    cmdinsert.Parameters.AddWithValue("@ResName1", Replace(ResName1.Text, "'", "''"))
                    cmdinsert.Parameters.AddWithValue("@ResCounty1", ResCounty1.SelectedValue)
                    'cmdinsert.Parameters.AddWithValue("@ResSite1", ResSite1.SelectedValue)
                    'cmdinsert.Parameters.AddWithValue("@ResOther_text1", ResOther_text1.Text)
                    If Len(ResSite1.SelectedItem.Value & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResSite1", ResSite1.SelectedValue)
                        If ResSite1.SelectedItem.Value = "04" Then
                            'cmdinsert.Parameters.AddWithValue("@ResOther_text1", ResOther_text1.Text)
                            cmdinsert.Parameters.AddWithValue("@ResOther_text1", Replace(ResOther_text1.Text, "'", "''"))


                        Else
                            cmdinsert.Parameters.AddWithValue("@ResOther_text1", "")
                        End If
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResOther_text1", "")
                        cmdinsert.Parameters.AddWithValue("@ResSite1", "")
                    End If
                    If Len(ResNursFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResBeds1", ResBeds1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResBeds1", "0")
                    End If
                    If Len(ResAdmin1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResAdmin1", ResAdmin1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResAdmin1", "0")
                    End If
                    If Len(ResDeaths1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResDeaths1", ResDeaths1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResDeaths1", "0")
                    End If
                    If Len(ResLiveDis1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResLiveDis1", ResLiveDis1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResLiveDis1", "0")
                    End If
                    If Len(ResPats1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResPats1", ResPats1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResPats1", "0")
                    End If
                    If Len(ResDays1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResDays1", ResDays1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResDays1", "0")
                    End If
                    cmdinsert.Parameters.AddWithValue("@ResFacYear", ResFacYear.SelectedValue)
                    cmdinsert.Parameters.AddWithValue("@ResMonth1", ResMonth1.SelectedValue)
                    If Len(ResNursFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResNursFTE1", ResNursFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResNursFTE1", "0.00")
                    End If

                    If Len(ResNursPractFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResNursPractFTE1", ResNursPractFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResNursPractFTE1", "0.00")
                    End If

                    If Len(ResSSFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResSSFTE1", ResSSFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResSSFTE1", "0.00")
                    End If

                    If Len(ResHHAFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResHHAFTE1", ResHHAFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResHHAFTE1", "0.00")
                    End If

                    If Len(ResPhyPFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResPhyPFTE1", ResPhyPFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResPhyPFTE1", "0.00")
                    End If

                    If Len(ResPhyVFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResPhyVFTE1", ResPhyVFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResPhyVFTE1", "0")
                    End If

                    If Len(ResChapFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResChapFTE1", ResChapFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResChapFTE1", "0.00")
                    End If

                    If Len(ResOthFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResOthFTE1", ResOthFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResOthFTE1", "0.00")
                    End If

                    If Len(ResNonFTE1.Text & "") > 0 Then
                        cmdinsert.Parameters.AddWithValue("@ResNonFTE1", ResNonFTE1.Text)
                    Else
                        cmdinsert.Parameters.AddWithValue("@ResNonFTE1", "0")
                    End If
                    'New code 07/13/2026
                    MapTextValueField(cmdinsert, PrivateRoom, "@PrivateRoom", "0")
                    MapTextValueField(cmdinsert, SemiPrivateRoom, "@SemiPrivateRoom", "0")
                    MapTextValueField(cmdinsert, ResEmpNurs, "@ResEmpNurs", "0")
                    MapTextValueField(cmdinsert, ResStaffNurs, "@ResStaffNurs", "0")
                    MapTextValueField(cmdinsert, ResEmpNursPract, "@ResEmpNursPract", "0")
                    MapTextValueField(cmdinsert, ResStaffNursPract, "@ResStaffNursPract", "0")
                    MapTextValueField(cmdinsert, ResEmpSS, "@ResEmpSS", "0")
                    MapTextValueField(cmdinsert, ResStaffSS, "@ResStaffSS", "0")
                    MapTextValueField(cmdinsert, ResEmpHHA, "@ResEmpHHA", "0")
                    MapTextValueField(cmdinsert, ResStaffHHA, "@ResStaffHHA", "0")
                    MapTextValueField(cmdinsert, ResEmpPhy, "@ResEmpPhy", "0")
                    MapTextValueField(cmdinsert, ResStaffPhy, "@ResStaffPhy", "0")
                    MapTextValueField(cmdinsert, ResEmpPhyVol, "@ResEmpPhyVol", "0")
                    MapTextValueField(cmdinsert, ResStaffPhyVol, "@ResStaffPhyVol", "0")
                    MapTextValueField(cmdinsert, ResEmpChap, "@ResEmpChap", "0")
                    MapTextValueField(cmdinsert, ResStaffChap, "@ResStaffChap", "0")
                    MapTextValueField(cmdinsert, ResEmpOth, "@ResEmpOth", "0")
                    MapTextValueField(cmdinsert, ResStaffOth, "@ResStaffOth", "0")
                    MapTextValueField(cmdinsert, ResEmpNon, "@ResEmpNon", "0")
                    MapTextValueField(cmdinsert, ResStaffNon, "@ResStaffNon", "0")
                    MapTextValueField(cmdinsert, ResEmpTotal, "@ResEmpTotal", "0")
                    MapTextValueField(cmdinsert, ResStaffTotal, "@ResStaffTotal", "0")
                    MapTextValueField(cmdinsert, ResFTETotal, "@ResFTETotal", "0")

                    cmdinsert.Parameters.AddWithValue("@SectionI", int)
                    cmdinsert.ExecuteNonQuery()
                Else
                    'exists already - just update record
                    SQLupdate = "Update Residential SET "
                    If Len(ResCounty1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResCounty1='" & ResCounty1.SelectedItem.Value & "'," Else SQLupdate = SQLupdate & " ResCounty1=null,"
                    If Len(ResSite1.SelectedItem.Value & "") > 0 Then
                        SQLupdate = SQLupdate & " ResSite1='" & ResSite1.SelectedItem.Value & "',"
                        If ResSite1.SelectedItem.Value = "04" Then
                            SQLupdate = SQLupdate & " ResOther_text1='" & Replace(ResOther_text1.Text, "'", "''") & "',"
                        Else
                            SQLupdate = SQLupdate & " ResOther_text1=null,"
                        End If
                    Else
                        SQLupdate = SQLupdate & " ResSite1=null,"
                        SQLupdate = SQLupdate & " ResOther_text1=null,"
                    End If
                    If Len(ResBeds1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResBeds1='" & ResBeds1.Text & "'," Else SQLupdate = SQLupdate & " ResBeds1=0,"
                    If Len(ResAdmin1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResAdmin1='" & ResAdmin1.Text & "'," Else SQLupdate = SQLupdate & " ResAdmin1=0,"
                    If Len(ResDeaths1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResDeaths1='" & ResDeaths1.Text & "'," Else SQLupdate = SQLupdate & " ResDeaths1=0,"
                    If Len(ResLiveDis1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResLiveDis1='" & ResLiveDis1.Text & "'," Else SQLupdate = SQLupdate & " ResLiveDis1=0,"
                    If Len(ResPats1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResPats1='" & ResPats1.Text & "'," Else SQLupdate = SQLupdate & " ResPats1=0,"
                    If Len(ResDays1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResDays1='" & ResDays1.Text & "'," Else SQLupdate = SQLupdate & " ResDays1=0,"
                    If Len(ResFacYear.SelectedItem.Value & "") > 0 Then
                        SQLupdate = SQLupdate & " ResFacYear='" & ResFacYear.SelectedValue & "',"
                        If ResFacYear.SelectedValue = "1" Then
                            SQLupdate = SQLupdate & " ResMonth1='" & ResMonth1.SelectedValue & "',"
                        Else
                            'SQLupdate = SQLupdate & " ResMonth1='""',"
                        End If
                    Else
                        SQLupdate = SQLupdate & " ResFacYear='""',"
                        'SQLupdate = SQLupdate & " ResMonth1='""',"
                    End If
                    If Len(ResNursFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResNursFTE1='" & ResNursFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResNursFTE1=0.0,"
                    If Len(ResNursPractFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResNursPractFTE1='" & ResNursPractFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResNursPractFTE1=0.0,"
                    If Len(ResSSFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResSSFTE1='" & ResSSFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResSSFTE1=0.0,"
                    If Len(ResHHAFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResHHAFTE1='" & ResHHAFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResHHAFTE1=0.0,"
                    If Len(ResPhyPFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResPhyPFTE1='" & ResPhyPFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResPhyPFTE1=0.0,"
                    If Len(ResPhyVFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResPhyVFTE1='" & ResPhyVFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResPhyVFTE1=0.0,"
                    If Len(ResChapFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResChapFTE1='" & ResChapFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResChapFTE1=0.0,"
                    If Len(ResOthFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResOthFTE1='" & ResOthFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResOthFTE1=0.0,"
                    If Len(ResNonFTE1.Text & "") > 0 Then SQLupdate = SQLupdate & " ResNonFTE1='" & ResNonFTE1.Text & "'," Else SQLupdate = SQLupdate & " ResNonFTE1=0.0,"
                    'If Len(MoreRecFac1.Text & "") > 0 Then SQLupdate = SQLupdate & " MoreRecFac1='" & MoreRecFac1.SelectedItem.Value & "'," Else SQLupdate = SQLupdate & " MoreRecFac1=null,"

                    SQLupdate = SQLupdate & MapTextValueField(PrivateRoom, "PrivateRoom", "0")
                    SQLupdate = SQLupdate & MapTextValueField(SemiPrivateRoom, "SemiPrivateRoom", "0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpNurs, "ResEmpNurs", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffNurs, "ResStaffNurs", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpNursPract, "ResEmpNursPract", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffNursPract, "ResStaffNursPract", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpSS, "ResEmpSS", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffSS, "ResStaffSS", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpHHA, "ResEmpHHA", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffHHA, "ResStaffHHA", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpPhy, "ResEmpPhy", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffPhy, "ResStaffPhy", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpPhyVol, "ResEmpPhyVol", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffPhyVol, "ResStaffPhyVol", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpChap, "ResEmpChap", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffChap, "ResStaffChap", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpOth, "ResEmpOth", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffOth, "ResStaffOth", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpNon, "ResEmpNon", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffNon, "ResStaffNon", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResEmpTotal, "ResEmpTotal", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResStaffTotal, "ResStaffTotal", "0.0")
                    SQLupdate = SQLupdate & MapTextValueField(ResFTETotal, "ResFTETotal", "0.0")

                    SQLupdate = SQLupdate & " SectionI='" & int & "'"
                    SQLupdate = SQLupdate & " WHERE UserName='" & UserName.Text & "'" & " AND ResName1='" & dd_ResFac.SelectedValue & "'"
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
        ResName1.Enabled = True
    End Sub
    Protected Sub ResFacYear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ResFacYear.SelectedIndexChanged
        'Address problem where multiple items get selected
        With ResFacYear
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
        If ResFacYear.SelectedItem.Value = "1" Then
            ResMonth1.Enabled = True
            vResMonth1.Enabled = True
        Else
            ResMonth1.Enabled = False
            vResMonth1.Enabled = False
        End If
    End Sub
    Protected Sub btnaddfacility_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddfacility.Click
        dd_ResFac.ClearSelection()
        ResSite1.ClearSelection()
        ResCounty1.ClearSelection()
        ResFacYear.ClearSelection()
        ResMonth1.ClearSelection()
        EmptyTextBoxValues(Me)
        msave.Text = ""
        msave.Visible = False
        btnaddfacility.Enabled = False
        lblselectres.Visible = False
        dd_ResFac.Visible = False
        ResName1.Enabled = True

        ResOther_text1.Text = ""
        ResOther_text1.Enabled = False
        vresother.Enabled = False
        ResOther_text1.Style("background-color") = "#CCCCCC"
        vResMonth1.Enabled = True

    End Sub
    Protected Sub dd_ResFac_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dd_ResFac.SelectedIndexChanged
        'Address problem where multiple items get selected
        With dd_ResFac
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
        ResSite1.ClearSelection()
        ResCounty1.ClearSelection()
        ResFacYear.ClearSelection()
        ResMonth1.ClearSelection()
        'Dim strSQL As String = "SELECT * FROM Residential WHERE UserName='" & UserName.Text & "'" & " AND ResName1='" & dd_ResFac.SelectedValue & "'"
        'Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        'con.Open()
        'Dim cmd As New SqlCommand(strSQL, con)
        'Dim DBReader = cmd.ExecuteReader()
        Dim resdentiaDB As ResidentialDBLayer = New ResidentialDBLayer()
        Dim DBReader = resdentiaDB.GetResidential("SELECT * FROM Residential WHERE UserName='" & UserName.Text & "'" & " AND ResName1='" & dd_ResFac.SelectedValue & "'")
        While DBReader.Read()
            If Len(DBReader("ResName1") & "") > 0 Then ResName1.Text = DBReader("ResName1")
            If Len(DBReader("ResCounty1") & "") > 0 Then ResCounty1.Items.FindByValue(DBReader("ResCounty1")).Selected = True
            If Len(DBReader("ResSite1") & "") > 0 Then
                ResSite1.Items.FindByValue(DBReader("ResSite1")).Selected = True
                If DBReader("ResSite1") = "04" Then
                    ResOther_text1.Enabled = True
                    ResOther_text1.Style("background-color") = "#FFFFFF"
                    vresother.Enabled = True
                    If Len(DBReader("ResOther_text1") & "") > 0 Then ResOther_text1.Text = DBReader("ResOther_text1")
                Else
                    ResOther_text1.Enabled = False
                    vresother.Enabled = False
                    ResOther_text1.Text = ""
                    ResOther_text1.Style("background-color") = "#CCCCCC"
                End If
            End If
            If Len(DBReader("ResBeds1") & "") > 0 Then ResBeds1.Text = DBReader("ResBeds1")
            If Len(DBReader("ResAdmin1") & "") > 0 Then ResAdmin1.Text = DBReader("ResAdmin1")
            If Len(DBReader("ResDeaths1") & "") > 0 Then ResDeaths1.Text = DBReader("ResDeaths1")
            If Len(DBReader("ResLiveDis1") & "") > 0 Then ResLiveDis1.Text = DBReader("ResLiveDis1")
            If Len(DBReader("ResPats1") & "") > 0 Then ResPats1.Text = DBReader("ResPats1")
            If Len(DBReader("ResDays1") & "") > 0 Then ResDays1.Text = DBReader("ResDays1")
            'If Len(DBReader("ResFacYear") & "") > 0 Then ResFacYear.SelectedValue = DBReader("ResFacYear")
            'If Len(DBReader("ResMonth1") & "") > 0 Then ResMonth1.SelectedValue = DBReader("ResMonth1")

            If Len(DBReader("ResFacYear") & "") > 0 Then
                ResFacYear.Items.FindByValue(DBReader("ResFacYear")).Selected = True
                If DBReader("ResFacYear") = "1" Then
                    ResMonth1.Enabled = True
                    vResMonth1.Enabled = True
                    If Len(DBReader("ResMonth1") & "") > 0 Then ResMonth1.Items.FindByValue(DBReader("ResMonth1")).Selected = True
                Else
                    ResMonth1.Enabled = False
                    vResMonth1.Enabled = False
                End If
            End If


            If Len(DBReader("ResNursFTE1") & "") > 0 Then ResNursFTE1.Text = DBReader("ResNursFTE1")
            If Len(DBReader("ResNursPractFTE1") & "") > 0 Then ResNursPractFTE1.Text = DBReader("ResNursPractFTE1")
            If Len(DBReader("ResSSFTE1") & "") > 0 Then ResSSFTE1.Text = DBReader("ResSSFTE1")
            If Len(DBReader("ResHHAFTE1") & "") > 0 Then ResHHAFTE1.Text = DBReader("ResHHAFTE1")
            If Len(DBReader("ResPhyPFTE1") & "") > 0 Then ResPhyPFTE1.Text = DBReader("ResPhyPFTE1")
            If Len(DBReader("ResPhyVFTE1") & "") > 0 Then ResPhyVFTE1.Text = DBReader("ResPhyVFTE1")
            If Len(DBReader("ResChapFTE1") & "") > 0 Then ResChapFTE1.Text = DBReader("ResChapFTE1")
            If Len(DBReader("ResOthFTE1") & "") > 0 Then ResOthFTE1.Text = DBReader("ResOthFTE1")
            If Len(DBReader("ResNonFTE1") & "") > 0 Then ResNonFTE1.Text = DBReader("ResNonFTE1")
        End While
        'dd_ResFac.ClearSelection()
        ResName1.Enabled = False
        btnaddfacility.Enabled = True
        msave.Visible = False
        resdentiaDB.TerminateDBOperation()
    End Sub

    Protected Sub ResSite1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ResSite1.SelectedIndexChanged
        If ResSite1.SelectedItem.Value = "04" Then
            ResOther_text1.Enabled = True
            vresother.Enabled = True
            ResOther_text1.Style("background-color") = "#FFFFFF"
        Else
            ResOther_text1.Enabled = False
            vresother.Enabled = False
            ResOther_text1.Style("background-color") = "#CCCCCC"
        End If
    End Sub
End Class
