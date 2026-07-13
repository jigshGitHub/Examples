<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionF.aspx.vb" Inherits="SectionF" Debug="true"%>

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
            alert("Only enter a positive whole number value!");
        }

    }
    function allowDecimals(fld) {

        var sText = document.getElementById(fld).value;
        if (IsDecimalPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a numeric or a decimal value!");
        }

    }
    function DisableEnter() {
        if (window.event.keyCode == 13) {
            event.returnValue = false;
            event.cancel = true;
        }
    }
    function isSignedInteger(s) {
        if (isEmpty(s))
            if (isSignedInteger.arguments.length == 1) return false;
            else return (isSignedInteger.arguments[1] == true);

        else {
            var startPos = 0;
            var secondArg = false;

            if (isSignedInteger.arguments.length > 1)
                secondArg = isSignedInteger.arguments[1];

            // skip leading + or -
            if ((s.charAt(0) == "-") || (s.charAt(0) == "+"))
                startPos = 1;
            return (isInteger(s.substring(startPos, s.length), secondArg))
        }
    }

    function IsNumeric(sText) {
        var ValidChars = "0123456789-";
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
    function IsDecimalPos(sText) {
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
    
    //---Sum row for totals
//    function SumClinFTEs(source, arguments) {
//        
//        var mySum = 0;
//        var value1 = parseFloat(document.getElementById("FTEDirNursing").value);
//        var value2 = parseFloat(document.getElementById("FTESocial").value);
//        var value3 = parseFloat(document.getElementById("FTEHHA").value);
//        var value4 = parseFloat(document.getElementById("FTEMD").value);
//        var value5 = parseFloat(document.getElementById("FTEChap").value);
//        var value6 = parseFloat(document.getElementById("FTEMDVol").value);
//        var value7 = parseFloat(document.getElementById("FTEOtherClinical").value);
//        var value8 = parseFloat(document.getElementById("FTEClinical").value);
//       
//        if (value1 > 0) {
//            mySum = mySum + value1
//        }

//        if (value2 > 0) {
//            mySum = mySum + value2
//        }
//        if (value3 > 0) {
//            mySum = mySum + value3
//        }
//        if (value4 > 0) {
//            mySum = mySum + value4
//        }
//        if (value5 > 0) {
//            mySum = mySum + value5
//        }
//        if (value6 > 0) {
//            mySum = mySum + value6
//        }
//        if (value7 > 0) {
//            mySum = mySum + value7
//        }

//        if (value8 >= 0) {
//                   
//                arguments.IsValid = (mySum == value8);
//          
//        }
//        }
//        function SumClinTotEmploy(source, arguments) {

//            var mySum = 0;
//            var value1 = parseInt(document.getElementById("TotEmployDirNursing").value);
//            var value2 = parseInt(document.getElementById("TotEmploySocial").value);
//            var value3 = parseInt(document.getElementById("TotEmployHHA").value);
//            var value4 = parseInt(document.getElementById("TotEmployMD").value);
//            var value5 = parseInt(document.getElementById("TotEmployChap").value);
//            var value6 = parseInt(document.getElementById("TotEmployMDVol").value);
//            var value7 = parseInt(document.getElementById("TotEmployOtherClinical").value);
//            var value8 = parseInt(document.getElementById("TotEmployClinical").value);

//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }
//            if (value5 > 0) {
//                mySum = mySum + value5
//            }
//            if (value6 > 0) {
//                mySum = mySum + value6
//            }
//            if (value7 > 0) {
//                mySum = mySum + value7
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value8);

//            }
//        }
//        function SumClinTotPRN(source, arguments) {

//            var mySum = 0;
//            var value1 = parseInt(document.getElementById("TotPRNDirNursing").value);
//            var value2 = parseInt(document.getElementById("TotPRNSocial").value);
//            var value3 = parseInt(document.getElementById("TotPRNHHA").value);
//            var value4 = parseInt(document.getElementById("TotPRNMD").value);
//            var value5 = parseInt(document.getElementById("TotPRNChap").value);
//            var value6 = parseInt(document.getElementById("TotPRNMDVol").value);
//            var value7 = parseInt(document.getElementById("TotPRNOtherClinical").value);
//            var value8 = parseInt(document.getElementById("TotPRNClinical").value);

//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }
//            if (value5 > 0) {
//                mySum = mySum + value5
//            }
//            if (value6 > 0) {
//                mySum = mySum + value6
//            }
//            if (value7 > 0) {
//                mySum = mySum + value7
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value8);

