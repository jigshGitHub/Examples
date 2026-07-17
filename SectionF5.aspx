<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionF5.aspx.vb" Inherits="SectionF5" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MARYLAND HOSPICE SURVEY</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Style/Survey.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

    //-- allow textbox to accept numbers only

   
    function DisableEnter() {
        if (window.event.keyCode == 13) {
            event.returnValue = false;
            event.cancel = true;
        }
    }
    function IsNumericPos(sText) {
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
    function allowDecimals(fld) {

        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a numeric or a decimal value!");
        }

    }
    //---Sum row for totals
    function SumCostsA(fld) {
      
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive numeric value!");
        }
        var mySum = 0;
        var value1 = parseFloat(document.getElementById("_1BldgFixA10").value);
        var value2 = parseFloat(document.getElementById("_2MovEquipA10").value);
        var value3 = parseFloat(document.getElementById("_54EmpBenefitsA10").value);
        var value4 = parseFloat(document.getElementById("_6AGA10").value);
        var value5 = parseFloat(document.getElementById("_3PlantOpA10").value);
        var value6 = parseFloat(document.getElementById("_55LLServA10").value);
        var value7 = parseFloat(document.getElementById("_56hkeepingA10").value);
        var value8 = parseFloat(document.getElementById("_57DietaryA10").value);
        var value9 = parseFloat(document.getElementById("_58NursAdmA10").value);
        var value10 = parseFloat(document.getElementById("_59RMSA10").value);
        var value11 = parseFloat(document.getElementById("_60MedRecA10").value);
        var value12 = parseFloat(document.getElementById("_61TransStaffA10").value);
        var value13 = parseFloat(document.getElementById("_62VolServA10").value);
        var value14 = parseFloat(document.getElementById("_63PharmA10").value);
        var value15 = parseFloat(document.getElementById("_64MDASA10").value);

        var value16 = parseFloat(document.getElementById("_65OAGServA10").value);
        var value17 = parseFloat(document.getElementById("_66PRCServsA10").value);
        var value18 = parseFloat(document.getElementById("_67IPCareA10").value);
        var value19 = parseFloat(document.getElementById("_15MDAA10").value);
        var value20 = parseFloat(document.getElementById("_67NursPractA10").value);
        var value21 = parseFloat(document.getElementById("_68RegNursA10").value);
        var value22 = parseFloat(document.getElementById("_69LPVNA10").value);
        var value23 = parseFloat(document.getElementById("_17PTAA10").value);
        var value24 = parseFloat(document.getElementById("_18OTA10").value);
        var value25 = parseFloat(document.getElementById("_19SLPA10").value);
        var value26 = parseFloat(document.getElementById("_20MedSSA10").value);
        var value27 = parseFloat(document.getElementById("_21ChapA10").value);
        var value28 = parseFloat(document.getElementById("_22DietA10").value);
        var value29 = parseFloat(document.getElementById("_23OtherCounsA10").value);
        var value30 = parseFloat(document.getElementById("_70HAHSA10").value);

        var value31 = parseFloat(document.getElementById("_30RxBioInfA10").value);
        var value32 = parseFloat(document.getElementById("_32PtTransA10").value);
        var value33 = parseFloat(document.getElementById("_33ImagA10").value);
        var value34 = parseFloat(document.getElementById("_34LabDiagA10").value);
        var value35 = parseFloat(document.getElementById("_35MedSupA10").value);
        var value36 = parseFloat(document.getElementById("_36OPA10").value);
        var value37 = parseFloat(document.getElementById("_71PRTA10").value);
        var value38 = parseFloat(document.getElementById("_72PallChemoA10").value);
        var value39 = parseFloat(document.getElementById("_73OPCSA10").value);
        var value40 = parseFloat(document.getElementById("_50BereavA10").value);
        var value41 = parseFloat(document.getElementById("_51VolA10").value);
        var value42 = parseFloat(document.getElementById("_52FundraisA10").value);
        var value43 = parseFloat(document.getElementById("_74HPMFA10").value);
        var value44 = parseFloat(document.getElementById("_75PCPA10").value);
        var value45 = parseFloat(document.getElementById("_76MDASA10").value);
        var value46 = parseFloat(document.getElementById("_77ResCareA10").value);
        var value47 = parseFloat(document.getElementById("_78Advert10").value);
        var value48 = parseFloat(document.getElementById("_79THTMA10").value);
        var value49 = parseFloat(document.getElementById("_80thriftStA10").value);
        var value50 = parseFloat(document.getElementById("_81NursFacRmA10").value);
        var value51 = parseFloat(document.getElementById("_82NonReimbOtherA10").value);
        var value52 = parseFloat(document.getElementById("_83ContHomeCareA10").value);
        var value53 = parseFloat(document.getElementById("_84RoutHomeCareA10").value);
        var value54 = parseFloat(document.getElementById("_85InpatRespA10").value);
        var value55 = parseFloat(document.getElementById("_86GenRespA10").value);

       
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
            mySum = mySum + value9
        }
        if (value10 > 0) {
            mySum = mySum + value10
        }
        if (value11 > 0) {
            mySum = mySum + value11
        }
        if (value12 > 0) {
            mySum = mySum + value12
        }
        if (value13 > 0) {
            mySum = mySum + value13
        }
        if (value14 > 0) {
            mySum = mySum + value14
        }
        if (value15 > 0) {
            mySum = mySum + value15
        }
        if (value16 > 0) {
            mySum = mySum + value16
        }
        if (value17 > 0) {
            mySum = mySum + value17
        }
        if (value18 > 0) {
            mySum = mySum + value18
        }
        if (value19 > 0) {
            mySum = mySum + value19
        }
        if (value20 > 0) {
            mySum = mySum + value20
        }
        if (value21 > 0) {
            mySum = mySum + value21
        }
        if (value22 > 0) {
            mySum = mySum + value22
        }
        if (value23 > 0) {
            mySum = mySum + value23
        }
        if (value24 > 0) {
            mySum = mySum + value24
        }
        if (value25 > 0) {
            mySum = mySum + value25
        }
        if (value26 > 0) {
            mySum = mySum + value26
        }
        if (value27 > 0) {
            mySum = mySum + value27
        }
        if (value28 > 0) {
            mySum = mySum + value28
        }
        if (value29 > 0) {
            mySum = mySum + value29
        }
        if (value30 > 0) {
            mySum = mySum + value30
        }
        if (value31 > 0) {
            mySum = mySum + value31
        }
        if (value32 > 0) {
            mySum = mySum + value32
        }
        if (value33 > 0) {
            mySum = mySum + value33
        }
        if (value34 > 0) {
            mySum = mySum + value34
        }
        if (value35 > 0) {
            mySum = mySum + value35
        }
        if (value36 > 0) {
            mySum = mySum + value36
        }
        if (value37 > 0) {
            mySum = mySum + value37
        }
        if (value38 > 0) {
            mySum = mySum + value38
        }
        if (value39 > 0) {
            mySum = mySum + value39
        }
        if (value40 > 0) {
            mySum = mySum + value40
        }
        if (value41 > 0) {
            mySum = mySum + value41
        }
        if (value42 > 0) {
            mySum = mySum + value42
        }
        if (value43 > 0) {
            mySum = mySum + value43
        }
        if (value44 > 0) {
            mySum = mySum + value44
        }
        if (value45 > 0) {
            mySum = mySum + value45
        }
        if (value46 > 0) {
            mySum = mySum + value46
        }
        if (value47 > 0) {
            mySum = mySum + value47
        }
        if (value48 > 0) {
            mySum = mySum + value48
        }
        if (value49 > 0) {
            mySum = mySum + value49
        }
        if (value50 > 0) {
            mySum = mySum + value50
        }
        if (value51 > 0) {
            mySum = mySum + value51
        }
        if (value52 > 0) {
            mySum = mySum + value52
        }
        if (value53 > 0) {
            mySum = mySum + value53
        }
        if (value54 > 0) {
            mySum = mySum + value54
        }
        if (value55 > 0) {
            mySum = mySum + value55
        }

        document.getElementById("_100TotalCostsA10").value = mySum
    }
    function SumCostsB(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive numeric value!");
        }
        var mySum = 0;
        var value1 = parseFloat(document.getElementById("_57DietaryB7").value);
        var value2 = parseFloat(document.getElementById("_58NursAdmB7").value);
        var value3 = parseFloat(document.getElementById("_59RMSAB7").value);
        var value4 = parseFloat(document.getElementById("_60MedRecB7").value); 
        var value5 = parseFloat(document.getElementById("_61TransStaffB7").value);
        var value6 = parseFloat(document.getElementById("_62VolServB7").value);
        var value7 = parseFloat(document.getElementById("_63PharmB7").value);
        var value8 = parseFloat(document.getElementById("_64MDASB7").value);
        var value9 = parseFloat(document.getElementById("_65OAGServB7").value);
        var value10 = parseFloat(document.getElementById("_66PRCServsB7").value);
        var value11 = parseFloat(document.getElementById("_67IPCareB7").value);
        var value12 = parseFloat(document.getElementById("_15MDAB7").value);
        var value13 = parseFloat(document.getElementById("_67NursPractB7").value);
        var value14 = parseFloat(document.getElementById("_68RegNursB7").value);
        var value15 = parseFloat(document.getElementById("_69LPVNB7").value);
        var value16 = parseFloat(document.getElementById("_17PTAB7").value);
        var value17 = parseFloat(document.getElementById("_18OTB7").value);
        var value18 = parseFloat(document.getElementById("_19SLPB7").value);
        var value19 = parseFloat(document.getElementById("_20MedSSB7").value);
        var value20 = parseFloat(document.getElementById("_21ChapB7").value);
        var value21 = parseFloat(document.getElementById("_22DietB7").value);
        var value22 = parseFloat(document.getElementById("_23OtherCounsB7").value);
        var value23 = parseFloat(document.getElementById("_70HAHSB7").value);
        var value24 = parseFloat(document.getElementById("_30RxBioInfB7").value);
        var value25 = parseFloat(document.getElementById("_32PtTransB7").value);
        var value26 = parseFloat(document.getElementById("_33ImagB7").value);
        var value27 = parseFloat(document.getElementById("_34LabDiagB7").value);
        var value28 = parseFloat(document.getElementById("_35MedSupB7").value);
        var value29 = parseFloat(document.getElementById("_36OPB7").value);
        
        var value30 = parseFloat(document.getElementById("_71PRTB7").value);
        var value31 = parseFloat(document.getElementById("_72PallChemoB7").value);
        var value32 = parseFloat(document.getElementById("_73OPCSB7").value);
        var value33 = parseFloat(document.getElementById("_50BereavB7").value);
        var value34 = parseFloat(document.getElementById("_51VolB7").value);
        var value35 = parseFloat(document.getElementById("_52FundraisB7").value);
        var value36 = parseFloat(document.getElementById("_74HPMFB7").value);
        var value37 = parseFloat(document.getElementById("_75PCPB7").value);
        var value38 = parseFloat(document.getElementById("_76MDASB7").value);
        var value39 = parseFloat(document.getElementById("_77ResCareB7").value);
        var value40 = parseFloat(document.getElementById("_78AdvertB7").value);
        var value41 = parseFloat(document.getElementById("_79THTMB7").value);
        var value42 = parseFloat(document.getElementById("_80thriftStB7").value);
        var value43 = parseFloat(document.getElementById("_81NursFacRmB7").value);
        var value44 = parseFloat(document.getElementById("_82NonReimbOtherB7").value);
        var value45 = parseFloat(document.getElementById("_83ContHomeCareB7").value);
        var value46 = parseFloat(document.getElementById("_84RoutHomeCareB7").value);
        var value47 = parseFloat(document.getElementById("_85InpatRespB7").value);
        var value48 = parseFloat(document.getElementById("_86GenRespB7").value);
      
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
            mySum = mySum + value9
        }
        if (value10 > 0) {
            mySum = mySum + value10
        }
        if (value11 > 0) {
            mySum = mySum + value11
        }
        if (value12 > 0) {
            mySum = mySum + value12
        }
        if (value13 > 0) {
            mySum = mySum + value13
        }
        if (value14 > 0) {
            mySum = mySum + value14
        }
        if (value15 > 0) {
            mySum = mySum + value15
        }
        if (value16 > 0) {
            mySum = mySum + value16
        }
        if (value17 > 0) {
            mySum = mySum + value17
        }
        if (value18 > 0) {
            mySum = mySum + value18
        }
        if (value19 > 0) {
            mySum = mySum + value19
        }
        if (value20 > 0) {
            mySum = mySum + value20
        }
        if (value21 > 0) {
            mySum = mySum + value21
        }
        if (value22 > 0) {
            mySum = mySum + value22
        }
        if (value23 > 0) {
            mySum = mySum + value23
        }
        if (value24 > 0) {
            mySum = mySum + value24
        }
        if (value25 > 0) {
            mySum = mySum + value25
        }
        if (value26 > 0) {
            mySum = mySum + value26
        }
        if (value27 > 0) {
            mySum = mySum + value27
        }
        if (value28 > 0) {
            mySum = mySum + value28
        }
        if (value29 > 0) {
            mySum = mySum + value29
        }
        if (value30 > 0) {
            mySum = mySum + value30
        }
        if (value31 > 0) {
            mySum = mySum + value31
        }
        if (value32 > 0) {
            mySum = mySum + value32
        }
        if (value33 > 0) {
            mySum = mySum + value33
        }
        if (value34 > 0) {
            mySum = mySum + value34
        }
        if (value35 > 0) {
            mySum = mySum + value35
        }
        if (value36 > 0) {
            mySum = mySum + value36
        }
        if (value37 > 0) {
            mySum = mySum + value37
        }
        if (value38 > 0) {
            mySum = mySum + value38
        }
        if (value39 > 0) {
            mySum = mySum + value39
        }
        if (value40 > 0) {
            mySum = mySum + value40
        }
        if (value41 > 0) {
            mySum = mySum + value41
        }
        if (value42 > 0) {
            mySum = mySum + value42
        }
        if (value43 > 0) {
            mySum = mySum + value43
        }
        if (value44 > 0) {
            mySum = mySum + value44
        }
        if (value45 > 0) {
            mySum = mySum + value45
        }
        if (value46 > 0) {
            mySum = mySum + value46
        }
        if (value47 > 0) {
            mySum = mySum + value47
        }
        if (value48 > 0) {
            mySum = mySum + value48
        }
        document.getElementById("_100TotalCostsB7").value = mySum
    }

