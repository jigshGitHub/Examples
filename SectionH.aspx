<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionH.aspx.vb" Inherits="SectionH" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MARYLAND HOSPICE SURVEY</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/Survey.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        //-- allow textbox to accept numbers only

        function allowonlynumbers(fld) {

            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive numeric value!");
            }

        }

    function DisableEnter() {
        if (window.event.keyCode == 13) {
            event.returnValue = false;
            event.cancel = true;
        }
    }
    function Beds(source, arguments) {

        var value1 = parseInt(document.getElementById("InFacBeds1").value);
        var value2 = parseInt(document.getElementById("IPResBeds1").value);
        var value3 = parseInt(document.getElementById("IPMixedBeds1").value);
    
        arguments.IsValid = (value1 > 0 || value2 > 0 || value3 > 0);

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


    function H6Sum(source, arguments) {
        var mySum = 0;
        var value1 = parseInt(document.getElementById("FTENursingIF1").value);
        var value2 = parseInt(document.getElementById("FTENursingPractIF1").value);
        var value3 = parseInt(document.getElementById("FTESocialIF1").value);
        var value4 = parseInt(document.getElementById("FTEHHAIF1").value);
        var value5 = parseInt(document.getElementById("FTEMDIF1").value);
        var value6 = parseInt(document.getElementById("FTEMDVolIF1").value);
        var value7 = parseInt(document.getElementById("FTEChapIF1").value);
        var value8 = parseInt(document.getElementById("FTEOtherClinicalIF1").value);
        var value9 = parseInt(document.getElementById("FTENonClinicalIF1").value);

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
        
        document.getElementById('FTETotal').value = parseFloat(document.getElementById('EmpTotal').value) + parseFloat(document.getElementById('StaffTotal').value)
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
         
     
         
        .style42
        {
            height: 19px;
        }
        .style43
        {
            width: 30px;
            height: 57px;
        }
        .style44
        {
            width: 100%;
            height: 57px;
        }
         
     
         
        </style>
</head>
<body  onkeypress="DisableEnter()">
    <form id="form1" name = "form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

<asp:Label ID="lblFirstname" runat="server" />&nbsp;<asp:Label ID="lblLastName" runat="server" />  <br />         
          </span>
            
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
                
                              
                    <asp:Panel ID="Panel_H" runat="server" >
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="2" align="center">
                                <b style="text-align: center">SECTION H - INPATIENT FACILITY</td>
                        </tr>
                         <tr>
                             <td  colspan="2" align="center">
                                 &nbsp;</td>
                        </tr>    
                          <tr>
                             <td  colspan="2" align="left"><asp:Label ID="lblnote1" runat="server" Text="NOTE: After entering a inpatient, please click on the SAVE button before adding another inpatient."></asp:Label><br />
                             <asp:Label ID="lblnote2" runat="server" Text="To add another inpatient, click on the ADD inpatient button on the bottom."></asp:Label><br />
                             <asp:Label ID="lblnote3" runat="server" Text="If you cannot get back to a inpatient using the drop-down, go back out to the MENU and enter Section H again and you will be able to select it."></asp:Label><br />
                             </td>
                        </tr>  
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                              <tr>
                             <td colspan="2">
                                    <asp:Label ID="lblselectres" runat="server" Text="Select a Previously Entered Inpatent Facility" 
                                        ForeColor="#CC0000" Visible="False"></asp:Label>&nbsp;
                                    <asp:DropDownList ID="dd_InFac" runat="server" DataSourceID="InFac" 
                                        DataTextField="InFacName1" DataValueField="InFacName1" dataVisible="False" 
                                        AutoPostBack="True"></asp:DropDownList>&nbsp;&nbsp; &nbsp;&nbsp;
                                    &nbsp;&nbsp;
                                    <br />
                                <asp:SqlDataSource ID="InFac" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    SelectCommand="SELECT InFacName1 FROM [Inpatient] WHERE ([UserName] = @UserName) ORDER BY InFacName1">
                                    <SelectParameters>
                                        <asp:controlparameter Name="UserName" controlid="UserName" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                             </td>
                        </tr>                                             
                         <tr>
                             <td class="style11">
                                 &nbsp;</td>
                             <td class="style12">
                                 &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;H1.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                              INPATIENT FACILITY INFORMATION</td>
                            </tr>
                         <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                             
                                   &nbsp;</td>
                            </tr>
                              
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <table class="style32a">
                                    <tr>
                                        <td width="100px">
                                            Facility Name</td>
                                        <td>
                                            <asp:TextBox ID="InFacName1" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="100"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
 ControlToValidate="InFacName1" ErrorMessage="Facility Name" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100px">
                                            County</td>
                                        <td>
                                             <asp:DropDownList ID="InFacCounty1" 
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
        <asp:ListItem Text="WORCESTER"  Value="23" />        </asp:DropDownList>
              <asp:RequiredFieldValidator ID="vCounty" runat="server" 
 ControlToValidate="InFacCounty1" ErrorMessage="County" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                       <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                         <tr>
                             <td class="style11">
                                 &nbsp;</td>
                             <td class="style12">
                                 &nbsp;</td>
                        </tr>
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;H2.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                Where is the inpatient facility sited?</td>
                            </tr>
                             <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                             
                                   <asp:DropDownList ID="InFacSite1" runat="server" AutoPostBack="True">
                                                                <asp:ListItem Text="Select Inpatient Facility" Value="" />
                                                                <asp:ListItem Text="Free Standing Location" Value="01" />
                                                                <asp:ListItem Text="In Hospital" Value="02" />
                                                                <asp:ListItem Text="In Nursing Home" Value="03" />
                                                                <asp:ListItem Text="Other (please specify):" Value="04" />
                                                               </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="vq4a" runat="server" ControlToValidate="InFacSite1" 
                                                                ErrorMessage="Where is the inpatient facility sited?" Text="*"></asp:RequiredFieldValidator>
                                   &nbsp;&nbsp;&nbsp;&nbsp; If Other please specify:&nbsp;&nbsp;
                                   <asp:TextBox ID="InFacOther_text1" runat="server" BackColor="#FFFFFF" 
                                       Columns="10" MaxLength="10"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="vInFacOther_text1" runat="server" 
                                       ControlToValidate="InFacOther_text1" 
                                       ErrorMessage="If you have chosen 'Other', please provide details." Text="*"></asp:RequiredFieldValidator>
                                 </td>
                            </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                              
                            </td>
                        </tr>
                       
                         <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;H3.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               What level of care does the inpatient facility predominantly provide?</td>
                            </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>  
                         
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12" align="left">
                            <asp:RadioButtonList ID="InFacLevel1" runat="server" Autopostback="True" 
                                                             RepeatDirection="vertical">
                                                            <asp:ListItem Text="Routine Home Care" Value="Routine" />
                                                            <asp:ListItem Text="Continuous Care" Value="Continuous" />
                                                            <asp:ListItem Text="Respite"  Value="Respite" />
                                                                <asp:ListItem Text="General Inpatient Care" Value="General" />
                                                        </asp:RadioButtonList>
                                                        <font color="#FF0000">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                            ControlToValidate="InFacLevel1" ErrorMessage=" What level of care does the inpatient facility predominantly provide?" Text="*"></asp:RequiredFieldValidator>
                                                        </font>
                               </td>
                                                </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;H4.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                How many beds is your facility licensed for?</td>
                            </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="300px" class="style41">
                                            Licensed Beds</td>
                                        <td class="style41">
                                            <asp:TextBox ID="InFacBeds1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"  onkeyup="checknumber('InFacBeds1');"></asp:TextBox> 
                                                
                                            <asp:RequiredFieldValidator ID="vInFacBeds1" runat="server" 
                                                ControlToValidate="InFacBeds1" ErrorMessage="Licensed beds" Text="*"></asp:RequiredFieldValidator>
                                                
                                        </td>
                                    </tr>
                                </table>
                              </td>
                        </tr> 
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;H5.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                             Patient Care Services</td>
                            </tr>  
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Please provide the following numbers of patients cared for in your facility
                               </td>
                        </tr>                      
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <table border="1" cellpadding="0" cellspacing="0" class="style32a">
                                    <tr>
                                        <td width="150px">
                                            <br />
                                            <br />
                                            <strong>Level of Care</strong></td>
                                        <td width="70px" valign="top">
                                            FY<br /> Total Admissions/<br /> Transfers In
                                            <asp:Label ID="SY3" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            FY<br /> Deaths in<br />
                                            <asp:Label ID="SY4" runat="server"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            FY<br /> All Live Discharges and Transfers Out<br /> from your facility</td>
                                        <td valign="top">
                                            Patients Served<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                                runat="server" ControlToValidate="InFacGenPatsServed1" 
                                                ErrorMessage="General Inpatient" Text="*"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="InFacInptResPatsServed1" ErrorMessage="Respite" Text="*"></asp:RequiredFieldValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="InFacResPatsServed1" ErrorMessage="Residential/Routine" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td valign="top">
                                            Patient Days for patients who died or were discharged in FY<asp:Label ID="SY1" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td width="150px">
                                            General Inpatient</td>
                                        <td>
                                            <asp:TextBox ID="InFacAdmin1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacAdmin1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacGenDeaths1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacGenDeaths1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacGenLiveDis1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacGenLiveDis1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacGenPatsServed1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacGenPatsServed1');"></asp:TextBox> 
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacPDays1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacPDays1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="150px">
                                            Respite</td>
                                        <td>
                                            <asp:TextBox ID="InFacInptResAdmin1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacInptResAdmin1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacInptResDeaths1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacInptResDeaths1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacInptResLiveDis1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacInptResLiveDis1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacInptResPatsServed1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacInptResPatsServed1');"></asp:TextBox>
                                                
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacInptResPDays1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacInptResPDays1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="150px">
                                            Routine</td>
                                        <td>
                                            <asp:TextBox ID="InFacResAdmin1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacResAdmin1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacResDeaths1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacResDeaths1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacResLiveDis1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacResLiveDis1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacResPatsServed1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacResPatsServed1');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InFacResPDays1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="checknumber('InFacResPDays1');"></asp:TextBox> 
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                        <tr>
                            <td colspan="2" class="style32">
                                </td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC">
                                &nbsp;H6.</td>
                            <td class="style15" bgcolor="#CCCCCC" valign="top">
                              Did your program open during FY <asp:Label ID="SY2" runat="server"></asp:Label> &nbsp;<asp:DropDownList 
                                    ID="InFacYear" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList></td>
                            </tr>
                            <tr>
                            <td class="style11">
                                &nbsp;</td>
                           <td class="style12">
                               &nbsp;</td>
                          
                       
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                            If yes, please note first month of operation &nbsp;
                               <asp:DropDownList ID="InFacMonth1" runat="server" >
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
                                            </asp:DropDownList><asp:RequiredFieldValidator ID="vInFacMonth1" runat="server" 
                                                            ControlToValidate="InFacMonth1" ErrorMessage="First month of operation" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr> 
                         <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                        <tr>
                            <td colspan="2" class="style42">
                                </td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;H7</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               Facility Staffing by Discipline</td>
                            </tr> 
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Complete the table using the following definition and calculation instructions:</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <b>Definition:</b></td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <u>FTE:</u> One full time equivalent (FTE) is 2080 hours per year (40 hours per week 
                                times 52 weeks). Provide actual FTEs utilized, not the budgeted number of FTEs.</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <b>Calculation:</b></td>
                        </tr>
                        <tr>
                            <td class="style43">
                                </td>
                            <td class="style44">
                                <u>Total FTEs:</u> Divide paid hours by 2080. Include vacation, sick leave, education 
                                leave, and all other time normally compensated by the agency. Categorize your 
                                FTEs as you do for the Medicare Hospice Cost Report. Include hourly, salaried 
                                and contract staff.</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <table border="1" cellpadding="0" cellspacing="0" class="style32a">
                                    <tr>
                                        <td style="width:40%">
                                            &nbsp;</td>
                                        <td style="width:20%">Total Inpatient Facility Employee FTEs</td>
                                        <td style="width:20%">Total Inpatient Staffing Agency FTEs</td>
                                        <td style="width:20%">
                                            Total Inpatient Facility FTEs<asp:CustomValidator ID="CustomValidator8" 
                                                runat="server" ClientValidationFunction="H6Sum" 
                                                ErrorMessage="At least 1 item in question H7 must be greater than zero.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Nursing</b><br /> Include RNs and LPNs <br /><i>Do <u>not</u> include supervisors or other clinical 
                                            administrators unless a portion of their time is spent in direct care.</i></td>
                                        <td><asp:TextBox ID="EmpNursing" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursing clsEMP" 
                                            onchange="return sumInpatFacs('.clsNursing','FTENursingIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpNursing" runat="server" ControlToValidate="EmpNursing" Text="*"
                                                ErrorMessage="Nursing Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffNursing" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursing clsStf"  
                                            onchange="return sumInpatFacs('.clsNursing','FTENursingIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffNursing" runat="server" ControlToValidate="StaffNursing" Text="*"
                                                ErrorMessage="Nursing Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTENursingIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTENursingIF1');"></asp:TextBox> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Nursing Practitioner</strong><br /> Include nurses with an advanced 
                                            degree who function and are licensed as a Nurse Practitioner</td>
                                        <td><asp:TextBox ID="EmpNursingPract" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursPrac clsEMP" 
                                            onchange="return sumInpatFacs('.clsNursPrac','FTENursingPractIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpNursingPract" runat="server" ControlToValidate="EmpNursingPract" Text="*"
                                                ErrorMessage="Nursing Practitioner Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffNursingPract" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNursPrac clsStf"  
                                            onchange="return sumInpatFacs('.clsNursPrac','FTENursingPractIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffNursingPract" runat="server" ControlToValidate="StaffNursingPract" Text="*"
                                                ErrorMessage="Nursing Practitioner Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTENursingPractIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                            MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTENursingPractIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Social Services</b>
                                            <br />
                                            Include medical social services staff as defined by CMS for the cost report.
                                            <br />
                                            <i>Do <u>not</u> include chaplains or bereavement staff</i></td>
                                        <td><asp:TextBox ID="EmpSocialServ" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsSocialServ clsEMP" 
                                            onchange="return sumInpatFacs('.clsSocialServ','FTESocialIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpSocialServ" runat="server" ControlToValidate="EmpSocialServ" Text="*"
                                                ErrorMessage="Social Services Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffSocialServ" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsSocialServ clsStf"  
                                            onchange="return sumInpatFacs('.clsSocialServ','FTESocialIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffSocialServ" runat="server" ControlToValidate="StaffSocialServ" Text="*"
                                                ErrorMessage="Social Services Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTESocialIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTESocialIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Hospice Aides</b></td>
                                        <td><asp:TextBox ID="EmpHHA" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsHHA clsEMP" 
                                            onchange="return sumInpatFacs('.clsHHA','FTEHHAIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpHHA" runat="server" ControlToValidate="EmpHHA" Text="*"
                                                ErrorMessage="Hospice Aides Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffHHA" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsHHA clsStf"  
                                            onchange="return sumInpatFacs('.clsHHA','FTEHHAIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffHHA" runat="server" ControlToValidate="StaffHHA" Text="*"
                                                ErrorMessage="Hospice Aides Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTEHHAIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTEHHAIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Physicians – Paid</b><br /> Include medical directors and other physicians providing 
                                            direct care to patients and participating in clinical support. <i>Exclude volunteer 
                                            physicians</i></td>
                                        <td><asp:TextBox ID="EmpMD" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyPd clsEMP" 
                                            onchange="return sumInpatFacs('.clsPhyPd','FTEMDIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpMD" runat="server" ControlToValidate="EmpMD" Text="*"
                                                ErrorMessage="Physicians - Paid Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffMD" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyPd clsStf"  
                                            onchange="return sumInpatFacs('.clsPhyPd','FTEMDIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffMD" runat="server" ControlToValidate="StaffMD" Text="*"
                                                ErrorMessage="Physicians - Paid Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTEMDIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTEMDIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Physicians – Volunteer</b></td>
                                        <td><asp:TextBox ID="EmpMDVol" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyVol clsEMP" 
                                            onchange="return sumInpatFacs('.clsPhyVol','FTEMDVolIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpMDVol" runat="server" ControlToValidate="EmpMDVol" Text="*"
                                                ErrorMessage="Physicians – Volunteer Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffMDVol" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsPhyVol clsStf"  
                                            onchange="return sumInpatFacs('.clsPhyVol','FTEMDVolIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffMDVol" runat="server" ControlToValidate="StaffMDVol" Text="*"
                                                ErrorMessage="Physicians – Volunteer Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTEMDVolIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTEMDVolIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Chaplains</b></td>
                                        <td><asp:TextBox ID="EmpChap" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsChap clsEMP" 
                                            onchange="return sumInpatFacs('.clsChap','FTEChapIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpChap" runat="server" ControlToValidate="EmpMDVol" Text="*"
                                                ErrorMessage="Chaplains Total Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffChap" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsChap clsStf"  
                                            onchange="return sumInpatFacs('.clsChap','FTEChapIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffChap" runat="server" ControlToValidate="StaffChap" Text="*"
                                                ErrorMessage="Chaplains Total Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTEChapIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTEChapIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Other Clinical</b> <br />Include any paid staff in addition to those captured above who 
                                            provide direct care to patients or families. Include therapists, and dietitians.<br /> 
                                           <i> Do <u>not</u> include volunteers or bereavement staff.</i></td>
                                        <td><asp:TextBox ID="EmpOtherClinical" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsOClinical clsEMP" 
                                            onchange="return sumInpatFacs('.clsOClinical','FTEOtherClinicalIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpOtherClinical" runat="server" ControlToValidate="EmpOtherClinical" Text="*"
                                                ErrorMessage="Other Clinical Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffOtherClinical" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsOClinical clsStf"  
                                            onchange="return sumInpatFacs('.clsOClinical','FTEOtherClinicalIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvStaffOtherClinical" runat="server" ControlToValidate="StaffOtherClinical" Text="*"
                                                ErrorMessage="Other Clinical Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTEOtherClinicalIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTEOtherClinicalIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Non-Clinical</b> <br />Include all administrative and general staff or contracted staff.</td>
                                        <td><asp:TextBox ID="EmpNonClinical" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNonClinical clsEMP" 
                                            onchange="return sumInpatFacs('.clsNonClinical','FTENonClinicalIF1','.clsEMP','EmpTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="rfvEmpNonClinical" runat="server" ControlToValidate="EmpNonClinical" Text="*"
                                                ErrorMessage="Non-Clinical Inpatient Facility Employee FTEs is required" />
                                        </td>
                                        <td><asp:TextBox ID="StaffNonClinical" runat="server" Columns="5" onkeyup="validateDecimal(this,1);" CssClass="clsNonClinical clsStf"  
                                            onchange="return sumInpatFacs('.clsNonClinical','FTENonClinicalIF1','.clsStf','StaffTotal');" BackColor="#FFFFFF" />
                                            <asp:RequiredFieldValidator ID="efvStaffNonClinical" runat="server" ControlToValidate="StaffNonClinical" Text="*"
                                                ErrorMessage="Non-Clinical Inpatient Staffing Agency FTEs is required" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTENonClinicalIF1" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" Enabled="false" onkeyup="checknumberdec('FTENonClinicalIF1');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Total</td>
                                        <td><asp:TextBox ID="EmpTotal" runat="server" BackColor="#FFFFFF" Columns="5" MaxLength="10" Enabled="false"></asp:TextBox>
                                        </td>
                                        <td><asp:TextBox ID="StaffTotal" runat="server" BackColor="#FFFFFF" Columns="5" MaxLength="10" Enabled="false"></asp:TextBox>
                                        </td>
                                        <td><asp:TextBox ID="FTETotal" runat="server" BackColor="#FFFFFF" Columns="5" MaxLength="10" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12" align="center">
                                <asp:Label ID="Certi1" runat="server" Visible="False"></asp:Label>
                                
                               
                                                           </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><asp:Label ID="msave" runat="server" Text="Saved Successfully" Visible="False" CssClass="btnblue"></asp:Label></td>
                         </tr>
                    </table></asp:Panel>
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
    
</ContentTemplate>
    </asp:UpdatePanel>
    <asp:ValidationSummary ID="vsummary" runat="server" 
                         HeaderText="Please complete the following questions:" ShowMessageBox="True" 
                         ShowSummary="False" />  
             
    </form>
</body>
</html>