//            }
//        }
//        function SumClinTotSep(source, arguments) {

//            var mySum = 0;
//            var value1 = parseInt(document.getElementById("TotSepDirNursing").value);
//            var value2 = parseInt(document.getElementById("TotSepSocial").value);
//            var value3 = parseInt(document.getElementById("TotSepHHA").value);
//            var value4 = parseInt(document.getElementById("TotSepMD").value);
//            var value5 = parseInt(document.getElementById("TotSepChap").value);
//            var value6 = parseInt(document.getElementById("TotSepMDVol").value);
//            var value7 = parseInt(document.getElementById("TotSepOtherClinical").value);
//            var value8 = parseInt(document.getElementById("TotSepClinical").value);

//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }
//            if (value5 > 0) {
//                mySum = mySum + value5
//            }
//            if (value6 > 0) {
//                mySum = mySum + value6
//            }
//            if (value7 > 0) {
//                mySum = mySum + value7
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value8);

//            }
//        }
//        function SumTotFTEs(source, arguments) {

//            var mySum = 0;
//            var value1 = parseFloat(document.getElementById("FTEClinical").value);
//            var value2 = parseFloat(document.getElementById("FTENonClinical").value);
//            var value3 = parseFloat(document.getElementById("FTEBereavement").value);
//            var value4 = parseFloat(document.getElementById("FTEIndNursing").value);
//            var value5 = parseFloat(document.getElementById("FTETotal").value);
//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value5);

//            }
//        }
//        function SumTotTotEmploy(source, arguments) {

//            var mySum = 0;
//            var value1 = parseInt(document.getElementById("TotEmployClinical").value);
//            var value2 = parseInt(document.getElementById("TotEmployNonClinical").value);
//            var value3 = parseInt(document.getElementById("TotEmployBereavement").value);
//            var value4 = parseInt(document.getElementById("TotEmployIndNursing").value);
//            var value5 = parseInt(document.getElementById("TotEmployTotal").value);
//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value5);

//            }
//        }
//        function SumTotTotPRN(source, arguments) {

//            var mySum = 0;
//            var value1 = parseInt(document.getElementById("TotPRNClinical").value);
//            var value2 = parseInt(document.getElementById("TotPRNNonClinical").value);
//            var value3 = parseInt(document.getElementById("TotPRNBereavement").value);
//            var value4 = parseInt(document.getElementById("TotPRNIndNursing").value);
//            var value5 = parseInt(document.getElementById("TotPRNTotal").value);
//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value5);

//            }
//        }
//        function SumTotTotSep(source, arguments) {

//            var mySum = 0;
//            var value1 = parseInt(document.getElementById("TotSepClinical").value);
//            var value2 = parseInt(document.getElementById("TotSepNonClinical").value);
//            var value3 = parseInt(document.getElementById("TotSepBereavement").value);
//            var value4 = parseInt(document.getElementById("TotSepIndNursing").value);
//            var value5 = parseInt(document.getElementById("TotSepTotal").value);
//            if (value1 > 0) {
//                mySum = mySum + value1
//            }

//            if (value2 > 0) {
//                mySum = mySum + value2
//            }
//            if (value3 > 0) {
//                mySum = mySum + value3
//            }
//            if (value4 > 0) {
//                mySum = mySum + value4
//            }

//            if (mySum > 0) {

//                arguments.IsValid = (mySum == value5);