//    function SumCostsAG(source, arguments) {
//        
//        var mySum = 0;
//        var value1 = parseFloat(document.getElementById("_6AGSharedA10").value);
//        var value2 = parseFloat(document.getElementById("_6AGReimbA10").value);
//        var value3 = parseFloat(document.getElementById("_6AGNonReimbA10").value);
//        var value4 = parseFloat(document.getElementById("_6AGA10").value);
//       
//        if (value1 >= 0) {
//            mySum = mySum + value1
//           
//        }
//        if (value2 >= 0) {
//            mySum = mySum + value2
//        }
//        if (value3 >= 0) {
//            mySum = mySum + value3
//        }
//        if (mySum > 0) {
//            arguments.IsValid = (mySum == value4);
//        }
//    }
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
                 
     
         
        .style35
        {
            width: 150px;
        }
        .style36
        {
            width: 150px;
            font-weight: bold;
            height: 19px;
        }
        .style37
        {
            height: 19px;
            font-weight: bold;
        }
         
     
         
        .style38
        {
            height: 19px;
        }
        .style39
        {
            width: 150px;
            height: 19px;
        }
         
     
         
        .style40
        {
            width: 30px;
            height: 38px;
        }
        .style41
        {
            width: 100%;
            height: 38px;
        }
         
     
         
        .style42
        {
            height: 23px;
        }
         
     
         
        .auto-style1 {
            width: 710px;
            height: 102px;
        }
         
     
         
        </style>
