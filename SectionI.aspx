<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionI.aspx.vb" Inherits="SectionI" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MARYLAND HOSPICE SURVEY</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/Survey.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function DisableEnter() {
            if (window.event.keyCode == 13) {
                event.returnValue = false;
                event.cancel = true;
            }
        }

        function checknumber(fld) {

            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive numeric value!");
            }
        }

        function checknumberdec(fld) {

            var sText = document.getElementById(fld).value;
            if (IsNumericPosDec(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive numeric value!");
            }
        }


        function IsNumericPos(sText) {
            var ValidChars = "0123456789";
            var IsNumber = true;
            var Char;


            for (i = 0; i < sText.length && IsNumber == true; i++) {
                Char = sText.charAt(i);
                if (ValidChars.indexOf(Char) == -1) {
                    IsNumber = false;
                }
            }
            return IsNumber;

        }

        function IsNumericPosDec(sText) {
            var ValidChars = "0123456789.";
            var IsNumber = true;
            var Char;


            for (i = 0; i < sText.length && IsNumber == true; i++) {
                Char = sText.charAt(i);
                if (ValidChars.indexOf(Char) == -1) {
                    IsNumber = false;
                }
            }
            return IsNumber;

        }

        function I6Sum(source, arguments) {
            var mySum = 0;
            var value1 = parseInt(document.getElementById("ResNursFTE1").value);
            var value2 = parseInt(document.getElementById("ResNursPractFTE1").value);
            var value3 = parseInt(document.getElementById("ResSSFTE1").value);
            var value4 = parseInt(document.getElementById("ResHHAFTE1").value);
            var value5 = parseInt(document.getElementById("ResPhyPFTE1").value);
            var value6 = parseInt(document.getElementById("ResPhyVFTE1").value);
            var value7 = parseInt(document.getElementById("ResChapFTE1").value);
            var value8 = parseInt(document.getElementById("ResOthFTE1").value);
            var value9 = parseInt(document.getElementById("ResNonFTE1").value);

            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }
            if (value3 > 0) {
                mySum = mySum + value3
            }
            if (value4 > 0) {
                mySum = mySum + value4
            }
            if (value5 > 0) {
                mySum = mySum + value5
            }
            if (value6 > 0) {
                mySum = mySum + value6
            }
            if (value7 > 0) {
                mySum = mySum + value7
            }
            if (value8 > 0) {
                mySum = mySum + value8
            }
            if (value9 > 0) {
                mySum = mySum + value8
            }

            if (mySum == 0) { arguments.IsValid = false; }

        }

        function validateDecimal(textbox, maxDecimals = 2) {
            var originalValue = textbox.value;

            // Remove all characters except numbers and the first decimal point
            var cleanValue = originalValue.replace(/[^0-9.]/g, '');
            var parts = cleanValue.split('.');

            if (parts.length > 2) {
                // Keep only the first decimal point
                cleanValue = parts[0] + '.' + parts.slice(1).join('');
                parts = cleanValue.split('.');
            }

            // Enforce decimal place limit if a decimal point exists
            if (parts.length === 2 && parts[1].length > maxDecimals) {
                cleanValue = parts[0] + '.' + parts[1].substring(0, maxDecimals);
            }

            // Update the textbox only if changes were made
            if (originalValue !== cleanValue) {
                textbox.value = cleanValue;
            }
        }
        function sumInputs(inputs) {
            var total = 0;
            inputs.forEach(function (input) {
                // Parse the text value to a float number
                var value = parseFloat(input.value);

                // If the input is empty or not a number (NaN), treat it as 0
                if (!isNaN(value)) {
                    total += value;
                }
            });
            return total;
        }
        function sumInpatFacs(clsName1, textId1, clsName2, textId2) {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll(clsName1);
            document.getElementById(textId1).value = sumInputs(inputs);
            inputs = document.querySelectorAll(clsName2);
            document.getElementById(textId2).value = sumInputs(inputs);

            document.getElementById('ResFTETotal').value = parseFloat(document.getElementById('ResEmpTotal').value) + parseFloat(document.getElementById('ResStaffTotal').value)
        }
    </script>	
    <style type="text/css">
        .style1
        {
            width: 700px;
        }
        .style2
        {
            width: 675px;
        }
        .style9
        {
            width: 100%;
            background-color: #666666;
        }
        .style10
        {
            text-align: center;
        }
         .style11
        {     
            width: 30px;      
        }
        .style12
        {
            width: 100%;
            }
        .style15
        {
            height: 15px;
            font-weight: bold;
        }
        .style17
        {
            width: 710px;
        }
        
        .style23 {color: #FFFFFF}
        .style41
        {
            height: 24px;
        }
        </style>
</head>
<body  onkeypress="DisableEnter()">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div >   
        <table cellpadding="5" cellspacing="0" class="style1" align="center" 
            bgcolor="White">
            <tr>
                <td style="background-color: #666666" class="style17">
                    <img alt="" src="Images/Banner.jpg" style="width: 700px; height: 92px" /></td>
            </tr>
            <tr bordercolor="#666666" bgcolor="#666666"  style='border: 0px solid #666666;'>
                <td style='border: 0px solid #666666;' class="style28a">          
                <span class="style23" style='border: 0px solid #666666;'>User Name
                <asp:Label ID="UserName" runat="server" />  <br />        
                <asp:Label ID="lblFirstname" runat="server" />&nbsp;<asp:Label ID="lblLastName" runat="server" />  <br /></span>
                </td>
            </tr>
            <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                <td>
                    <table cellpadding="0" cellspacing="0" class="style32a">
                        <tr>
                            <td align="right"><a href="#" onclick="javascript:window.print(); return false;">
                                <asp:Button ID="printbtn" runat="server" CssClass="btn3" Text="PRINT THIS PAGE"  CausesValidation="False"/></a></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style17">                        
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="2" align="center"><span class="style15">SECTION I - HOSPICE HOUSE</span></td>
                        </tr>
                         <tr>
                             <td  colspan="2" align="center">
                                 <asp:Label ID="msgerror" runat="server" CssClass="btnred" ForeColor="Red" Text="msgerror" Visible="False"></asp:Label>
                             </td>
                        </tr>                          
                         <tr>
                             <td  colspan="2" align="left"><asp:Label ID="lblnote1" runat="server" Text="NOTE: After entering a residence, please click on the SAVE button before adding another residence."></asp:Label><br />
                             <asp:Label ID="lblnote2" runat="server" Text="To add another residence, click on the ADD residence button on the bottom."></asp:Label><br />
                             <asp:Label ID="lblnote3" runat="server" Text="If you cannot get back to a residence using the drop-down, go back out to the MENU and enter Section I again and you will be able to select it."></asp:Label><br />
                             </td>
                        </tr>  
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                         <tr>
                             <td colspan="2">
                                    <asp:Label ID="lblselectres" runat="server" Text="Select a Previously Entered Residential Facility" 
                                        ForeColor="#CC0000" Visible="False"></asp:Label>&nbsp;
                                    <asp:DropDownList ID="dd_ResFac" runat="server" DataSourceID="ResFac" 
                                        DataTextField="ResName1" DataValueField="ResName1" dataVisible="False" 
                                        AutoPostBack="True"></asp:DropDownList>&nbsp;&nbsp; &nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    <br />
                                <asp:SqlDataSource ID="ResFac" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT ResName1 FROM [Residential] WHERE ([UserName] = @UserName) ORDER BY ResName1">
                                    <SelectParameters>
                                        <asp:controlparameter Name="UserName" controlid="UserName" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                             </td>
                        </tr>                                              
                        <tr>
                             <td class="style11">&nbsp;</td>
                             <td class="style12">&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;I1.</td>
                            <td class="style15" bgcolor="#CCCCCC">Residential Facility Information</td>
                         </tr>
                         <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                         </tr>
                         <tr>
                            <td colspan="2">&nbsp;</td>
                         </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                <table class="style32a">
                                    <tr>
                                        <td width="100px">Facility Name</td>
                                        <td><asp:TextBox ID="ResName1" runat="server" BackColor="#FFFFFF" Columns="60" 
                                                MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="ResName1" ErrorMessage="I1. Facility Name" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100px">County</td>
                                        <td>
                                            <asp:DropDownList ID="ResCounty1" 
                                                            runat="server" >
                                                <asp:ListItem Text="Select County" Value="" />  
                                                <asp:ListItem Text="ALLEGANY" Value="01" />  
                                                <asp:ListItem Text="ANNE ARUNDEL"  Value="02" />  
                                                <asp:ListItem Text="BALTIMORE"  Value="03" />  
                                                <asp:ListItem Text="BALTIMORE CITY"  Value="30" />  
                                                <asp:ListItem Text="CALVERT"  Value="04" />  
                                                <asp:ListItem Text="CAROLINE"  Value="05" />  
                                                <asp:ListItem Text="CARROLL"  Value="06" />  
                                                <asp:ListItem Text="CECIL"  Value="07" />  
                                                <asp:ListItem Text="CHARLES"  Value="08" />  
                                                <asp:ListItem Text="DORCHESTER"  Value="09" />  
                                                <asp:ListItem Text="FREDERICK"  Value="10" />  
                                                <asp:ListItem Text="GARRETT"  Value="11" />  
                                                <asp:ListItem Text="HARFORD"  Value="12" />  
                                                <asp:ListItem Text="HOWARD"  Value="13" />  
                                                <asp:ListItem Text="KENT"  Value="14" />  
                                                <asp:ListItem Text="MONTGOMERY"  Value="15" />  
                                                <asp:ListItem Text="PRINCE GEORGES"  Value="16" />  
                                                <asp:ListItem Text="QUEEN ANNES"  Value="17" />  
                                                <asp:ListItem Text="SOMERSET"  Value="19" />  
                                                <asp:ListItem Text="ST. MARYS"  Value="18" />  
                                                <asp:ListItem Text="TALBOT"  Value="20" />  
                                                <asp:ListItem Text="WASHINGTON"  Value="21" />  
                                                <asp:ListItem Text="WICOMICO"  Value="22" />  
                                                <asp:ListItem Text="WORCESTER"  Value="23" />        
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="vCounty" runat="server" ControlToValidate="ResCounty1" ErrorMessage="I1. County" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                       <tr>
                            <td colspan="2"><hr /></td>
                        </tr>                                                                  
                         <tr>
                             <td class="style11">&nbsp;</td>
                             <td class="style12">&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;I2.</td>
                            <td class="style15" bgcolor="#CCCCCC">Where is the residential facility sited?</td>
                         </tr>
                         <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                   &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                   <asp:DropDownList ID="ResSite1" runat="server" AutoPostBack="True">
                                        <asp:ListItem Text="Select Residential Facility" Value="" />
                                        <asp:ListItem Text="Free Standing Location" Value="01" />
                                        <asp:ListItem Text="In Hospital" Value="02" />
                                        <asp:ListItem Text="In Nursing Home" Value="03" />
                                        <asp:ListItem Text="Other (please specify):" Value="04" />
                                        </asp:DropDownList>
                                   &nbsp;<asp:RequiredFieldValidator ID="vresother0" runat="server" 
                                       ControlToValidate="ResSite1" ErrorMessage="I2. Select Residential Facility"
                                       Text="*"></asp:RequiredFieldValidator>
                                   &nbsp;&nbsp;&nbsp;
                                   If Other, please specify &nbsp;&nbsp;
&nbsp; <asp:TextBox ID="ResOther_text1" runat="server" BackColor="#FFFFFF" Columns="25" MaxLength="50"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="vresother" runat="server" 
                                       ControlToValidate="ResOther_text1" ErrorMessage="I2. Other Residential Facility" 
                                       Text="*"></asp:RequiredFieldValidator>
                             </td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr>                    
                         <tr>
                            <td colspan="2"><hr /></td>
                        </tr>                                                                   
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC">&nbsp;I3.</td>
                             <td class="style15" bgcolor="#CCCCCC">How many beds does the residential facility have?
                                <asp:TextBox ID="ResBeds1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ResBeds1" 
                                    ErrorMessage="I3. Beds" Text="*"></asp:RequiredFieldValidator>
                             </td>
                            </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td>I3a: Report the number of private rooms at the facility. Private Room (one bed )&nbsp;
                                <asp:TextBox ID="PrivateRoom" runat="server"  BackColor="#FFFFFF" Columns="5" 
                                MaxLength="10" onkeyup="checknumber('PrivateRoom');"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPrivateRoom" runat="server" ControlToValidate="PrivateRoom" 
                                ErrorMessage="I3a. Private rooms at the facility" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td>I3b: Report the number of semi-private rooms at the facility. Semi-Private Room (two beds)&nbsp;
                                <asp:TextBox ID="SemiPrivateRoom" runat="server"  BackColor="#FFFFFF" Columns="5" 
                                MaxLength="10" onkeyup="checknumber('SemiPrivateRoom');"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvSemiPrivateRoom" runat="server" ControlToValidate="SemiPrivateRoom" 
                                ErrorMessage="I3b. Semi-private rooms at the facility" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr>  
                        <tr>
                            <td colspan="2"><hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>  
                        <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;I4.</td>
                            <td class="style15" bgcolor="#CCCCCC">Patient Care Services</td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>Total Admissions</td>
                                        <td><asp:TextBox ID="ResAdmin1" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeyup="checknumber('ResAdmin1');"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400px" class="style41">Deaths</td>
                                        <td class="style41"><asp:TextBox ID="ResDeaths1" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeyup="checknumber('ResDeaths1');"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400px" class="style41">All Live Discharges</td>
                                        <td class="style41"><asp:TextBox ID="ResLiveDis1" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeyup="checknumber('ResLiveDis1');"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400px">Patients Served</td>
                                        <td>
                                            <asp:TextBox ID="ResPats1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"  onkeyup="checknumber('ResPats1');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ResPats1" 
                                                                ErrorMessage="I4. Patients Served" Text="*"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400px">Patient Days for Patients who died or were discharged in FY<asp:Label ID="SY2" runat="server"></asp:Label></td>
                                        <td><asp:TextBox ID="ResDays1" runat="server" BackColor="#FFFFFF" Columns="10"  MaxLength="10"  onkeyup="checknumber('ResDays1');"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                              </td>
                        </tr> 
                        <tr>
                            <td colspan="2"><hr /></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;I5.</td>
                            <td class="style15" bgcolor="#CCCCCC">Did your program open during FY<asp:Label ID="SY1" runat="server"></asp:Label>
                                <asp:DropDownList ID="ResFacYear" runat="server" AutoPostBack="True">
<asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                    
                                </asp:DropDownList></td>
                            </tr>  
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr>                      
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">If yes, please note first month of operation &nbsp;
                                <asp:DropDownList ID="ResMonth1" runat="server" >
                                                <asp:ListItem Text="Select Month" Value="" />
                                                <asp:ListItem Text="January" Value="01" />
                                                <asp:ListItem Text="February" Value="02" />
                                                <asp:ListItem Text="March" Value="03" />
                                                <asp:ListItem Text="April" Value="04" />
                                                <asp:ListItem Text="May" Value="05" />
                                                <asp:ListItem Text="June" Value="06" />
                                                <asp:ListItem Text="July" Value="07" />
                                                <asp:ListItem Text="August" Value="08" />
                                                <asp:ListItem Text="September" Value="09" />
                                                <asp:ListItem Text="October" Value="10" />
                                                <asp:ListItem Text="November" Value="11" />
                                                <asp:ListItem Text="December" Value="12" />
                                            </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="vResMonth1" runat="server" 
                                    ControlToValidate="ResMonth1" ErrorMessage="I5. Month" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr> 
                         <tr>
                            <td colspan="2"><hr /></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>  
                        <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;I6.</td>
                            <td class="style15" bgcolor="#CCCCCC">Facility Staffing by Discipline</td>
                        </tr> 
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">Complete the table using the following definition and calculation instructions:</td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12"><b>Definition:</b></td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                <u>FTE:</u> One full time equivalent (FTE) is 2080 hours per year (40 hours per week 
                                times 52 weeks). Provide actual FTEs utilized, not the budgeted number of FTEs.</td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12"><b>Calculation:</b></td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                <u>Total FTEs:</u> Divide paid hours by 2080. Include vacation, sick leave, education 
                                leave, and all other time normally compensated by the agency. Categorize your 
                                FTEs as you do for the Medicare Hospice Cost Report. Include hourly, salaried 
                                and contract staff.
                             </td>
                        </tr>
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                                <table border="1" cellpadding="0" cellspacing="0" class="style32a">
                                    <tr>
                                        <td style="width:40%">&nbsp;</td>
                                        <td style="width:20%">Total Hospice House Employee FTEs</td>
                                        <td style="width:20%">Total Hospice House Staffing Agency FTEs</td>
                                        <td>Total
                                            <br />
                                            Hospice House FTEs 
                                        <asp:CustomValidator ID="CustomValidator8" runat="server" 
                                                  ClientValidationFunction="I6Sum" 
                                                  ErrorMessage="At least 1 item in question I6 must be greater than zero.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Nursing</strong><br /> Include RNs and LPNs <br /><i>Do <u>not</u> include supervisors or other clinical 
                                            administrators unless a portion of their time is spent in direct care.</i></td>
                                        <td><asp:TextBox ID="ResEmpNurs" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursing clsEMP" 
                                            onchange="return sumInpatFacs('.clsNursing','ResNursFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvResEmpNurs" runat="server" ControlToValidate="ResEmpNurs" Text="*"
                                                ErrorMessage="Nursing Total Hospice House Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="ResStaffNurs" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursing clsStf"  
                                            onchange="return sumInpatFacs('.clsNursing','ResNursFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvResStaffNurs" runat="server" ControlToValidate="ResStaffNurs" Text="*"
                                                ErrorMessage="Nursing Total Hospice House Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ResNursFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Nurse Practitioner</strong><br /> Include nurses with an advanced degree 
                                            who function and are licensed as a Nurse Practitioner.</td>
                                        <td><asp:TextBox ID="ResEmpNursPract" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursingPrac clsEMP" 
                                            onchange="return sumInpatFacs('.clsNursingPrac','ResNursPractFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvResEmpNursPract" runat="server" ControlToValidate="ResEmpNursPract" Text="*"
                                                ErrorMessage="Nurse Practitioner Total Hospice House Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="ResStaffNursPract" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursingPrac clsStf"  
                                            onchange="return sumInpatFacs('.clsNursingPrac','ResNursPractFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvResStaffNursPract" runat="server" ControlToValidate="ResStaffNursPract" Text="*"
                                                ErrorMessage="Nurse Practitioner Total Hospice House Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ResNursPractFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Social Services</b>
                                            <br />
                                            Include medical social services staff as defined by CMS for the cost report.
                                            <br />
                                            <i>Do <u>not</u> include chaplains or bereavement staff</i></td>
                                        <td><asp:TextBox ID="ResEmpSS" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsSocialServ clsEMP" 
                                             onchange="return sumInpatFacs('.clsSocialServ','ResSSFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResEmpSS" runat="server" ControlToValidate="ResEmpSS" Text="*"
                                                 ErrorMessage="Social Services Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffSS" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsSocialServ clsStf"  
                                             onchange="return sumInpatFacs('.clsSocialServ','ResSSFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffSS" runat="server" ControlToValidate="ResStaffSS" Text="*"
                                                 ErrorMessage="Social Services Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td>
                                            <asp:TextBox ID="ResSSFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Hospice Aides</b></td>
                                        <td><asp:TextBox ID="ResEmpHHA" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsHHA clsEMP" 
                                             onchange="return sumInpatFacs('.clsHHA','ResHHAFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResEmpHHA" runat="server" ControlToValidate="ResEmpHHA" Text="*"
                                                 ErrorMessage="Hospice Aides Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffHHA" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsHHA clsStf"  
                                             onchange="return sumInpatFacs('.clsHHA','ResHHAFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffHHA" runat="server" ControlToValidate="ResStaffHHA" Text="*"
                                                 ErrorMessage="Hospice Aides Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td><asp:TextBox ID="ResHHAFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Physicians – Paid</b><br /> Include medical directors and other physicians providing 
                                            direct care to patients and participating in clinical support. <i>Exclude volunteer 
                                            physicians</i></td>
                                        <td><asp:TextBox ID="ResEmpPhy" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyPd clsEMP" 
                                             onchange="return sumInpatFacs('.clsPhyPd','ResPhyPFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="efvResEmpPhy" runat="server" ControlToValidate="ResEmpPhy" Text="*"
                                                 ErrorMessage="Physicians – Paid Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffPhy" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyPd clsStf"  
                                             onchange="return sumInpatFacs('.clsPhyPd','ResPhyPFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffPhy" runat="server" ControlToValidate="ResStaffPhy" Text="*"
                                                 ErrorMessage="Physicians – Paid Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td>
                                            <asp:TextBox ID="ResPhyPFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Physicians – Volunteer</b></td>
                                        <td><asp:TextBox ID="ResEmpPhyVol" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyVol clsEMP" 
                                             onchange="return sumInpatFacs('.clsPhyVol','ResPhyVFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResEmpPhyVol" runat="server" ControlToValidate="ResEmpPhyVol" Text="*"
                                                 ErrorMessage="Physicians – Volunteer Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffPhyVol" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyVol clsStf"  
                                             onchange="return sumInpatFacs('.clsPhyVol','ResPhyVFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffPhyVol" runat="server" ControlToValidate="ResStaffPhyVol" Text="*"
                                                 ErrorMessage="Physicians – Volunteer Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td>
                                            <asp:TextBox ID="ResPhyVFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Chaplains</b></td>
                                        <td><asp:TextBox ID="ResEmpChap" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsChap clsEMP" 
                                             onchange="return sumInpatFacs('.clsChap','ResChapFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResEmpChap" runat="server" ControlToValidate="ResEmpChap" Text="*"
                                                 ErrorMessage="Chaplains Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffChap" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsChap clsStf"  
                                             onchange="return sumInpatFacs('.clsChap','ResChapFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffChap" runat="server" ControlToValidate="ResStaffChap" Text="*"
                                                 ErrorMessage="Chaplains Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td>
                                            <asp:TextBox ID="ResChapFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Other Clinical</b> <br />Include any paid staff in addition to those captured above who 
                                            provide direct care to patients or families. Include therapists, and dietitians.<br /> 
                                           <i> Do <u>not</u> include volunteers or bereavement staff.</i></td>
                                        <td><asp:TextBox ID="ResEmpOth" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsOClinical clsEMP" 
                                             onchange="return sumInpatFacs('.clsOClinical','ResOthFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResEmpOth" runat="server" ControlToValidate="ResEmpOth" Text="*"
                                                 ErrorMessage="Other Clinical Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffOth" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsOClinical clsStf"  
                                             onchange="return sumInpatFacs('.clsOClinical','ResOthFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffOth" runat="server" ControlToValidate="ResStaffOth" Text="*"
                                                 ErrorMessage="Other Clinical Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td>
                                            <asp:TextBox ID="ResOthFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Non-Clinical</b> <br />Include all administrative and general staff or contracted staff.</td>
                                        <td><asp:TextBox ID="ResEmpNon" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNClinical clsEMP" 
                                             onchange="return sumInpatFacs('.clsNClinical','ResNonFTE1','.clsEMP','ResEmpTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResEmpNon" runat="server" ControlToValidate="ResEmpNon" Text="*"
                                                 ErrorMessage="Non-Clinical Total Hospice House Employee FTEs is required" />
                                         </td>
                                         <td><asp:TextBox ID="ResStaffNon" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNClinical clsStf"  
                                             onchange="return sumInpatFacs('.clsNClinical','ResNonFTE1','.clsStf','ResStaffTotal');" BackColor="#FFFFFF" />
                                             <asp:RequiredFieldValidator ID="rfvResStaffNon" runat="server" ControlToValidate="ResStaffNon" Text="*"
                                                 ErrorMessage="Other Clinical Total Hospice House Staffing Agency FTEs is required" />
                                         </td>
                                        <td>
                                            <asp:TextBox ID="ResNonFTE1" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total</td>
                                        <td><asp:TextBox ID="ResEmpTotal" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td><asp:TextBox ID="ResStaffTotal" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td><asp:TextBox ID="ResFTETotal" runat="server" Columns="5" BackColor="#FFFFCC" onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>  
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12" align="center"><asp:Label ID="msave" runat="server" 
                                    Visible="False" CssClass="btnblue" Text="Saved! <br> You may enter another facility or return to the Menu."></asp:Label></td>
                        </tr> 
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#666666" style="text-align: center" class="style17">
                                <table align="center" cellpadding="3" cellspacing="0" class="style9">
                                   <tr>
                                        <td class="style10">
                                            <asp:Button ID="btnMENU" runat="server" CssClass="btn1" Text="MENU" 
                                                CausesValidation="False" ToolTip="Return to Menu." />
                                        </td>
                                        <td class="style10">
                                            <asp:Button ID="btnSAVE" runat="server" CssClass="btn2" Text="SAVE" 
                                                CausesValidation="True" ToolTip="Validate and Saves your answers." />
                                        </td>
                                        <td><asp:Button ID="btnaddfacility" runat="server" Text="ADD Another Facility" 
                                                Enabled="False" /></td>
                                    </tr>
                                </table>
                 </td>
            </tr>
        </table> 
    </div>
    <asp:ValidationSummary ID="vsummary" runat="server" 
                         HeaderText="Please complete the following questions:" ShowMessageBox="True" 
                         ShowSummary="False" />  
</ContentTemplate>
    </asp:UpdatePanel>    
    </form>
</body>
</html>