//            }
//        }
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
        .style10b
        {
            width: 10%;
            font-weight: bold;
        }
        .style17
        {
            width: 710px;
        }
        .style18
        {
            color: white;
        }

        .style23 {color: #FFFFFF}
        .style24
        {
            color: #FFFF00;
        }
        .style25
        {
            height: 23px;
        }
         .style31
        {
            text-align: left;
            width: 626px;
        }
         
     
         
        .style35
        {
            width: 95px;
        }
        .style36
        {
            width: 65px;
            font-weight: bold;
            height: 19px;
        }
        .style37
        {
            height: 19px;
            font-weight: bold;
        }
         
     
         
        </style>
</head>
<body  onkeypress="DisableEnter()">
    <form id="form1" runat="server">
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
    <asp:Button ID="printbtn" runat="server" CssClass="btn3" Text="PRINT THIS PAGE" CausesValidation="False"/></a></td>
                </tr>
            </table>
          </td>
      </tr>
            <tr>
                <td class="style17">
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="2" align="center">
                                <b style="text-align: center">SECTION F - PRODUCTIVITY AND COST OF CARE</td>
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
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                               Please complete the following for FY <asp:Label ID="SY1" runat="server"></asp:Label>. <b>(Note: Section F1 must be completed by both general and limited license hospices)</b></td>
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
                                Complete Tables F1a. and F1b. using the following definitions and calculation instructions:</td>
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
                                <B>Definitions</B></td>
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
                                <U>Direct Care:</U> Includes all activities involved in care delivery, including visits, telephone calls, charting, team meetings, travel for patient care, and arrangement or coordination of care. When a supervisor provides direct care, estimate the time involved in direct care, as distinct from supervision of other staff or program activities.</td>
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
                               <U>PRN Employees:</U> also called “per diem” employees, are called upon to work when necessary without a commitment to work a specific number of hours for your agency. They may be available all of the time or they may be only available for certain days or times. However, they are not the same as part-time employees, even though they may routinely work on the same day or number of hours each week. A part-time employee is expected to work a certain number of hours each week, but there is no expectation for number of hours for a PRN employee.</td>
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
                                <U>Separation:</U> a voluntary or involuntary termination of employment.</td>
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
                               <u>FTE:</u>  One full time equivalent (FTE) is 2080 hours per year (40 hours per week 
                                times 52 weeks). Provide actual FTEs utilized, not the budgeted number of FTEs.</td>
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
                                <B>Calculations</B></td>
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
                                <U>Total FTEs:</U> Divide paid hours by 2080. Include vacation, sick leave, education 
                                leave, and all other time normally compensated by the agency. Categorize your 
                                FTEs as you do for the Medicare Hospice Cost Report. Include hourly, salaried, 
                                and contract staff. Include On-Call in direct clinical nursing.</td>
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
                                <U>Separations:</U> Do not include PRN employees in the calculation of total 
                                separations.</td>
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
                                <B>Note:</B> Do not include inpatient staff when completing Section F, with the 
                                exception of Question F4. Data for inpatient staff should be entered in Section 
                                H.</td>
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
                                &nbsp;F1a.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               STAFFING BY DISCIPLINE (Do <u>not</u> include inpatient staff)</td>
                            </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <td width="200px" valign="top" class="style37">
                                            &nbsp;</td>
                                        <td valign="top" class="style36">
                                            Total Home Hospice Employee FTEs</td>
                                        <td valign="top" class="style36">Total Staffing Agency FTEs</td>
                                        <td valign="top" class="style37">
                                            Total Employees Including Staffing Agency Support Staff (No PRN) on last day of FY<asp:Label ID="SY2" runat="server"></asp:Label></td>
                                        <td valign="top" class="style37">
                                            Total PRN Employees</td>
                                        <td class="style37" valign="top">
                                            Total Separations (all causes)</td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Nursing – Direct Clinical</b> <br />Include RNs and LPNs. Include on-call and after hours 
                                            care. Do not include supervisors or other clinical administrators unless a 
                                            portion of their time is spent in direct care.<br /></td>
                                        <td class="style35">
                                             <asp:TextBox ID="FTEDirNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td class="style35">
                                             <asp:TextBox ID="TotStaffingDirNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="TotEmployDirNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployDirNursing');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotPRNDirNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNDirNursing');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotSepDirNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepDirNursing');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Nursing – Indirect Clinical</b><br /> Include intake staff, educators, quality 
                                            improvement, managers, and liaison nurses with clinical background, but who do 
                                            not provide direct care.</td>
                                        <td class="style35">
                                             <asp:TextBox ID="FTEIndNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td class="style35">
                                             <asp:TextBox ID="TotStaffingIndNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="TotEmployIndNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployIndNursing');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotPRNIndNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNIndNursing');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotSepIndNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepIndNursing');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <strong>Nurse Practitioner</strong><br /> Include nurses with an advanced degree 
                                            who function and are licensed as a Nurse Practitioner.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEPractNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                            MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="TotStaffingPractNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                            MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotEmployPractNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotEmployPractNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNPractNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                            MaxLength="10" onkeyup="allowonlynumbers('TotPRNPractNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepPractNursing" runat="server" BackColor="#FFFFFF" Columns="5" 
                                            MaxLength="10" onkeyup="allowonlynumbers('TotSepPractNursing');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Social Services</b><br /> Include medical social services staff as defined by 
                                            CMS for the cost report. <i>Do <u>not</u> include chaplains or bereavement 
                                            staff.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTESocial" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="TotStaffingSocial" runat="server" BackColor="#FFFFFF" Columns="5" 
                                            MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotEmploySocial" runat="server" BackColor="#FFFFFF" 
                                                Columns="5" MaxLength="10" onkeyup="allowonlynumbers('TotEmploySocial');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNSocial" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNSocial');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepSocial" runat="server" BackColor="#FFFFFF" Columns="5" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepSocial');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Hospice Aides</b> <br />Include both aides and homemakers</td>
                                        <td class="style35">
                                           <asp:TextBox ID="FTEHHA" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td class="style35">
                                           <asp:TextBox ID="TotStaffingHHA" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployHHA" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployHHA');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotPRNHHA" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNHHA');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotSepHHA" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepHHA');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Physicians – Paid</b><br /> Include medical directors and other physicians providing 
                                            direct care to patients and participating in clinical support. <br /><i>Exclude volunteer 
                                            physicians.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEMD" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="TotStaffingMD" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="TotEmployMD" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployMD');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotPRNMD" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNMD');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotSepMD" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepMD');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Physicians – Volunteer</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEMDVol" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingMDVol" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployMDVol" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployMDVol');"></asp:TextBox></td>
                                       <td>
                                             <asp:TextBox ID="TotPRNMDVol" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNMDVol');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotSepMDVol" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepMDVol');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <b> Chaplains</b></td>
                                        <td class="style35">
                                           <asp:TextBox ID="FTEChap" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotStaffingChap" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotEmployChap" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployChap');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotPRNChap" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNChap');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotSepChap" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepChap');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                           <b> Other Clinical</b> <br />Include any paid staff in addition to those captured above who 
                                            provide direct care to patients or families. Include therapists, and dietitians. 
                                           <br /><i> Do not include volunteers.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEOtherClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                            <td>
                                           <asp:TextBox ID="TotStaffingOtherClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotEmployOtherClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployOtherClinical');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotPRNOtherClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNOtherClinical');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotSepOtherClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepOtherClinical');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Bereavement</b> <br />Include all paid staff providing bereavement services, including 
                                            pre-death grief support. Do not include volunteers.</td>
                                        <td class="style35">
                                           <asp:TextBox ID="FTEBereavement" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingBereavement" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployBereavement" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployBereavement');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotPRNBereavement" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNBereavement');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotSepBereavement" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepBereavement');"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                          <tr>
                              <td colspan="2">
                                  &nbsp;</td>
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
                                &nbsp;F1b.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               GENERAL STAFFING (Do <u>not</u> include Inpatient Staff Time)</td>
                            </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <td width="300px">
                                            <b></b></td>
                                        <td>
                                            <b>Total Home Hospice Employee FTEs</b></td>
                                        <td>
                                            <b>Total Staffing Agency FTEs</b></td>
                                        <td>
                                            <b>Total Employees including Staffing Agency Support Staff (No PRN) on last day of FY
                                            <asp:Label ID="SY3" runat="server"></asp:Label></b></td>
                                        <td width="70px">
                                            <b>Total PRN Employees</b></td>
                                        <td width="70px">
                                            <b>Total Separations (all causes)</b></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                           <b> Clinical</b> <br />Includes all direct care time.* This is the total of Direct Nursing, 
                                            Social Services, Hospice Aides, Physicians, Chaplains, and Other Clinical.<br /> <i>Do not include 
                                            bereavement services</i></td>
                                        <td>
                                           <asp:TextBox ID="FTEClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator2" runat="server" 
                         ClientValidationFunction="SumClinFTEs" ErrorMessage="Please be sure that the sum of Nursing (Direct only) + Social Services + Hospice Aides + MD + Chaplains + Other Clinical equals the value entered for Clinical, in all columns.">*</asp:CustomValidator>--%></td>
                                        <td>
                                           <asp:TextBox ID="TotStaffingClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox><br /><td>
                                            <asp:TextBox ID="TotEmployClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployClinical');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator1" runat="server" 
                         ClientValidationFunction="SumClinTotEmploy" ErrorMessage="Please be sure that the sum of Nursing (Direct only) + Social Services + Hospice Aides + MD + Chaplains + Other Clinical equals the value entered for Clinical, in all columns.">*</asp:CustomValidator>--%></td>
                                        <td>
                                           <asp:TextBox ID="TotPRNClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNClinical');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator3" runat="server" 
                         ClientValidationFunction="SumClinTotPRN" ErrorMessage="Please be sure that the sum of Nursing (Direct only) + Social Services + Hospice Aides + MD + Chaplains + Other Clinical equals the value entered for Clinical, in all columns.">*</asp:CustomValidator>--%></td>
                                        <td>
                                            <asp:TextBox ID="TotSepClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepClinical');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator4" runat="server" 
                         ClientValidationFunction="SumClinTotSep" ErrorMessage="Please be sure that the sum of Nursing (Direct only) + Social Services + Hospice Aides + MD + Chaplains + Other Clinical equals the value entered for Clinical, in all columns.">*</asp:CustomValidator>--%></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Non-Clinical</b><br /> Include all administrative and general staff or contracted staff.<br /> <i>Indirect Nursing is NOT entered here.
                                            </i></td>
                                        <td>
                                           <asp:TextBox ID="FTENonClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotStaffingNonClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);;"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployNonClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployNonClinical');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="TotPRNNonClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNNonClinical');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotSepNonClinical" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepNonClinical');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Total</b> <br />Include all staff time. <i>This is the total of Clinical plus Non-Clinical 
                                            plus Indirect Nursing plus Bereavement.</i></td>
                                        <td>
                                            <asp:TextBox ID="FTETotal" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator5" runat="server" 
                         ClientValidationFunction="SumTotFTEs" ErrorMessage="Please be sure that the sum of Clinical + Non-Clinical + Indirect Nursing + Bereavement equals the value entered for Total, in all columns.">*</asp:CustomValidator>--%></td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingTotal" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox><br /><td>
                                        <asp:TextBox ID="TotEmployTotal" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotEmployTotal');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator6" runat="server" 
                         ClientValidationFunction="SumTotTotEmploy" ErrorMessage="Please be sure that the sum of Clinical + Non-Clinical + Indirect Nursing + Bereavement equals the value entered for Total, in all columns.">*</asp:CustomValidator>--%></td>
                                        <td>
                                           <asp:TextBox ID="TotPRNTotal" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotPRNTotal');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator7" runat="server" 
                         ClientValidationFunction="SumTotTotPRN" ErrorMessage="Please be sure that the sum of Clinical + Non-Clinical + Indirect Nursing + Bereavement equals the value entered for Total, in all columns.">*</asp:CustomValidator>--%></td>
                                        <td>
                                           <asp:TextBox ID="TotSepTotal" runat="server" BackColor="#FFFFFF" Columns="5" 
                                    MaxLength="10" onkeyup="allowonlynumbers('TotSepTotal');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator8" runat="server" 
                         ClientValidationFunction="SumTotTotSep" ErrorMessage="Please be sure that the sum of Clinical + Non-Clinical + Indirect Nursing + Bereavement equals the value entered for Total, in all columns.">*</asp:CustomValidator>--%></td>
                                    </tr>
                                </table>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                               *Direct care includes all activities involved in care delivery, including visits, telephone calls, charting, team meetings, travel necessary for patient care, and arrangement or coordination of care. When a supervisor provides direct care, estimate the time involved in direct care, as distinct from supervision of other staff or program direction activities
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
                            <td class="style10b" bgcolor="#CCCCCC" valign="top">
                                &nbsp;F1b-1.</td>
                            <td class="style10b" bgcolor="#CCCCCC">
                               STAFFING AND SUPERVISION</td>
                            </tr>
                        <tr>
                            <td colspan="2">        
                            </td>
                        </tr>
                        
                        <tr>
                            <td>&nbsp;</td>
                            <td>Provide information about the Supervising Officers:
                                Please report if any of the supervision officers are organization employees or Contract employees for Fiscal Year 2024 and 2025? Select from the drop-down menu.
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">        
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <td style="width:40%"></td>
                                        <th style="width:30%">FY<%=PreviousYear %></th>
                                        <th>FY<%=CurrentYear %></th>
                                    </tr>
                                    <tr>
                                        <td>Medical Director</td>
                                        <td><asp:DropDownList ID="dlstMedDirectorPY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvMedDirectorPY" ControlToValidate="dlstMedDirectorPY"
                                            runat="server" Text="*" />
                                        </td>
                                        <td><asp:DropDownList ID="dLstMedDirectorCY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvMedDirectorCY" ControlToValidate="dLstMedDirectorCY"
                                            runat="server" Text="*" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Administrator</td>
                                        <td><asp:DropDownList ID="dLstAdminPY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvAdminPY" ControlToValidate="dLstAdminPY"
                                            runat="server" Text="*" />
                                        </td>
                                        <td><asp:DropDownList ID="dLstAdminCY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvAdminCY" ControlToValidate="dLstAdminCY"
                                            runat="server" Text="*" />
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
                                <asp:Label ID="msave" runat="server" Text="Saved Successfully" Visible="False" CssClass="btnblue"></asp:Label>
                                                           <asp:Label ID="merror" runat="server" Text="Please correct all errors" Visible="False" CssClass="btnred"></asp:Label></td>
                        </tr>
                                                  
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#666666" style="text-align: center" class="style17">
                                <table align="center" cellpadding="3" cellspacing="0" class="style9">
                                  <tr>
                                        <td class="style10">
                                            <asp:Button ID="btnBack" OnClientClick="return confirm('Reminder -   No changes to this section are saved unless you validate. ');"   runat="server" CssClass="btn1" Text="Menu" 
                                                CausesValidation="False" 
                                                ToolTip="Return to Menu." />
                                        </td>
                                        <td class="style10">
                                            <asp:Button ID="btnMenu" runat="server" CssClass="btn2" Text="Validate & Save" CausesValidation="True" 
                                                ToolTip="Validate and Saves your answers." />
                                        </td>
                                        <td class="style10">
                                            <asp:Button ID="btnNext" OnClientClick="return confirm('Reminder -   No changes to this section are saved unless you validate. ');"   runat="server" CssClass="btn3" CausesValidation="False" 
                                                Text="NEXT SECTION &gt;" 
                                                ToolTip="Go To Next Section." />
                                             
                                        </td>
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
