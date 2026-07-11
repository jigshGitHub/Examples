<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionE.aspx.vb" Inherits="SectionE" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MARYLAND HOSPICE SURVEY</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/Survey.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

    //-- allow textbox to accept numbers only

    function allowonlynumbers() {

        if (event.keyCode >= 48 && event.keyCode <= 57) {

            return true;
        }

        else {

            //alert('Only numbers can be entered.'); 
            return false;
        }

    }
    function DisableEnter() {
        if (window.event.keyCode == 13) {
            event.returnValue = false;
            event.cancel = true;
        }
    }
    //--check for number of volunteers
    function CheckVol1(source, arguments) {

        var value1 = parseInt(document.getElementById("VolDirectHours").value);
        var value2 = parseInt(document.getElementById("VolDirectNum").value);

        if (value1 > 0) {

            arguments.IsValid = (value2 > 0);

        }
    }
    function CheckVisit1(source, arguments) {

        var value1 = parseInt(document.getElementById("VolDirectVisits").value);
        var value2 = parseInt(document.getElementById("VolDirectNum").value);

        if (value1 > 0) {

            arguments.IsValid = (value2 > 0);

        }
    }
    function CheckVol2(source, arguments) {

        var value1 = parseInt(document.getElementById("VolPCSupHours").value);
        var value2 = parseInt(document.getElementById("VolPCSupNum").value);

        if (value1 > 0) {

            arguments.IsValid = (value2 > 0);

        }
    }
    function CheckVol3(source, arguments) {

        var value1 = parseInt(document.getElementById("VolGenSupHours").value);
        var value2 = parseInt(document.getElementById("VolGenSupNum").value);

        if (value1 > 0) {

            arguments.IsValid = (value2 > 0);

        }
    }
    function CheckVol4(source, arguments) {

        var value1 = parseInt(document.getElementById("VolAllHours").value);
        var value2 = parseInt(document.getElementById("VolAllNum").value);

        if (value1 > 0) {

            arguments.IsValid = (value2 > 0);

        }
    }
    function CheckVisit2(source, arguments) {

        var value1 = parseInt(document.getElementById("VolAllVisits").value);
        var value2 = parseInt(document.getElementById("VolAllNum").value);

        if (value1 > 0) {

            arguments.IsValid = (value2 > 0);

        }
    }
    function CheckVol5(source, arguments) {

        var value1 = parseInt(document.getElementById("VolAllHours").value);
        var value2 = parseInt(document.getElementById("VolAllNum").value);

        if (value2 > 0) {

            arguments.IsValid = (value1 > 0);

        }
    }
    function CheckVisit3(source, arguments) {

        var value1 = parseInt(document.getElementById("VolAllVisits").value);
        var value2 = parseInt(document.getElementById("VolAllNum").value);

        if (value2 > 0) {

            arguments.IsValid = (value1 > 0);

        }
    }
    function CheckVol6(source, arguments) {

        var value1 = parseInt(document.getElementById("VolDirectHours").value);
        var value2 = parseInt(document.getElementById("VolDirectNum").value);

        if (value2 > 0) {

            arguments.IsValid = (value1 > 0);

        }
    }
    function CheckVisit4(source, arguments) {

        var value1 = parseInt(document.getElementById("VolDirectVisits").value);
        var value2 = parseInt(document.getElementById("VolDirectNum").value);

        if (value2 > 0) {

            arguments.IsValid = (value1 > 0);

        }
    }
    function CheckVol7(source, arguments) {

        var value1 = parseInt(document.getElementById("VolPCSupHours").value);
        var value2 = parseInt(document.getElementById("VolPCSupNum").value);

        if (value2 > 0) {

            arguments.IsValid = (value1 > 0);

        }
    }
    function CheckVol8(source, arguments) {

        var value1 = parseInt(document.getElementById("VolGenSupHours").value);
        var value2 = parseInt(document.getElementById("VolGenSupNum").value);

        if (value2 > 0) {

            arguments.IsValid = (value1 > 0);

        }
    }
    function ValidationCheck(source, arguments) {

        var value1 = parseInt(document.getElementById("BerContFam").value);
        var value2 = parseInt(document.getElementById("BerPhonFam").value);
        var Value3 = parseInt(document.getElementById("BerServIndFam").value);
       
              
        if (value1 > 0) {

            arguments.IsValid = (Value3 > 0);

        }
        if (value2 > 0) {

            arguments.IsValid = (Value3 > 0);

        }
    }
    function ValidationCheck2(source, arguments) {

        var value1 = parseInt(document.getElementById("BerContComm").value);
        var value2 = parseInt(document.getElementById("BerPhonComm").value);
        var Value3 = parseInt(document.getElementById("BerServIndComm").value);


        if (value1 > 0) {

            arguments.IsValid = (Value3 > 0);

        }
        if (value2 > 0) {

            arguments.IsValid = (Value3 > 0);

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
    //---Sum row for totals
    function SumVolNum(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("VolDirectNum").value);
        var value2 = parseInt(document.getElementById("VolPCSupNum").value);
        var value3 = parseInt(document.getElementById("VolGenSupNum").value);
      
        if (value1 > 0) {
            mySum = mySum + value1
        }
        if (value2 > 0) {
            mySum = mySum + value2
        }
        if (value3 > 0) {
            mySum = mySum + value3
        }

        document.getElementById("VolAllNum").value = mySum
    }
    function SumVolHours(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("VolDirectHours").value);
        var value2 = parseInt(document.getElementById("VolPCSupHours").value);
        var value3 = parseInt(document.getElementById("VolGenSupHours").value);

        if (value1 > 0) {
            mySum = mySum + value1
        }
        if (value2 > 0) {
            mySum = mySum + value2
        }
        if (value3 > 0) {
            mySum = mySum + value3
        }

        document.getElementById("VolAllHours").value = mySum
    }
    function SumVisits(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("VolDirectVisits").value);
       
        if (value1 > 0) {
            mySum = mySum + value1
        }

        document.getElementById("VolAllVisits").value = mySum
    }
    function SumCont(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("BerContFam").value);
        var value2 = parseInt(document.getElementById("BerContComm").value);
              
        if (value1 > 0) {
            mySum = mySum + value1
        }
        if (value2 > 0) {
            mySum = mySum + value2
        }

        document.getElementById("BerContTotal").value = mySum
    }
    function SumPhon(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("BerPhonFam").value);
        var value2 = parseInt(document.getElementById("BerPhonComm").value);
       
        
        if (value1 > 0) {
            mySum = mySum + value1
        }
        if (value2 > 0) {
            mySum = mySum + value2
        }

        document.getElementById("BerPhonTotal").value = mySum
    }
    function SumMail(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("BerMailFam").value);
        var value2 = parseInt(document.getElementById("BerMailComm").value);
      

        if (value1 > 0) {
            mySum = mySum + value1
        }
        if (value2 > 0) {
            mySum = mySum + value2
        }

        document.getElementById("BerMailTotal").value = mySum
    }
    function SumServInd(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("BerServIndFam").value);
        var value2 = parseInt(document.getElementById("BerServIndComm").value);
    

        if (value1 > 0) {
            mySum = mySum + value1
        }
        if (value2 > 0) {
            mySum = mySum + value2
        }

        document.getElementById("BerServIndTotal").value = mySum
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
        function sumOCSNumPY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsOCSNumPY');
            document.getElementById("txtTotalOnCallStaffPY").value = sumInputs(inputs);
        }
        function sumOCSHrsPY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsOCSHrsPY');
            document.getElementById("txtTotalOnCallStaffHrsPY").value = sumInputs(inputs);
        }
        function sumOCSNumCY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsOCSNumCY');
            document.getElementById("txtTotalOnCallStaffCY").value = sumInputs(inputs);
        }
        function sumOCSHrsCY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsOCSHrsCY');
            document.getElementById("txtTotalOnCallStaffHrsCY").value = sumInputs(inputs);
        }
        function sumSvcsPY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsSvcsPY');
            document.getElementById("txtTotalOtherSevPY").value = sumInputs(inputs);
        }
        function sumSvcsCY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsSvcsCY');
            document.getElementById("txtTotalOtherSevCY").value = sumInputs(inputs);
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
            width: 65px;
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
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="2" align="center">
                                <b style="text-align: center">SECTION E - PROCESSES OF CARE</td>
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
                                &nbsp;E1.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                              VOLUNTEERS</td>
                            </tr>
                            <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                               Please provide the following information for FY<asp:Label ID="SY1" runat="server"></asp:Label>.</td>
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
                                The number of volunteers should be an unduplicated count, with no individuals 
                                included in more than one category, even if they engage in more than one type of 
                                volunteer service.</td>
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
                                Sometimes volunteers participate in multiple types of activities, such as 
                                spending time with patients and assisting with fundraising mailings. If any of 
                                the activities performed by a volunteer involve direct contact with patients or 
                                families, the volunteer should be counted in the direct care category for the 
                                purposes of the survey, regardless of the proportion of time spend providing 
                                direct care.</td>
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
                               <u>Volunteer Hours:</u>  For those volunteers, who contributed hours in more than one 
                                volunteer service category, provide the number of hours for each category.</td>
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
                                Do <u>not</u> include volunteer medical director hours when entering responses in this 
                                section. Medical director’s volunteer hours should be entered in Section F: 
                                Productivity and Cost of Care. The table for Question F1 includes a category 
                                specifically for volunteer physicians.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <td width="400px" valign="top" class="style37">
                                            <b>Volunteers</b></td>
                                        <td valign="top" class="style36">
                                            Number</td>
                                        <td valign="top" class="style37">
                                            <b>Hours</b></td>
                                        <td valign="top" class="style37">
                                            <b>Visits</b></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Direct Patient Care Volunteers*</b><br />Direct patient care volunteers are defined 
                                            as volunteers who spend time with patients and families</td>
                                        <td class="style35">
                                             <asp:TextBox ID="VolDirectNum" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVolNum('VolDirectNum');"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator9" runat="server" 
                         ClientValidationFunction="CheckVol6" ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator>
                         <asp:CustomValidator ID="CustomValidator10" runat="server" 
                         ClientValidationFunction="CheckVisit4" ErrorMessage="For All Hospice Volunteers and Direct Patient Care Volunteers in section E1, if you have provided a number of volunteers, please also provide the number of visits.">*</asp:CustomValidator></td>
                                        <td>
                                             <asp:TextBox ID="VolDirectHours" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVolHours('VolDirectHours');"></asp:TextBox><br /> <asp:CustomValidator ID="CustomValidator2" runat="server" 
                         ClientValidationFunction="CheckVol1" ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator></td>
                                        <td>
                                            <asp:TextBox ID="VolDirectVisits" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVisits('VolDirectVisits');"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator1" runat="server" 
                         ClientValidationFunction="CheckVisit1" ErrorMessage="For every row in section E1, if you have provided number of visits, please provide the number of volunteers.">*</asp:CustomValidator></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Clinical Support Volunteers</b> <br />Clinical support volunteers are defined as 
                                            volunteers who provide services, such as clerical duties, answering phones, or 
                                            organizing supplies, that support patient care and clinical services<br /> <b>Note:</b> 
                                            Direct Patient Care Volunteer hours and Clinical Support Volunteer hours 
                                            combined meet the Medicare Condition of Participation (COP) requirement for 
                                            volunteer time equal to 5% of patient care hours</td>
                                        <td class="style35">
                                             <asp:TextBox ID="VolPCSupNum" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVolNum('VolPCSupNum');"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator11" runat="server" 
                         ClientValidationFunction="CheckVol7" ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator></td>
                                        <td>
                                             <asp:TextBox ID="VolPCSupHours" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVolHours('VolPCSupHours');"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator3" runat="server" 
                         ClientValidationFunction="CheckVol2" ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator></td>
                                        <td>
                                            NA</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>General Support Volunteers</b> <br />General support volunteers provide services, such as 
                                            help with fundraising and serving as members of the board of directors, which 
                                            make an overall contribution to the hospice. <br /><i>General Support Volunteer hours do 
                                            not contribute to the 5% Medicare requirement</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VolGenSupNum" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVolNum('VolGenSupNum');"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator12" runat="server" 
                         ClientValidationFunction="CheckVol8" ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator></td>
                                        <td>
                                             <asp:TextBox ID="VolGenSupHours" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumVolHours('VolGenSupHours');"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator4" runat="server" 
                         ClientValidationFunction="CheckVol3" ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator></td>
                                        <td>
                                             NA</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>All Hospice Volunteers*</b> <br />This includes all volunteers, including those not 
                                            allowed under the Medicare Conditions of Participation (General Support 
                                            Volunteers) above.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="VolAllNum" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox><br /> <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please provide all hospice volunteers" Text="*" ControlToValidate="VolAllNum" Type="Integer" ValueToCompare="0" Operator="GreaterThan"></asp:CompareValidator>
                                    <asp:CustomValidator ID="CustomValidator7" runat="server" 
                         ClientValidationFunction="CheckVol5" ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator></td>
                                        <td>
                                            <asp:TextBox ID="VolAllHours" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator5" runat="server" 
                         ClientValidationFunction="CheckVol4" ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator></td>
                                        <td>
                                             <asp:TextBox ID="VolAllVisits" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox><br /><asp:CustomValidator ID="CustomValidator6" runat="server" 
                         ClientValidationFunction="CheckVisit2" ErrorMessage="For every row in section E1, if you have provided number of visits, please provide the number of volunteers.">*</asp:CustomValidator>
                         <asp:CustomValidator ID="CustomValidator8" runat="server" 
                         ClientValidationFunction="CheckVisit3" ErrorMessage="For All Hospice Volunteers and Direct Patient Care Volunteers in section E1, if you have provided a number of volunteers, please also provide the number of visits.">*</asp:CustomValidator>
                         </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                *Direct Patient Care, Clinical Support, and General Support are separate categories of volunteers. The number and hours in the three categories should total to All Hospice Volunteers.
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
                                &nbsp;E2.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               BEREAVEMENT SERVICES</td>
                            </tr>
                            <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                              Please provide the following information for FY<asp:Label ID="SY2" runat="server"
                                    ></asp:Label>.</td>
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
                                Information entered under Community Members should include bereavement services 
                                provided to individuals in the community who were NOT associated with a family 
                                member or friend admitted to hospice.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <td width="200px">
                                            &nbsp;</td>
                                        <td>
                                            Hospice Family Members</td>
                                        <td>
                                            Community Members</td>
                                        <td width="70px">
                                            Total</td>
                                    </tr>
                                    <tr>
                                        <td width="400px">
                                            <b>a. Total Number of Contacts by Visit</b><br /> Include any face-to-face one-to-one contact 
                                            with individuals, regardless of setting. <br /><i>Do NOT include support group or camp 
                                            services.</i></td>
                                        <td>
                                           <asp:TextBox ID="BerContFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCont('BerContFam');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="BerContComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCont('BerContComm');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="BerContTotal" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                           <b> b. Total Number of Contacts by Phone Call</b></td>
                                        <td>
                                           <asp:TextBox ID="BerPhonFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumPhon('BerPhonFam');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="BerPhonComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumPhon('BerPhonComm');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="BerPhonTotal" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>c. Total Number of Mailings to the Bereaved</b></td>
                                        <td>
                                            <asp:TextBox ID="BerMailFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumMail('BerMailFam');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="BerMailComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumMail('BerMailComm');"></asp:TextBox></td>
                                        <td>
                                           <asp:TextBox ID="BerMailTotal" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="400px">
                                            <b>d. Total Number of Individuals who Received Bereavement Services*</b><br /> Include all 
                                            individuals enrolled for bereavement, including those served through support 
                                            groups and camps.</td>
                                        <td>
                                            <asp:TextBox ID="BerServIndFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumServInd('BerServIndFam');"></asp:TextBox>
                                            <br />
                                            <br /></td>
                                        <td>
                                           <asp:TextBox ID="BerServIndComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumServInd('BerServIndFam');"></asp:TextBox>
                                            <br />
                                            <br /></td>
                                        <td>
                                           <asp:TextBox ID="BerServIndTotal" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                    MaxLength="10"></asp:TextBox><br /><br /><asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Please provide Number of Bereavement services" Text="*" ControlToValidate="BerServIndTotal" Type="Integer" ValueToCompare="0" Operator="GreaterThan"></asp:CompareValidator>
                                    <asp:CustomValidator ID="CustomValidator13" runat="server" 
                         ClientValidationFunction="ValidationCheck" ErrorMessage="For Section E2, please be sure to complete row d. for each column that contains data.">*</asp:CustomValidator>
                         <asp:CustomValidator ID="CustomValidator14" runat="server" 
                         ClientValidationFunction="ValidationCheck2" ErrorMessage="For Section E2, please be sure to complete row d. for each column that contains data.">*</asp:CustomValidator>