</head>
<body  >
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    C<asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div >
    
        <table cellpadding="5" cellspacing="0" class="style1" align="center" 
            bgcolor="White">
            <tr>
                <td style="background-color: #666666" class="auto-style1">
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
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;F5.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               COSTS (PART II)</td>
                            </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                         <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                             Please provide a summary of cost data you submitted in your FY<asp:Label ID="SY1"
                                    runat="server"></asp:Label> Medicare Cost Report. Enter the data for each 
                                line number (at left) from your Medicare Cost Report Worksheet and Column noted 
                                at the top of each column below. Freestanding, hospital-based and home 
                                health-based hospice cost reports request the same information, but have 
                                different worksheet, column and line references. This survey contains references 
                                for the Free-standing Hospice Cost Report. If your costs are submitted to CMS on 
                                a hospital or home health cost report and you are having difficulty identifying 
                                the appropriate spaces for your responses, please call Jeanne Marie Gawel at 
                                410-764-3337 with any questions concerning the Maryland Hospice survey. If she 
                                is unavailable, you may leave a message for her or email
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="mailto:jeanne-marie.gawel@maryland.gov">jeanne-marie.gawel@maryland.gov</asp:HyperLink>
                                <br />
                                <br />
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
                                        <td valign="top" class="style37">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <b>Total Costs by Item </b><br />Worksheet A, Column 7</td>
                                        <td class="style35" valign="top">
                                            <b>Total Fully Loaded Costs </b><br /> Worksheet B, Column 18<br />
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px" class="style38">
                                            <b>General Service Cost Centers</b></td>
                                        <td class="style36">
                                             &nbsp;</td>
                                        <td class="style39">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="250px">
                                            1. Capital Related Costs-Bldg and Fixtures</td>
                                        <td class="style36">
                                             <asp:TextBox ID="_1BldgFixA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_1BldgFixA10');"></asp:TextBox></td>
                                        <td class="style35" valign="top" rowspan="7">
                                            <br />
                                            <br />
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            2. Capital Related Costs – Movable Equipment</td>
                                        <td class="style36">
                                           <asp:TextBox ID="_2MovEquipA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_2MovEquipA10');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px"> 
                                            3. Employee Benefits Department</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_54EmpBenefitsA10" runat="server" Columns="10" MaxLength="10" 
                                            BackColor="White" onkeyup="SumCostsA('_54EmpBenefitsA10');"></asp:TextBox>
                                           </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            4. Administrative and General</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_6AGA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_6AGA10');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            5. Plant Operation and Maintenance</td>
                                        <td class="style36">
                                           <asp:TextBox ID="_3PlantOpA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_3PlantOpA10');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            6. Laundry &amp; Linen Service</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_55LLServA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_55LLServA10');"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            7. Housekeeping</td>
                                        <td class="style36">                                            
                                            <asp:TextBox ID="_56hkeepingA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_56hkeepingA10');"></asp:TextBox>                                            
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td width="250px">
                                            8. Dietary</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_57DietaryA10" runat="server" Columns="10" MaxLength="10" 
                                                BackColor="White" onkeyup="SumCostsA('_57DietaryA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_57DietaryB7" runat="server" Columns="10" MaxLength="10" 
                                            BorderColor="White" onkeyup="SumCostsB('_57DietaryB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="250px" class="style38">
                                            9. Nursing Administration</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_58NursAdmA10" runat="server" Columns="10" MaxLength="10" 
                                                BackColor="White" onkeyup="SumCostsA('_58NursAdmA10');"></asp:TextBox>
                                        </td>
                                        <td class="style39">
                                            <asp:TextBox ID="_58NursAdmB7" runat="server" Columns="10" MaxLength="10" 
                                            BackColor="White" onkeyup="SumCostsB('_58NursAdmB7');"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            10. Routine Medical Supplies</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_59RMSA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_59RMSA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_59RMSAB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_59RMSAB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38" width="200px">
                                            11. Medical Records</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_60MedRecA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_60MedRecA10');"></asp:TextBox>
                                        </td>
                                        <td class="style39">
                                            <asp:TextBox ID="_60MedRecB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_60MedRecB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            12. Staff Transportation</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_61TransStaffA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_61TransStaffA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_61TransStaffB7" runat="server" Columns="10" MaxLength="10"
                                            Backcolor="White" onkeyup="SumCostsB('_61TransStaffB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            13.Volunteer Services Coordination</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_62VolServA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_62VolServA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_62VolServB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_62VolServB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            14. Pharmarcy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_63PharmA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_63PharmA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_63PharmB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_63PharmB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            15. Physician Administrative Servies</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_64MDASA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_64MDASA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_64MDASB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_64MDASB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            16. Other General Services (specify)
                                            <asp:TextBox ID="_65OAGServOther" runat="server" Width="200px" BackColor="#FFFFFF"></asp:TextBox>
                                        </td>
                                        <td class="style36">
                                            <asp:TextBox ID="_65OAGServA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_65OAGServA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_65OAGServB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_65OAGServB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            17. Patient/Residential Care Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_66PRCServsA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                             MaxLength="10" onkeyup="SumCostsA('_66PRCServsA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_66PRCServsB7" runat="server" Columns="10" 
                                            MaxLength="10" onkeyup="SumCostsB('_66PRCServsB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            <strong>Direct Patient Care Service Cost Centers</strong></td>
                                        <td class="style36">
                                            &nbsp;</td>
                                        <td class="style35">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            25. Inpatient Care - Contracted</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_67IPCareA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_15MDAA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_67IPCareB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_67IPCareB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            26. Physician Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_15MDAA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_15MDAA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_15MDAB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_15MDAB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            27. Nurse Practitioner</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_67NursPractA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_67NursPractA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_67NursPractB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_67NursPractB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            28. Registered Nurse</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_68RegNursA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_68RegNursA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_68RegNursB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_68RegNursB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            29. LPN/LVN</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_69LPVNA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_69LPVNA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_69LPVNB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_69LPVNB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            30. Physical Therapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_17PTAA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_17PTAA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_17PTAB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_17PTAB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            31. Occupational Therapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_18OTA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_18OTA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_18OTB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_18OTB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            32. Speech/Language Pathology</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_19SLPA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_19SLPA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_19SLPB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_19SLPB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            33. Medical Social Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_20MedSSA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_20MedSSA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_20MedSSB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_20MedSSB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            34. Spiritual Counseling</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_21ChapA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_21ChapA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_21ChapB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_21ChapB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            35. Dietary Counseling</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_22DietA10" runat="server" Columns="10" 
                                            MaxLength="10" BackColor="White" onkeyup="SumCostsA('_22DietA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_22DietB7" runat="server" Columns="10" MaxLength="10" 
                                            BackColor="White" onkeyup="SumCostsB('_22DietB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            36. Counseling - Other</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_23OtherCounsA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_23OtherCounsA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_23OtherCounsB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_23OtherCounsB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            37. Hospice Aide and Homemaker Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_70HAHSA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_70HAHSA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_70HAHSB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_70HAHSB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            38. Durable Medical Equipment/Oxygen</td>
                                        <td class="style36">
                                           <asp:TextBox ID="_30RxBioInfA10" runat="server" Columns="10" BackColor="White"
                                           MaxLength="10" onkeyup="SumCostsA('_30RxBioInfA10');"></asp:TextBox></td>
                                        <td class="style35">
                                           <asp:TextBox ID="_30RxBioInfB7" runat="server" Columns="10" BackColor="White"
                                           MaxLength="10" onkeyup="SumCostsB('_30RxBioInfB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            39. Patient Transportation</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_32PtTransA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_32PtTransA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_32PtTransB7" runat="server" Columns="10" BackColor="White" 
                                            MaxLength="10" onkeyup="SumCostsB('_32PtTransB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            40. Imaging Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_33ImagA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_33ImagA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_33ImagB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_33ImagB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            41. Labs and Diagnostics</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_34LabDiagA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_34LabDiagA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_34LabDiagB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_34LabDiagB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            42. Medical Supplies - Non-routine</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_35MedSupA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_35MedSupA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_35MedSupB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_35MedSupB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            43. Outpatient Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_36OPA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_36OPA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_36OPB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_36OPB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            44. Palliative Radiation Therapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_71PRTA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_71PRTA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_71PRTB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_71PRTB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            45. Palliative Chemotherapy</td>
                                        <td class="style36">
                                           <asp:TextBox ID="_72PallChemoA10" runat="server" Columns="10" BackColor="White"
                                           MaxLength="10" onkeyup="SumCostsA('_72PallChemoA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_72PallChemoB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_72PallChemoB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            46. Other Patient Care Services (specify)&nbsp;
                                            <asp:TextBox ID="_73OPCSOther" runat="server" Width="200px" BackColor="#FFFFFF"></asp:TextBox>
                                        </td>
                                        <td class="style36">
                                            <asp:TextBox ID="_73OPCSA10" runat="server" Columns="10" 
                                            MaxLength="10" onkeyup="SumCostsA('_73OPCSA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_73OPCSB7" runat="server" Columns="10" 
                                            MaxLength="10" onkeyup="SumCostsB('_73OPCSB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <strong>Levels of Care</strong></td>
                                        <td class="style36">
                                            &nbsp;</td>
                                        <td class="style35">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="300px">50. Continous Home Care</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_83ContHomeCareA10" runat="server" Columns="10" MaxLength="10" onkeyup="SumCostsA('_83ContHomeCareA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_83ContHomeCareB7" runat="server" Columns="10" MaxLength="10" onkeyup="SumCostsB('_83ContHomeCareB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38" width="300px">51. Routine Home Care</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_84RoutHomeCareA10" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsA('_84RoutHomeCareA10');"></asp:TextBox>
                                        </td>
                                        <td class="style39">
                                            <asp:TextBox ID="_84RoutHomeCareB7" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsB('_84RoutHomeCareB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">52. Inpatient Respite</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_85InpatRespA10" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsA('_85InpatRespA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_85InpatRespB7" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsB('_85InpatRespB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">53. General Inpatient</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_86GenRespA10" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsA('_86GenRespA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_86GenRespB7" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsB('_86GenRespB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px"><b>Non-Reimbursable Cost Centers</b></td>
                                        <td class="style36">&nbsp;</td>
                                        <td class="style35">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            60. Bereavement Program</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_50BereavA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_50BereavA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_50BereavB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_50BereavB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            61. Volunteer Program</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_51VolA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_51VolA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_51VolB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_51VolB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            62. Fundraising</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_52FundraisA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_52FundraisA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_52FundraisB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_52FundraisB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            63. Hospice/Palliative Medicine Fellows</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_74HPMFA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_74HPMFA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_74HPMFB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_74HPMFB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            64. Palliative Care Program</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_75PCPA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_75PCPA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_75PCPB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_75PCPB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            65. Other Physician Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_76MDASA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_76MDASA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_76MDASB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_76MDASB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            66. Residential Care</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_77ResCareA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_77ResCareA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_77ResCareB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_77ResCareB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            67. Advertising</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_78Advert10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_78Advert10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_78AdvertB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_78AdvertB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            68. Telehealth/Telemonitoring</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_79THTMA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_79THTMA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_79THTMB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_79THTMB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            69. Thrift Store</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_80thriftStA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_80thriftStA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_80thriftStB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_80thriftStB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            70. Nursing Facility Room &amp; Board</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_81NursFacRmA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_81NursFacRmA10');"></asp:TextBox></td>
                                        <td class="style35">
                                           <asp:TextBox ID="_81NursFacRmB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                           MaxLength="10" onkeyup="SumCostsB('_81NursFacRmB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            71. Other Nonreimbursable (specify)
                                            <%--<asp:TextBox ID="_71Other" runat="server" Columns="20"></asp:TextBox>--%>
                                            <asp:TextBox ID="_82NonReimbOther" runat="server" BackColor="#FFFFFF"></asp:TextBox>
                                        </td>
                                        <td class="style36">
                                            <asp:TextBox ID="_82NonReimbOtherA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_82NonReimbOtherA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_82NonReimbOtherB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_82NonReimbOtherB7');"></asp:TextBox></td>
                                    </tr>
                                    <%--<tr>
                                        <td width="200px">
                                            50. Bereavement Program Costs</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_50BereavA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_50BereavA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_50BereaveB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_50BereaveB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            51. Volunteer Program Costs</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_51VolA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_51VolA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_51VolB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_51VolB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            52. Fundraising</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_52FundraisA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_52FundraisA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_52FundraisB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_52FundraisB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            53. Other Program Costs</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_53NonReimbOtherA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_53NonReimbOtherA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_53NonReimbOtherB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_53NonReimbOtherB7');"></asp:TextBox>
                                        </td>
                                    </tr>--%>
                                    <tr>
                                        <td class="style38" width="200px">
                                            <b>101. Total Costs</b></td>
                                        <td class="style36">
                                            <asp:TextBox ID="_100TotalCostsA10" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td class="style39">
                                            <asp:TextBox ID="_100TotalCostsB7" runat="server" BackColor="#FFFFCC"  onkeydown="return false" Columns="10" 
                                                MaxLength="10" ></asp:TextBox>
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
                                F5a</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               APPORTIONMENT STATISTICS</td>
                            </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                               <b>Part 2 Statistical Data</b></td>
                        </tr>  
                         
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Please enter the numbers as submitted on your Medicare Cost Report Worksheet S-1 
                                on the lines noted</td>
                        </tr> 
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <table class="style32a">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Level of Care</strong></td>
                                        <td>
                                            <strong>Total Days</strong></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Line 30 - Continuous Home<br /> Care Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRptContHomeCare" runat="server" Columns="10" BackColor="#FFFFFF"
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Line 31 - Routine Home
                                            <br />
                                            Care Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRptRouHomeCare" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td width="200px">
                                            Line 32 – Inpatient Respite Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRPTRespiteDays" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Line 33 – General Inpatient Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRptGIDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Line 34 – Total Hospice Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRPTTotHosDays" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                    <%--<tr>
                                        <td width="200px">
                                            Line 14 – Continuous Care Hours</td>
                                        <td>
                                            <asp:TextBox ID="CostRptContCare" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>--%>
                                    
                                </table>
                              </td>
                        </tr> 
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                                                                     
                        <tr>
                            <td colspan="2" class="style38">
                                </td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                F6.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               PALLIATIVE CARE SERVICES</td>
                            </tr> 
                            <tr>
                            <td class="style40">
                                </td>
                            <td class="style41">
                                Please enter the numbers below for your program for FY <asp:Label 
                        ID="SY2" runat="server"></asp:Label></td>
                        </tr> 
                        <tr>
                            <td class="style11">&nbsp;</td>
                            <td class="style12">
                            <table class="style32a">
                                    <tr>
                                        <td class="style42">
                                            </td>
                                        <td class="style42">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Total Palliative Care Visits:</td>
                                        <td>
                                            <asp:TextBox ID="totPallCareVisits" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Total Palliative Care Revenue:</td>
                                        <td>
                                            <asp:TextBox ID="totPallCareRev" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="Certi1" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="msave" runat="server" Text="Saved Successfully" Visible="False" CssClass="btnblue"></asp:Label>
                                                           <asp:Label ID="merror" runat="server" Text="Please correct all errors" Visible="False" CssClass="btnred"></asp:Label></td>
                                    </tr>
                                    </table>
                            </td>
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