</td>
                                    </tr>
                                </table>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                * Total number of Individuals who received bereavement services (d) is not the sum of a through c
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
                                &nbsp;E3.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               ON-CALL SUPPORT</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                  Please provide the following information for On-Call Staff for Fiscal Years 2024 and 2025.
                                  <p>The number of on-call support staff should be an unduplicated count, with no individuals included in more than one category, even if they engage in more than one type of on-call service.</p>
                                  <p>On-Call Staff who contributed hours in more than one service category should provide the number of hours for each category.</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">        
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <th style="width:60%">On-Call Support</th>
                                        <th colspan="2">FY2024</th>
                                        <th colspan="2">FY2025</th>
                                    </tr>
                                    <tr>
                                        <th>&nbsp;</th>
                                        <th>Number</th>
                                        <th>Hours</th>
                                        <th>Number</th>
                                        <th>Hours</th>
                                    </tr>
                                    <tr>
                                        <td><b>Direct Patient Care On-Call Staff</b><br />Direct patient care on-call staff are defined as 
                                            on-call staff who spend time with patients and families
                                        </td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffPY" CssClass="clsOCSNumPY" onchange="return sumOCSNumPY();" runat="server" onkeypress=" return allowonlynumbers();" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvDirectPatientStaffPY" ControlToValidate="txtDirectPatientStaffPY" runat="server" Text="*" ErrorMessage="Direct Patient Care On-Call Staff, Number FY2024 required" />
                                        </td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffHrsPY" CssClass="clsOCSHrsPY" onchange="return sumOCSHrsPY();" runat="server" onkeyup=" return validateDecimal(this,1);" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvDirectPatientStaffHrsPY" ControlToValidate="txtDirectPatientStaffHrsPY" runat="server" Text="*" ErrorMessage="Direct Patient Care On-Call Staff, Hours FY2024 required" />
                                        </td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffCY" CssClass="clsOCSNumCY" runat="server" onchange="return sumOCSNumCY();" onkeypress=" return allowonlynumbers();" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvDirectPatientStaffCY" ControlToValidate="txtDirectPatientStaffCY" runat="server" Text="*" ErrorMessage="Direct Patient Care On-Call Staff, Number FY2025 required" />
                                        </td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffHrsCY" CssClass="clsOCSHrsCY" runat="server" onchange="return sumOCSHrsCY();" onkeyup=" return validateDecimal(this,1);" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvDirectPatientStaffHrsCY" ControlToValidate="txtDirectPatientStaffHrsCY" runat="server" Text="*" ErrorMessage="Direct Patient Care On-Call Staff, Hours FY2025 required" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>Clinical Support On-Call Staff</b>
                                        </td>
                                        <td><asp:TextBox ID="txtClinicalStaffPY" CssClass="clsOCSNumPY" onchange="return sumOCSNumPY();" runat="server" onkeypress=" return allowonlynumbers();" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvClinicalStaffPY" ControlToValidate="txtClinicalStaffPY" runat="server" Text="*" ErrorMessage="Clinical Support On-Call Staff, Number FY2024 required" />
                                        </td>
                                        <td><asp:TextBox ID="txtClinicalStaffHrsPY" CssClass="clsOCSHrsPY" onchange="return sumOCSHrsPY();" runat="server" onkeyup=" return validateDecimal(this,1);" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvClinicalStaffHrsPY" ControlToValidate="txtClinicalStaffHrsPY" runat="server" Text="*" ErrorMessage="Clinical Support On-Call Staff, Hours FY2024 required" />
                                        </td>
                                        <td><asp:TextBox ID="txtClinicalStaffCY" CssClass="clsOCSNumCY" runat="server" onchange="return sumOCSNumCY();" onkeypress=" return allowonlynumbers();" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvClinicalStaffCY" ControlToValidate="txtClinicalStaffCY" runat="server" Text="*" ErrorMessage="Clinical Support On-Call Staff, Number FY2025 required" />
                                        </td>
                                        <td><asp:TextBox ID="txtClinicalStaffHrsCY" CssClass="clsOCSHrsCY" runat="server" onchange="return sumOCSHrsCY();" onkeyup=" return validateDecimal(this,1);" Columns="5" />
                                            <asp:RequiredFieldValidator ID="rfvClinicalStaffHrsCY" ControlToValidate="txtClinicalStaffHrsCY" runat="server" Text="*" ErrorMessage="Clinical Support On-Call Staff, Hours FY2025 required" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><b>General Support On-Call Staff</b>
                                        </td>
                                        <td><asp:TextBox ID="txtGeneralStaffPY" CssClass="clsOCSNumPY" onchange="return sumOCSNumPY();" runat="server" onkeypress=" return allowonlynumbers();" Columns="5" />
                                                <asp:RequiredFieldValidator ID="rfvGeneralStaffPY" ControlToValidate="txtGeneralStaffPY" runat="server" Text="*" ErrorMessage="General Support On-Call Staff, Number FY2024 required" />
                                            </td>
                                            <td><asp:TextBox ID="txtGeneralStaffHrsPY" CssClass="clsOCSHrsPY" onchange="return sumOCSHrsPY();" runat="server" onkeyup=" return validateDecimal(this,1);" Columns="5" />
                                                <asp:RequiredFieldValidator ID="rfvGeneralStaffHrsPY" ControlToValidate="txtGeneralStaffHrsPY" runat="server" Text="*" ErrorMessage="General Support On-Call Staff, Hours FY2024 required" />
                                            </td>
                                            <td><asp:TextBox ID="txtGeneralStaffCY" CssClass="clsOCSNumCY" runat="server" onchange="return sumOCSNumCY();" onkeypress=" return allowonlynumbers();" Columns="5" />
                                                <asp:RequiredFieldValidator ID="rfvGeneralStaffCY" ControlToValidate="txtGeneralStaffCY" runat="server" Text="*" ErrorMessage="General Support On-Call Staff, Number FY2025 required" />
                                            </td>
                                            <td><asp:TextBox ID="txtGeneralStaffHrsCY" CssClass="clsOCSHrsCY" runat="server" onchange="return sumOCSHrsCY();" onkeyup=" return validateDecimal(this,1);" Columns="5" />
                                                <asp:RequiredFieldValidator ID="rfvGeneralStaffHrsCY" ControlToValidate="txtGeneralStaffHrsCY" runat="server" Text="*" ErrorMessage="General Support On-Call Staff, Hours FY2025 required" />
                                            </td>
                                    </tr>
                                    <tr>
                                        <td><b>Total On-Call Staff</b>
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffPY" runat="server" Enabled="False" Columns="5" />                                                
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffHrsPY" runat="server" Enabled="False" Columns="5" />
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffCY" runat="server" Enabled="False" Columns="5" />
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffHrsCY" runat="server" Enabled="False" Columns="5" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td colspan="2">*
                            Direct Patient Care, Clinical Support, and General Support are separate categories of on-call. The number and hours in the three categories should total to All Hospice on-call support staff.
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
                                &nbsp;E4.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               OTHER SERVICES</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                  Please report the total number of individuals served for the following services for Fiscal Years 2024 and 2025.
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">        
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <th style="width:60%">Services</th>
                                        <th>FY2024</th>
                                        <th>FY2025</th>
                                    </tr>
                                    <tr>
                                        <td>1. Pain and Symptom Management</td>
                                        <td>
                                            <asp:TextBox ID="txtPainMgtPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvPainMgtPY" runat="server" ControlToValidate="txtPainMgtPY"
                                                Text="*" ErrorMessage="Pain and Symptom Management required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPainMgtCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvPainMgtCY" runat="server" ControlToValidate="txtPainMgtCY"
                                                Text="*" ErrorMessage="Pain and Symptom Management required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2. Nursing Visits</td>
                                        <td>
                                            <asp:TextBox ID="txtNursingVisitPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvNursingVisitPY" runat="server" ControlToValidate="txtNursingVisitPY"
                                                Text="*" ErrorMessage="Nursing Visits required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtNursingVisitCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfNursingVisitCY" runat="server" ControlToValidate="txtNursingVisitCY"
                                                Text="*" ErrorMessage="Nursing Visits required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3. Hospice Aide Services</td>
                                        <td>
                                            <asp:TextBox ID="txtHospiceAidePY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvHospiceAidePY" runat="server" ControlToValidate="txtHospiceAidePY"
                                                Text="*" ErrorMessage="Hospice Aide Services required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtHospiceAideCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvHospiceAideCY" runat="server" ControlToValidate="txtHospiceAideCY"
                                                Text="*" ErrorMessage="Hospice Aide Services required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4. Medical Social Services</td>
                                        <td>
                                            <asp:TextBox ID="txtMedicalSocialPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvMedicalSocialPY" runat="server" ControlToValidate="txtMedicalSocialPY"
                                                Text="*" ErrorMessage="Medical Social Services required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMedicalSocialCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvMedicalSocialCY" runat="server" ControlToValidate="txtMedicalSocialCY"
                                                Text="*" ErrorMessage="Medical Social Services required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5. Spiritual Counseling</td>
                                        <td>
                                            <asp:TextBox ID="txtSpiritualPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvSpiritualPY" runat="server" ControlToValidate="txtSpiritualPY"
                                                Text="*" ErrorMessage="Spiritual Counseling required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSpiritualCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvSpiritualCY" runat="server" ControlToValidate="txtSpiritualCY"
                                                Text="*" ErrorMessage="Spiritual Counseling required for FY2025"/>
                                        </td>
                                    </tr>                                    
                                    <tr>
                                        <td>6. Bereavement Support</td>
                                        <td>
                                            <asp:TextBox ID="txtBereavementPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvBereavementPY" runat="server" ControlToValidate="txtBereavementPY"
                                                Text="*" ErrorMessage="Bereavement Support required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtBereavementCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvBereavementCY" runat="server" ControlToValidate="txtBereavementCY"
                                                Text="*" ErrorMessage="Bereavement Support required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>7. Medical Equipment and Supplies</td>
                                        <td>
                                            <asp:TextBox ID="txtMedEquipPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvMedEquipPY" runat="server" ControlToValidate="txtMedEquipPY"
                                                Text="*" ErrorMessage="Medical Equipment and Supplies required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMedEquipCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvMedEquipCY" runat="server" ControlToValidate="txtMedEquipCY"
                                                Text="*" ErrorMessage="Medical Equipment and Supplies required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>8. Medication Delivery</td>
                                        <td>
                                            <asp:TextBox ID="txtMedDeliveryPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvMedDeliveryPY" runat="server" ControlToValidate="txtMedDeliveryPY"
                                                Text="*" ErrorMessage="Medication Delivery required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMedDeliveryCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvMedDeliveryCY" runat="server" ControlToValidate="txtMedDeliveryCY"
                                                Text="*" ErrorMessage="Medication Delivery required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>9. Therapeutic Services</td>
                                        <td>
                                            <asp:TextBox ID="txtTherapeuticPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsPY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvTherapeuticPY" runat="server" ControlToValidate="txtTherapeuticPY"
                                                Text="*" ErrorMessage="Therapeutic Services required for FY2024"/>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTherapeuticCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                onchange="return sumSvcsCY();" runat="server" onkeypress=" return allowonlynumbers();" />
                                            <asp:RequiredFieldValidator ID="rfvTherapeuticCY" runat="server" ControlToValidate="txtTherapeuticCY"
                                                Text="*" ErrorMessage="Therapeutic Services required for FY2025"/>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td><b>Total</b></td>
                                         <td><asp:TextBox ID="txtTotalOtherSevPY" Enabled="false" Columns="5" MaxLength="50" runat="server" />
                                         </td>
                                         <td><asp:TextBox ID="txtTotalOtherSevCY" Enabled="false" Columns="5" MaxLength="50" runat="server" />
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
