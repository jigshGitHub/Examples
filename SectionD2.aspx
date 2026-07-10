<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionD2.aspx.vb" Inherits="SectionD2" Debug="true"%>

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
    //--Check Other name
    function CheckOther(source, arguments) {
        var value1 = parseInt(document.getElementById("OtherAd").value);
        var value2 = parseInt(document.getElementById("OtherDeaths").value);
        var value3 = parseInt(document.getElementById("OtherLiveDis").value);
        var value4 = parseInt(document.getElementById("OtherPDays").value);
        var c = document.getElementById("DiagOtherName").value;
        if ((value1 > 0 || value2 > 0 || value3 > 0 || value4 > 0)) {

            if (c.length == 0) { arguments.IsValid = false; }

                
               //alert('value')
            }
        }


//        //---Total Patient Days

        function CheckTotalPDays(source, arguments) {
            var value1 = parseInt(document.getElementById("PD_HC_PR").value);
            var value2 = parseInt(document.getElementById("PD_HC_AL").value);
            var value3 = parseInt(document.getElementById("PD_HC_HH").value);
            var value4 = parseInt(document.getElementById("PD_HC_NH").value);
            var value5 = parseInt(document.getElementById("PD_HC_OTH").value);
            var value6 = parseInt(document.getElementById("PD_RC_NH").value);
            var value7 = parseInt(document.getElementById("PD_RC_HOSP").value);
            var value8 = parseInt(document.getElementById("PD_RC_FREE").value);
            var value9 = parseInt(document.getElementById("PD_RC_OTH").value);
            var value10 = parseInt(document.getElementById("PD_IC_HOSP").value);
            var value11 = parseInt(document.getElementById("PD_IC_NH").value);
            var value12 = parseInt(document.getElementById("PD_IC_FREE").value);
            var value13 = parseInt(document.getElementById("PD_IC_OTH").value);
            var value14 = parseInt(document.getElementById("PD_CC_PR").value);
            var value15 = parseInt(document.getElementById("PD_CC_AL").value);
            var value16 = parseInt(document.getElementById("PD_CC_HH").value);
            var value17 = parseInt(document.getElementById("PD_CC_NH").value);
            var value18 = parseInt(document.getElementById("PD_CC_OTH").value);
            var value19 = parseInt(document.getElementById("tpd").value);

            var sum = value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 +
            value10 + value11 + value12 + value13 + value14 + value15 + value16 + value17 + value18;
            arguments.IsValid = (sum == value19);
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

    //----------Start D7--------------------------------------------------------------------------------------------------------------
    //---Sum row for totals
    function SumActTotAd(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("SepsisAd").value);
        var value2 = parseInt(document.getElementById("CancerAd").value);
        var value3 = parseInt(document.getElementById("HIVAd").value);
        var value4 = parseInt(document.getElementById("EndoAd").value);
        var value5 = parseInt(document.getElementById("NeuroAd").value);
        //var value6 = parseInt(document.getElementById("LivAd").value);
        var value6 = parseInt(document.getElementById("DemAd").value);
        var value7 = parseInt(document.getElementById("HrtAd").value);
        var value8 = parseInt(document.getElementById("LungAd").value);
        var value9 = parseInt(document.getElementById("LivAd").value);
        var value10 = parseInt(document.getElementById("SkinAd").value);
        var value11 = parseInt(document.getElementById("MuscleAd").value);
        var value12 = parseInt(document.getElementById("KidneyAd").value);
        var value13 = parseInt(document.getElementById("InjpoiAd").value);
        var value14 = parseInt(document.getElementById("OtherAd").value);
      
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
//        if (value15 > 0) {
//            mySum = mySum + value15
//        }

        document.getElementById("ActTotAd").value = mySum
    }
    function SumTotalPDeaths(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("SepsisDeaths").value);
        var value2 = parseInt(document.getElementById("CancerDeaths").value);
        var value3 = parseInt(document.getElementById("HIVDeaths").value);
        var value4 = parseInt(document.getElementById("EndoDeaths").value);
        var value5 = parseInt(document.getElementById("NeuroDeaths").value);
        var value6 = parseInt(document.getElementById("DementiaDeaths").value);
        var value7 = parseInt(document.getElementById("HeartDeaths").value);
        var value8 = parseInt(document.getElementById("LungDeaths").value);
        var value9 = parseInt(document.getElementById("LiverDeaths").value);
        var value10 = parseInt(document.getElementById("SkinDeaths").value);
        var value11 = parseInt(document.getElementById("MuscleDeaths").value);
        var value12 = parseInt(document.getElementById("KidneyDeaths").value);
        var value13 = parseInt(document.getElementById("InjpoiDeaths").value);
        var value14 = parseInt(document.getElementById("OtherDeaths").value);

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


        document.getElementById("TotalPDeaths").value = mySum
    }
    function SumTotalLiveDis(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("SepsisLiveDis").value);
        var value2 = parseInt(document.getElementById("CancerLiveDis").value);
        var value3 = parseInt(document.getElementById("HIVLiveDis").value);
        var value4 = parseInt(document.getElementById("EndoLiveDis").value);
        var value5 = parseInt(document.getElementById("NeuroLiveDis").value);
        var value6 = parseInt(document.getElementById("DementiaLiveDis").value);
        var value7 = parseInt(document.getElementById("HeartLiveDis").value);
        var value8 = parseInt(document.getElementById("LungLiveDis").value);
        var value9 = parseInt(document.getElementById("LiverLiveDis").value);
        var value10 = parseInt(document.getElementById("SkinLiveDis").value);
        var value11 = parseInt(document.getElementById("MuscleLiveDis").value);
        var value12 = parseInt(document.getElementById("KidneyLiveDis").value);
        var value13 = parseInt(document.getElementById("InjpoiLiveDis").value);
        var value14 = parseInt(document.getElementById("OtherLiveDis").value);

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

        document.getElementById("TotalLiveDis").value = mySum
    }


    function SumTotalPDays(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("SepsisPDays").value);
        var value2 = parseInt(document.getElementById("CancerPDays").value);
        var value3 = parseInt(document.getElementById("HIVPDays").value);
        var value4 = parseInt(document.getElementById("EndoPDays").value);
        var value5 = parseInt(document.getElementById("NeuroPDays").value);
        var value6 = parseInt(document.getElementById("DementiaPDays").value);
        var value7 = parseInt(document.getElementById("HeartPDays").value);
        var value8 = parseInt(document.getElementById("LungPDays").value);
        var value9 = parseInt(document.getElementById("LiverPDays").value);
        var value10 = parseInt(document.getElementById("SkinPDays").value);
        var value11 = parseInt(document.getElementById("MusclePDays").value);
        var value12 = parseInt(document.getElementById("KidneyPDays").value);
        var value13 = parseInt(document.getElementById("InjpoiPDays").value);         
        var value14 = parseInt(document.getElementById("OtherPDays").value);

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
        
        document.getElementById("TotalPDays").value = mySum
    }

    
    // -----------------------NEW D6----------------------------------------------------------------------------------------------------------

  
  
  
    //---Sum Adm D6
    function SumD6Adm(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("Adm_HC_PR").value);
        var value2 = parseInt(document.getElementById("Adm_HC_AL").value);
        var value3 = parseInt(document.getElementById("Adm_HC_HH").value);
        var value4 = parseInt(document.getElementById("Adm_HC_NH").value);
        var value5 = parseInt(document.getElementById("Adm_HC_OTH").value);
        var value6 = parseInt(document.getElementById("Adm_RC_NH").value);
        var value7 = parseInt(document.getElementById("Adm_RC_HOSP").value);
        var value8 = parseInt(document.getElementById("Adm_RC_FREE").value);
        var value9 = parseInt(document.getElementById("Adm_RC_OTH").value);
        var value10 = parseInt(document.getElementById("Adm_IC_HOSP").value);
        var value11 = parseInt(document.getElementById("Adm_IC_NH").value);
        var value12 = parseInt(document.getElementById("Adm_IC_FREE").value);
        var value13 = parseInt(document.getElementById("Adm_IC_OTH").value);
        var value14 = parseInt(document.getElementById("Adm_CC_PR").value);
        var value15 = parseInt(document.getElementById("Adm_CC_AL").value);
        var value16 = parseInt(document.getElementById("Adm_CC_HH").value);
        var value17 = parseInt(document.getElementById("Adm_CC_NH").value);
        var value18 = parseInt(document.getElementById("Adm_CC_OTH").value);



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


        document.getElementById("tadm").value = mySum
    }

    //---Sum Deaths D6
    function SumD6Deaths(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("D_HC_PR").value);
        var value2 = parseInt(document.getElementById("D_HC_AL").value);
        var value3 = parseInt(document.getElementById("D_HC_HH").value);
        var value4 = parseInt(document.getElementById("D_HC_NH").value);
        var value5 = parseInt(document.getElementById("D_HC_OTH").value);
        var value6 = parseInt(document.getElementById("D_RC_NH").value);
        var value7 = parseInt(document.getElementById("D_RC_HOSP").value);
        var value8 = parseInt(document.getElementById("D_RC_FREE").value);
        var value9 = parseInt(document.getElementById("D_RC_OTH").value);
        var value10 = parseInt(document.getElementById("D_IC_HOSP").value);
        var value11 = parseInt(document.getElementById("D_IC_NH").value);
        var value12 = parseInt(document.getElementById("D_IC_FREE").value);
        var value13 = parseInt(document.getElementById("D_IC_OTH").value);
        var value14 = parseInt(document.getElementById("D_CC_PR").value);
        var value15 = parseInt(document.getElementById("D_CC_AL").value);
        var value16 = parseInt(document.getElementById("D_CC_HH").value);
        var value17 = parseInt(document.getElementById("D_CC_NH").value);
        var value18 = parseInt(document.getElementById("D_CC_OTH").value);



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


        document.getElementById("tdeaths").value = mySum
    }

    //---Sum NDD D6
    function SumD6NDD(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("DD_HC_PR").value);
        var value2 = parseInt(document.getElementById("DD_HC_AL").value);
        var value3 = parseInt(document.getElementById("DD_HC_HH").value);
        var value4 = parseInt(document.getElementById("DD_HC_NH").value);
        var value5 = parseInt(document.getElementById("DD_HC_OTH").value);
        var value6 = parseInt(document.getElementById("DD_RC_NH").value);
        var value7 = parseInt(document.getElementById("DD_RC_HOSP").value);
        var value8 = parseInt(document.getElementById("DD_RC_FREE").value);
        var value9 = parseInt(document.getElementById("DD_RC_OTH").value);
        var value10 = parseInt(document.getElementById("DD_IC_HOSP").value);
        var value11 = parseInt(document.getElementById("DD_IC_NH").value);
        var value12 = parseInt(document.getElementById("DD_IC_FREE").value);
        var value13 = parseInt(document.getElementById("DD_IC_OTH").value);
        var value14 = parseInt(document.getElementById("DD_CC_PR").value);
        var value15 = parseInt(document.getElementById("DD_CC_AL").value);
        var value16 = parseInt(document.getElementById("DD_CC_HH").value);
        var value17 = parseInt(document.getElementById("DD_CC_NH").value);
        var value18 = parseInt(document.getElementById("DD_CC_OTH").value);



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


        document.getElementById("tndd").value = mySum
    }

    //---Sum NPD D6
    function SumD6NPD(fld) {
        var sText = document.getElementById(fld).value;
        if (IsNumericPos(sText) == false) {
            document.getElementById(fld).value = ''
            alert("Only enter a positive whole number value!");
        }
        var mySum = 0;
        var value1 = parseInt(document.getElementById("PD_HC_PR").value);
        var value2 = parseInt(document.getElementById("PD_HC_AL").value);
        var value3 = parseInt(document.getElementById("PD_HC_HH").value);
        var value4 = parseInt(document.getElementById("PD_HC_NH").value);
        var value5 = parseInt(document.getElementById("PD_HC_OTH").value);
        var value6 = parseInt(document.getElementById("PD_RC_NH").value);
        var value7 = parseInt(document.getElementById("PD_RC_HOSP").value);
        var value8 = parseInt(document.getElementById("PD_RC_FREE").value);
        var value9 = parseInt(document.getElementById("PD_RC_OTH").value);
        var value10 = parseInt(document.getElementById("PD_IC_HOSP").value);
        var value11 = parseInt(document.getElementById("PD_IC_NH").value);
        var value12 = parseInt(document.getElementById("PD_IC_FREE").value);
        var value13 = parseInt(document.getElementById("PD_IC_OTH").value);
        var value14 = parseInt(document.getElementById("PD_CC_PR").value);
        var value15 = parseInt(document.getElementById("PD_CC_AL").value);
        var value16 = parseInt(document.getElementById("PD_CC_HH").value);
        var value17 = parseInt(document.getElementById("PD_CC_NH").value);
        var value18 = parseInt(document.getElementById("PD_CC_OTH").value);



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


        document.getElementById("tpd").value = mySum
    }






    // C1a validations --------------------------------------------------------------------
    function c1TotalAdmissions(source, arguments) {
        var value1 = parseInt(document.getElementById("TotalAdmissions6").innerHTML);
        var value2 = parseInt(document.getElementById("tadm").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }

    function c1TotalDeaths(source, arguments) {
        var value1 = parseInt(document.getElementById("TotalDeaths6").innerHTML);
        var value2 = parseInt(document.getElementById("tdeaths").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }



    function c1NDD(source, arguments) {
        var value1 = parseInt(document.getElementById("TotalNonDeathDischarges6").innerHTML);
        var value2 = parseInt(document.getElementById("tndd").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }


    

    function totadm(source, arguments) {
        var value1 = parseInt(document.getElementById("ActTotAd").value);
        var value2 = parseInt(document.getElementById("tadm").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }

    function totdeaths(source, arguments) {
        var value1 = parseInt(document.getElementById("TotalPDeaths").value);
        var value2 = parseInt(document.getElementById("tdeaths").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }

    function totdischarges(source, arguments) {
        var value1 = parseInt(document.getElementById("TotalLiveDis").value);
        var value2 = parseInt(document.getElementById("tndd").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }

    function totPatientDays(source, arguments) {
        var value1 = parseInt(document.getElementById("TotalPDays").value);
        var value2 = parseInt(document.getElementById("tpd").value);

        if (value1 != value2) { arguments.IsValid = false; }
    }


    //-----Special Admissions
    function SpecialAdmissions(source, arguments) {
        
        //var value1 = parseInt(document.getElementById("DevDisability").value);
        //var value2 = parseInt(document.getElementById("NumVeterans").value);
        //var value3 = parseInt(document.getElementById("LDTAdm").value);
        

        //if (value3 < (value1 + value2)) { arguments.IsValid = false; }
    }


    function CheckOtherHC(source, arguments) {
        var value1 = parseInt(document.getElementById("Adm_HC_OTH").value);
        var value2 = parseInt(document.getElementById("D_HC_OTH").value);
        var value3 = parseInt(document.getElementById("DD_HC_OTH").value);
        var value4 = parseInt(document.getElementById("PD_HC_OTH").value);
        var c = document.getElementById("HC_OTHER").value;
        if ((value1 > 0 || value2 > 0 || value3 > 0 || value4 > 0)) {

            if (c.length == 0) { arguments.IsValid = false; }


            //alert('value')
        }
    }

    function CheckOtherRC(source, arguments) {
        var value1 = parseInt(document.getElementById("Adm_RC_OTH").value);
        var value2 = parseInt(document.getElementById("D_RC_OTH").value);
        var value3 = parseInt(document.getElementById("DD_RC_OTH").value);
        var value4 = parseInt(document.getElementById("PD_RC_OTH").value);
        var c = document.getElementById("RC_OTHER").value;
        if ((value1 > 0 || value2 > 0 || value3 > 0 || value4 > 0)) {

            if (c.length == 0) { arguments.IsValid = false; }


            //alert('value')
        }
    }

    function CheckOtherIC(source, arguments) {
        var value1 = parseInt(document.getElementById("Adm_IC_OTH").value);
        var value2 = parseInt(document.getElementById("D_IC_OTH").value);
        var value3 = parseInt(document.getElementById("DD_IC_OTH").value);
        var value4 = parseInt(document.getElementById("PD_IC_OTH").value);
        var c = document.getElementById("IC_OTHER").value;
        if ((value1 > 0 || value2 > 0 || value3 > 0 || value4 > 0)) {

            if (c.length == 0) { arguments.IsValid = false; }


            //alert('value')
        }
    }

    function CheckOtherCC(source, arguments) {
        var value1 = parseInt(document.getElementById("Adm_CC_OTH").value);
        var value2 = parseInt(document.getElementById("D_CC_OTH").value);
        var value3 = parseInt(document.getElementById("DD_CC_OTH").value);
        var value4 = parseInt(document.getElementById("PD_CC_OTH").value);
        var c = document.getElementById("CC_OTHER").value;
        if ((value1 > 0 || value2 > 0 || value3 > 0 || value4 > 0)) {

            if (c.length == 0) { arguments.IsValid = false; }


            //alert('value')
        }
    }


    //-------------END NEW D6 --------------------------------------------------------------------------------------------------------------
        // D8 Changes July 2026        
        function sumInputs(inputs) {
            var total = 0;
            inputs.forEach(function (input) {
                // Parse the text value to a float number
                var value = parseInt(input.value);

                // If the input is empty or not a number (NaN), treat it as 0
                if (!isNaN(value)) {
                    total += value;
                }
            });
            return total;
        }
        function sumDignosisPatsPY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsDigsPatsPY');            
            document.getElementById("txtTotalAdmitPY").value = sumInputs(inputs);
        }
        function sumDignosisPatsCY() {
            // Select all inputs with the specific class name
            var inputs = document.querySelectorAll('.clsDigsPatsCY');
            document.getElementById("txtTotalAdmitCY").value = sumInputs(inputs);
        }
        // D8 Ends
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
            font-weight: bold;
        }
        .style17
        {
            width: 710px;
        }
        .style23 {color: #FFFFFF}
        .style36
        {
            color: #0000CC;
        }
        .style38
        {
            text-decoration: underline;
            color: #0000FF;
        }
        .style39
        {
            background-color: #CCCC00;
        }
        .style40
        {
            height: 18px;
        }
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
                                <b style="text-align: center">SECTION D - PATIENT DEMOGRAPHICS (Continued)</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="2" align="center">

   
                                <asp:Label ID="message" runat="server" BackColor="Yellow" Font-Names="Arial" 
                                    Font-Size="12pt" ForeColor="Red"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                If your hospice did not admit patients with disabilities or veterans, enter 0 in 
                                the appropriate space.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;D5.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                SPECIAL POPULATIONS</td>
                            </tr>
                        <tr>
                        <td width="30px">
                                             &nbsp;</td>
                            <td>
                                  &nbsp; 
                                  <table class="style32a">
                                      <tr>
                                          <td width="30px">
                                              a.</td>
                                          <td>
                                             <b>Developmental Disabilities</b></td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                             Developmental disabilities are a diverse group of severe chronic conditions that are due to mental and/or physical impairments. The developmentally disabled have problems with major life activities such as language, mobility, learning, self-help, and independent living. Developmental disabilities begin anytime up to 22 years of age and usually last throughout a person’s lifetime.</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                             Patients admitted in <asp:Label ID="SY1" runat="server" ></asp:Label> with developmental disabilities &nbsp;
                                              <asp:TextBox ID="DevDisability" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="DevDisability" 
                                    ErrorMessage="Number of patients with developmental disabilities" Text="*"></asp:RequiredFieldValidator>
                                    </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              b.</td>
                                          <td>
                                              <b>Veterans</b></td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                             A Veteran is a male or female hospice patient who served in the U.S. armed forces. It is not necessary for a patient to receive hospice services through Veterans benefits to be counted as a veteran.</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                             Patients admitted in <asp:Label ID="SY9" runat="server" ></asp:Label> who were Veterans &nbsp;
                                             <asp:TextBox ID="NumVeterans" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="NumVeterans" 
                                    ErrorMessage="Number of patients who are veterans" Text="*"></asp:RequiredFieldValidator>
                                              <asp:CustomValidator ID="CustomValidator8" runat="server" 
                                                  ClientValidationFunction="SpecialAdmissions" 
                                                  ErrorMessage="The Total sum of the Special Population in D5 cannot exceed the number of New Admissions in D6">*</asp:CustomValidator>
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
                                &nbsp;D6.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                NUMBER OF ADMISSIONS AND DEATHS BY LOCATION <span class="style38">OF CARE BY 
                                LEVEL OF CARE</span></td>
                            </tr>
                            <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                               Report the number of unduplicated, new admissions, deaths, non-death discharges and patient days in each location and level during FY<asp:Label ID="SY4" runat="server"></asp:Label>.</td>
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
                                <u>Admissions:</u> Count each patient only one time. This means patients with multiple 
                                admissions in 
                                <asp:Label ID="SY5" runat="server"></asp:Label> are included only once. <b>Do not include carryovers or 
                                re-admissions.</b></td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                The total admissions in this section should equal total admissions in Section C 
                                (Column H minus B), or
                                (<asp:Label ID="TotalAdmissions6" runat="server" ForeColor="Blue"></asp:Label>)
                            </td>
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
                                <u>Deaths:</u> Total deaths in this section should equal total deaths in Section 
                                C (column I), or
                                (<asp:Label ID="TotalDeaths6" runat="server" ForeColor="Blue"></asp:Label>)
                                .</td>
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
                               <u> Non-Death Discharges:</u>Total non-death discharges should equal total 
                                non-death discharges in Section C (column J), or
                                (<asp:Label ID="TotalNonDeathDischarges6" runat="server" ForeColor="Blue"></asp:Label>)
                                <br />
                                <br />
                                <strong><span class="style39">Total Patient Days should be reported by location 
                                and level of care for all patients who died or were discharged during FY
                                <asp:Label ID="SY11" runat="server"></asp:Label>
                                . Patient Days should equal total patient days reported in Question D7</span></strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="400px" valign="top">
                                            <b>Location of Care and Level of Care</b></td>
                                        <td valign="top">
                                            <b># of New Admissions</b></td>
<td valign="top">
                                            <b># of Deaths</b></td>

                                        <td valign="top">
                                            <b># of Non-Death Discharges</b></td>
                                        
                                        <td valign="top">
                                            <strong>Patient Days</strong></td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Home Care</b></td>
                                        <td colspan="3" bgcolor="Silver">
                                             &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Private Residence of either the patient or caregiver</td>
                                        <td>
                                             <asp:TextBox ID="Adm_HC_PR" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                 MaxLength="7"  onkeyup="SumD6Adm('Adm_HC_PR');"></asp:TextBox>
                                       </td>
<td>
                                            <asp:TextBox ID="D_HC_PR" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7"  onkeyup="SumD6Deaths('D_HC_PR');"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="DD_HC_PR" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                 MaxLength="7"  onkeyup="SumD6NDD('DD_HC_PR');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_PR" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7"  onkeyup="SumD6NPD('PD_HC_PR');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Assisted Living Facility</td>
                                        <td>
                                             <asp:TextBox ID="Adm_HC_AL" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                 MaxLength="7" onkeyup="SumD6Adm('Adm_HC_AL');"></asp:TextBox></td>
<td>
                                            <asp:TextBox ID="D_HC_AL" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6Deaths('D_HC_AL');"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="DD_HC_AL" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                 MaxLength="7" onkeyup="SumD6NDD('DD_HC_AL');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_AL" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_HC_AL');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospice House</td>
                                        <td>
                                            <asp:TextBox ID="Adm_HC_HH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Adm('Adm_HC_HH');"></asp:TextBox></td>
                                        


                                            <td> 
                                                <asp:TextBox ID="D_HC_HH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Deaths('D_HC_HH');"></asp:TextBox></td>

                                             <td><asp:TextBox ID="DD_HC_HH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6NDD('DD_HC_HH');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_HH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_HC_HH');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home </td>
                                        <td>
                                            <asp:TextBox ID="Adm_HC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Adm('Adm_HC_NH');"></asp:TextBox></td>

<td>
                                             <asp:TextBox ID="D_HC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Deaths('D_HC_NH');"></asp:TextBox></td>

                                        <td>
                                            <asp:TextBox ID="DD_HC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6NDD('DD_HC_NH');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_HC_NH');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (Specify)&nbsp;
                                           
                                            <asp:TextBox ID="HC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator16" runat="server" 
                                                ClientValidationFunction="CheckOtherHC" 
                                                ErrorMessage="If you have filled in data for 'Other Home Care', please be sure to specify Other">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6Adm('Adm_HC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6Deaths('D_HC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NDD('DD_HC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_HC_OTH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Respite Care</strong></td>
                                        <td colspan="3" bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home- with contractual relationship with general hospice</td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Adm('Adm_RC_NH');"></asp:TextBox></td>
<td>
                                            <asp:TextBox ID="D_RC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Deaths('D_RC_NH');"></asp:TextBox></td>


                                        <td>
                                            <asp:TextBox ID="DD_RC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6NDD('DD_RC_NH');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_RC_NH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_RC_NH');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospital with contractual relationship with general hospice</td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Adm('Adm_RC_HOSP');"></asp:TextBox></td>
<td>
                                            <asp:TextBox ID="D_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Deaths('D_RC_HOSP');"></asp:TextBox></td>


                                        <td>
                                             <asp:TextBox ID="DD_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6NDD('DD_RC_HOSP');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_RC_HOSP');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Freestanding Inpatient Hospice Facility owned and operated by a general hospice* </td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Adm('Adm_RC_FREE');"></asp:TextBox></td>

<td>
                                            <asp:TextBox ID="D_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6Deaths('D_RC_FREE');"></asp:TextBox></td>

                                        <td>
                                             <asp:TextBox ID="DD_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="7" 
                                    MaxLength="7" onkeyup="SumD6NDD('DD_RC_FREE');"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_RC_FREE');"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (specify)&nbsp; &nbsp;<asp:TextBox ID="RC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator15" runat="server" 
                                                ClientValidationFunction="CheckOtherRC" 
                                                ErrorMessage="If you have filled in data for 'Other Respice care', please be sure to specify Other">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_RC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_RC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_RC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_RC_OTH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>General Inpatient Care</strong></td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospital with contractual relationship with general hospice</td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_IC_HOSP');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_IC_HOSP');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_IC_HOSP');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_IC_HOSP');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home-with contractual relationship with general hospice</td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_IC_NH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_IC_NH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_IC_NH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_IC_NH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Freestanding Inpatient Hospice facility owned and operated by a general hospice*</td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_IC_FREE');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_IC_FREE');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_IC_FREE');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_IC_FREE');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (specify)
                                           
                                            <asp:TextBox ID="IC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator14" runat="server" 
                                                ClientValidationFunction="CheckOtherIC" 
                                                ErrorMessage="If you have filled in data for 'Other General Inpatient care', please be sure to specify Other">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_IC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6Deaths('D_IC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NDD('DD_IC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_OTH" runat="server" BackColor="#FFFFFF" Columns="7" 
                                                MaxLength="7" onkeyup="SumD6NPD('PD_IC_OTH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Continuous Care</strong></td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                        <td bgcolor="Silver">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Private Residence of either the patient or caregiver</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_CC_PR');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_CC_PR');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_CC_PR');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_CC_PR');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Assisted Living Facility</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_CC_AL');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_CC_AL');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_CC_AL');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_CC_AL');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospice House</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_CC_HH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_CC_HH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_CC_HH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_CC_HH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_CC_NH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_CC_NH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_CC_NH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_CC_NH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (Specify)
                                            
                                            <asp:TextBox ID="CC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator13" runat="server" 
                                                ClientValidationFunction="CheckOtherCC" 
                                                ErrorMessage="If you have filled in data for 'Other Continuous Care', please be sure to specify Other">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Adm('Adm_CC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6Deaths('D_CC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NDD('DD_CC_OTH');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="7" MaxLength="7" onkeyup="SumD6NPD('PD_CC_OTH');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>TOTAL</strong></td>
                                        <td>
                                            <asp:TextBox ID="tadm" runat="server" BackColor="#FFFFCC" Columns="7" 
                                                MaxLength="7" Height="24px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tdeaths" runat="server" BackColor="#FFFFCC" Columns="7" 
                                                MaxLength="7" ></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tndd" runat="server" BackColor="#FFFFCC" Columns="7" 
                                                MaxLength="7" ></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tpd" runat="server" BackColor="#FFFFCC" Columns="7" 
                                                MaxLength="7"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">
                                            </td>
                                        <td class="style40">
                                            <asp:CustomValidator ID="CustomValidator11" runat="server" 
                                                ClientValidationFunction="c1TotalAdmissions" 
                                                ErrorMessage="The total entered for Admissions in D6 should equal the # of new admissions reported in Section C1a (column H minus column B)">*</asp:CustomValidator>
                                        </td>
                                        <td class="style40">
                                            <asp:CustomValidator ID="CustomValidator10" runat="server" 
                                                ClientValidationFunction="c1TotalDeaths" 
                                                ErrorMessage="The total entered for Deaths in D6 should equal the # of Deaths reported in Section C1a (column I)">*</asp:CustomValidator>
                                        </td>
                                        <td class="style40">
                                            <asp:CustomValidator ID="CustomValidator7" runat="server" 
                                                ClientValidationFunction="c1NDD" 
                                                ErrorMessage="The total number of Live Discharges in D6 should equal the # of Live Discharges reported in Section C1a (column J)">*</asp:CustomValidator>
                                        </td>
                                        <td class="style40">
                                            <asp:CustomValidator ID="CustomValidator17" runat="server" 
                                                ClientValidationFunction="CheckTotalPDays" 
                                                ErrorMessage="D6 Patient days must equal D7 patient days">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style36" colspan="5">
                                            *This includes facilities operating in building space leased by the general 
                                            hospice if the space is located within a licensed health care facility, such as 
                                            a hospital, nursing home, or assisted living facility.</td>
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
                                &nbsp;D7.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               NUMBER OF PATIENTS BY PRIMARY DIAGNOSIS</td>
                            </tr>
                            <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                              Please provide data for FY<asp:Label ID="SY2" runat="server" ></asp:Label> 
                                &nbsp;regardless of pay source. Data provided should be based only on patient’s 
                                primary diagnosis.</td>
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
                                <u>Admissions:</u> Report the number of unduplicated new admissions in FY<asp:Label
                                    ID="SY6" runat="server" ></asp:Label>. Count each patient only one time. This means patients with multiple admissions in 
                                <asp:Label ID="SY7" runat="server"></asp:Label> are included only once. <b>Do not include carryovers or 
                                re-admissions.</b></td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                The total admissions in this section should equal total admissions in Section C 
                                (Column H minus B).
                                <br />
                                or (
                                <asp:Label ID="TotalAdmissions7" runat="server" ForeColor="Blue"></asp:Label>
                                )</td>
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
                                <u>Deaths:</u> Total deaths in this section should equal total deaths in Section 
                                C (column I). , or (<asp:Label ID="TotalDeaths7" runat="server" 
                                    ForeColor="Blue"></asp:Label>
                                ) .</td>
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
                               <u> Non-Death Discharges:</u>Total non-death discharges should equal total 
                                non-death discharges in Section C (column J), or (<asp:Label 
                                    ID="TotalNonDeathDischarges7" runat="server" ForeColor="Blue"></asp:Label>
                                ) </td>
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
                                <u>Patient Days:</u> Include the total number of days services were provided for all patients who died or were discharged in <asp:Label ID="SY3" runat="server"></asp:Label>.&nbsp;
                                <br />
                                (Dementia Patient Days is a required field. If none, enter 0.)<br />
                                <br />
                                <strong><span class="style39">Total Patient Days should be reported by location 
                                and level of care for all patients who died or were discharged during FY
                                <asp:Label ID="SY12" runat="server"></asp:Label>
                                . Patient Days should equal total patient days reported in Question D6</span></strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td valign="top">
                                            Primary Diagnosis ICD-10 Codes</td>
                                        <td width="100px" valign="top">
                                            Comments</td>
                                        <td valign="top">
                                            # of 
                                            <asp:Label ID="SY8" runat="server"></asp:Label> Admissions (unduplicated)</td>
                                        <td valign="top">
                                            # of Deaths</td>
                                        <td valign="top">
                                            # of Non-Death Discharges </td>
                                        <td width="100px" valign="top">
                                            Patient Days for patients who died or were discharged </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Infectious or Parasitic Diseases (A00-B99)</td>
                                        <td>
                                            Includes sepsis</td>
                                        <td>
                                            <asp:TextBox ID="SepsisAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('SepsisAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="SepsisAd" 
                                                ErrorMessage="Sepsis Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SepsisDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('SepsisDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                ControlToValidate="SepsisDeaths" 
                                                ErrorMessage="Sepsis Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SepsisLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('SepsisLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                ControlToValidate="SepsisLiveDis" 
                                                ErrorMessage="Sepsis Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SepsisPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('SepsisPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                ControlToValidate="SepsisPDays" 
                                                ErrorMessage="Sepsis Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Neoplasm
                                            <br />
                                            (C00-D49)</td>
                                        <td width="100px">
                                            Includes all cancers</td>
                                        <td style="margin-left: 40px">
                                             <asp:TextBox ID="CancerAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('CancerAd');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                 ControlToValidate="CancerAd" ErrorMessage="Cancer Admissions (or enter 0 if none)" 
                                                 Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="CancerDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('CancerDeaths');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                 ControlToValidate="CancerDeaths" 
                                                 ErrorMessage="Cancer  Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CancerLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('CancerLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                ControlToValidate="CancerLiveDis" 
                                                ErrorMessage="Cancer Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CancerPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('CancerPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                ControlToValidate="CancerPDays" 
                                                ErrorMessage="Cancer Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <%--<tr>
                                        <td  colspan="6">
                                            <img alt="" class="style35" src="Images/info.gif" />
                                            <span class="style37"><strong><em>For Dementia, you are required to enter values 
                                            for each column, or enter zero (0,) if zero.</em></strong></span></td>
                                    </tr>--%>
                                    <tr>
                                        <td >
                                            Diseases of the blood, blood forming&nbsp; organs, and some disorders of the immune 
                                            system<br /> (D50-D89)</td>
                                        <td  width="100px">
                                            Includes anemia, HIV.</td>
                                        <td >
                                            <asp:TextBox ID="HIVAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumActTotAd('HIVAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="HIVAd" 
                                                ErrorMessage="Diseases of the blood Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td >
                                            <asp:TextBox ID="HIVDeaths" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumTotalPDeaths('HIVDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="HIVDeaths" 
                                                ErrorMessage="Diseases of the blood Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td >
                                            <asp:TextBox ID="HIVLiveDis" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumTotalLiveDis('HIVLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="HIVLiveDis" 
                                                ErrorMessage="Diseases of the blood Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td >
                                            <asp:TextBox ID="HIVPDays" runat="server" Columns="9" MaxLength="10" 
                                                onkeyup="SumTotalPDays('HIVPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="HeartPDays" 
                                                ErrorMessage="Diseases of the blood Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Endocrine, nutritional and metabolic diseases<br /> (E00-E89)</td>
                                        <td width="100px">
                                            Includes protein/Calorie Malnutrition</td>
                                        <td>
                                            <asp:TextBox ID="EndoAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('EndoAd');"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
                                                ID="RequiredFieldValidator17" runat="server" ControlToValidate="EndoAd" 
                                                ErrorMessage="Endocrine Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="margin-left: 40px">
                                            <asp:TextBox ID="EndoDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('EndoDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                                ControlToValidate="EndoDeaths" ErrorMessage="Endocrine Deaths (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EndoLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('EndoLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                                                ControlToValidate="EndoLiveDis" 
                                                ErrorMessage="Endocrine Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EndoPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('EndoPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                                                ControlToValidate="EndoPDays" 
                                                ErrorMessage="Endocrine Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Mental, behavioral, and neurodevelopment disorders<br /> (F01-F99)</td>
                                        <td width="100px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="NeuroAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('NeuroAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                ControlToValidate="NeuroAd" 
                                                ErrorMessage="Neurodevelopment Disorders Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NeuroDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('NeuroDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                                ControlToValidate="NeuroDeaths" 
                                                ErrorMessage="Neurodevelopment Disorders Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="NeuroLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('NeuroLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                                                 ControlToValidate="NeuroLiveDis" 
                                                 ErrorMessage="Neurodevelopment Disorders Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NeuroPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('NeuroPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                                                ControlToValidate="NeuroPDays" 
                                                ErrorMessage="Neurodevelopment Disorders Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diseases of the nervous system<br /> (G00-G99)</td>
                                        <td width="100px">
                                            Includes dementia, parkisons, ALS</td>
                                        <td>
                                             <asp:TextBox ID="DemAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('DemAd');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                 ControlToValidate="DemAd" ErrorMessage="Nervous System Admissions (or enter 0 if none)" 
                                                 Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="DementiaDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('DementiaDeaths');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                                 ControlToValidate="DementiaDeaths" 
                                                 ErrorMessage="Nervous System Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DementiaLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('DementiaLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                                                ControlToValidate="DementiaLiveDis" 
                                                ErrorMessage="Nervous System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="DementiaPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('DementiaPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                                                 ControlToValidate="DementiaPDays" 
                                                 ErrorMessage="Nervous System Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diseases of the Circulatory System<br /> (I00-I99)</td>
                                        <td width="100px">
                                            Includes heart disease and stroke</td>
                                        <td>
                                            <asp:TextBox ID="HrtAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('HrtAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                ControlToValidate="HrtAd" ErrorMessage="Circulatory System Admissions (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="HeartDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('HeartDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                                                ControlToValidate="HeartDeaths" ErrorMessage="Circulatory System Deaths (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="HeartLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('HeartLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                                                 ControlToValidate="HeartLiveDis" 
                                                 ErrorMessage="Circulatory System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="HeartPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('HeartPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                                                 ControlToValidate="HeartPDays" 
                                                 ErrorMessage="Circulatory System Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diseases of the Respiratory System<br /> (J00-J99)</td>
                                        <td width="100px">
                                            Includes lung disorders</td>
                                        <td>
                                             <asp:TextBox ID="LungAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('LungAd');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                 ControlToValidate="LungAd" 
                                                 ErrorMessage="Respiratory System Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="LungDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('LungDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                                                ControlToValidate="LungDeaths" 
                                                ErrorMessage="Respiratory System Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LungLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('LungLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                                                 ControlToValidate="LungLiveDis" 
                                                 ErrorMessage="Respiratory System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LungPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('LungPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                                                 ControlToValidate="LungPDays" 
                                                 ErrorMessage="Respiratory System Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Disease of the digestive system<br /> (K00-K95)</td>
                                        <td width="100px">
                                            Includes liver disorders</td>
                                        <td>
                                            <asp:TextBox ID="LivAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('LivAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                                ControlToValidate="LivAd" ErrorMessage="Digestive System Admissions (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="LiverDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('LiverDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                                                ControlToValidate="LiverDeaths" ErrorMessage="Digestive System Deaths (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LiverLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('LiverLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                                                 ControlToValidate="LiverLiveDis" 
                                                 ErrorMessage="Digestive System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LiverPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('LiverPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                                                 ControlToValidate="LiverPDays" 
                                                 ErrorMessage="Digestive System Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diseases of skin and subcutaneous tissue<br /> (L00-L99)</td>
                                        <td width="100px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="SkinAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumActTotAd('SkinAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinAd">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SkinDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalPDeaths('SkinDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinDeaths">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SkinLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalLiveDis('SkinLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinLiveDis">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SkinPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalPDays('SkinPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinPDays">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diseases of the musculoskeletal system and tissue<br /> (M00-M99)</td>
                                        <td width="100px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="MuscleAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumActTotAd('MuscleAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MuscleAd">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MuscleDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalPDeaths('MuscleDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MuscleDeaths">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MuscleLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalLiveDis('MuscleLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MuscleLiveDis">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MusclePDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalPDays('MusclePDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MusclePDays">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diseases of the genitourinary system<br /> (N00-N99)</td>
                                        <td width="100px">
                                            Includes kidney disorders</td>
                                        <td>
                                            <asp:TextBox ID="KidneyAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('KidneyAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                                ControlToValidate="KidneyAd" 
                                                ErrorMessage="Genitourinary System Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="KidneyDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('KidneyDeaths');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                                                 ControlToValidate="KidneyDeaths" 
                                                 ErrorMessage="Genitourinary System Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="KidneyLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('KidneyLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                                                ControlToValidate="KidneyLiveDis" 
                                                ErrorMessage="Genitourinary System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="KidneyPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('KidneyPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                                                ControlToValidate="KidneyPDays" 
                                                ErrorMessage="Genirourinary System Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Injury, poisoning, and certain other consequences of external causes<br /> 
                                            (S00-T88)</td>
                                        <td width="100px">
                                            &nbsp;</td>
                                        <td>
                                             <asp:TextBox ID="InjpoiAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('InjpoiAd');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                                 ControlToValidate="InjpoiAd" 
                                                 ErrorMessage="Injury, poisoning Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InjpoiDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('InjpoiDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                                                ControlToValidate="InjpoiDeaths" 
                                                ErrorMessage="Injury, poisoning  Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InjpoiLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('InjpoiLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                                                ControlToValidate="InjpoiLiveDis" 
                                                ErrorMessage="Injury, poisoning  Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InjpoiPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('InjpoiPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                                                ControlToValidate="InjpoiPDays" 
                                                ErrorMessage="Injury, poisoning Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (Specify)<br /> &nbsp;<asp:TextBox ID="DiagOtherName" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox>&nbsp;<asp:CustomValidator ID="CustomValidator1" 
                                                runat="server" 
                                                ErrorMessage="If you have filled in data for 'Other Diagnosis', please be sure to provide the name of the other diagnosis" ClientValidationFunction="CheckOther">*</asp:CustomValidator>
                                        </td>
                                        <td width="100px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="OtherAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('OtherAd');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="OtherDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('OtherDeaths');"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="OtherLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('OtherLiveDis');"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="OtherPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('OtherPDays');"></asp:TextBox></td>
                                     
						
                                    </tr>
                                    <tr>
                                        <td class="style41">
                                            <b>Totals</b></td>
                                        <td class="style41">
                                            </td>
                                        <td class="style41">
                                             <asp:TextBox ID="ActTotAd" runat="server" Columns="10" 
                                    MaxLength="10" BackColor="#FFFFCC"  onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="TotalPDeaths" runat="server" Columns="10" 
                                    MaxLength="10" BackColor="#FFFFCC"  onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                           <asp:TextBox ID="TotalLiveDis" runat="server" Columns="10" 
                                    MaxLength="10" BackColor="#FFFFCC"  onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                             <asp:TextBox ID="TotalPDays" runat="server" Columns="10" 
                                    MaxLength="10" BackColor="#FFFFCC"  onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">
                                            </td>
                                        <td class="style40">
                                            </td>
                                        <td class="style40">
                                            <asp:CustomValidator ID="CustomValidator5" runat="server" 
                                                ClientValidationFunction="totadm" 
                                                ErrorMessage="The total number of new admissions in D7 should equal the # of new admissions D6">*</asp:CustomValidator>
                                        </td>
                                        <td class="style40">
                                           <asp:Label ID="AgTotPatsServed" runat="server" ForeColor="Aqua" style="display:none;" />
                                           <asp:Label ID="TotalCarryovers" runat="server" ForeColor="Aqua" style="display:none;" />
                                            <asp:CustomValidator ID="CustomValidator6" runat="server" 
                                                ClientValidationFunction="totdeaths" 
                                                ErrorMessage="The total number of Deaths in D7 should equal the # of Deaths in D6">*</asp:CustomValidator>
                                        </td>
                                        <td class="style40"><asp:Label ID="AgTotDeaths" runat="server" ForeColor="Aqua" style="display:none;" ></asp:Label>
                                            <asp:CustomValidator ID="CustomValidator12" runat="server" 
                                                ClientValidationFunction="totdischarges" 
                                                ErrorMessage="The total number of Live Discharges in D7 should equal the # of Live Discharges in D6">*</asp:CustomValidator>
                                        </td>
                                        <td class="style40">
                                             <asp:Label ID="AgTotNonDeaths" runat="server" ForeColor="Aqua" style="display:none;" ></asp:Label>
                                            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                                                ClientValidationFunction="totPatientDays" 
                                                ErrorMessage="D6 Patient Days shoud equal D7 Patient Days">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>  
                         <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;D8.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                               NUMBER OF ADMISSIONS FOR PATIENTS WITH ANY DIAGNOSIS</td>
                            </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Provide data for Fiscal Years 2024 and 2025, regardless of payor source, based on any patient need. Patient counts may be duplicated
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
                                <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <th>Patient Diagnosis</th>
                                        <th>FY2024 Number of Admissions</th>
                                        <th>FY2025 Number of Admissions</th>
                                    </tr>
                                    <tr>
                                        <td>1. Serious Mental or Behavioral Health Needs</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtBehavHealthAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress=" return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvBehavHealthAdmitPY" runat="server" 
                                            ControlToValidate="txtBehavHealthAdmitPY" 
                                            ErrorMessage="Behavioral Health Needs required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtBehavHealthAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvBehavHealthAdmitCY" runat="server" 
                                            ControlToValidate="txtBehavHealthAdmitCY" 
                                            ErrorMessage="Behavioral Health Needs required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>2. Wound Care Needs</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtWoundCareAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvWoundCareAdmitPY" runat="server" 
                                            ControlToValidate="txtWoundCareAdmitPY" 
                                            ErrorMessage="Wound Care Needs required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtWoundCareAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvWoundCareAdmitCY" runat="server" 
                                            ControlToValidate="txtWoundCareAdmitCY" 
                                            ErrorMessage="Wound Care Needs required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>3. Complex Social Situations</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtComSocialAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvComSocialAdmitPY" runat="server" 
                                            ControlToValidate="txtComSocialAdmitPY" 
                                            ErrorMessage="Complex Social Situations required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtComSocialAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvComSocialAdmitCY" runat="server" 
                                            ControlToValidate="txtComSocialAdmitCY" 
                                            ErrorMessage="Complex Social Situations required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>4. Severe Infections</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtInfectionAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvInfectionAdmitPY" runat="server" 
                                            ControlToValidate="txtInfectionAdmitPY" 
                                            ErrorMessage="Severe Infections required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtInfectionAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvInfectionAdmitCY" runat="server" 
                                            ControlToValidate="txtInfectionAdmitCY" 
                                            ErrorMessage="Severe Infections required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>5. Oxygen Dependence</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtOxyDependAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvOxyDependAdmitPY" runat="server" 
                                            ControlToValidate="txtOxyDependAdmitPY" 
                                            ErrorMessage="Oxygen Dependence required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtOxyDependAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvOxyDependAdmitCY" runat="server" 
                                            ControlToValidate="txtOxyDependAdmitCY" 
                                            ErrorMessage="Oxygen Dependence required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>6. Aggressive Behavior</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtAggBehavAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvAggBehavAdmitPY" runat="server" 
                                            ControlToValidate="txtAggBehavAdmitPY" 
                                            ErrorMessage="Aggressive Behavior required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtAggBehavAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvAggBehavAdmitCY" runat="server" 
                                            ControlToValidate="txtAggBehavAdmitCY" 
                                            ErrorMessage="Aggressive Behavior required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>7. Requiring Infusion Medication</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtInfuMedAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvInfuMedAdmitPY" runat="server" 
                                            ControlToValidate="txtInfuMedAdmitPY" 
                                            ErrorMessage="Requiring Infusion Medication required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtInfuMedAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvInfuMedAdmitCY" runat="server" 
                                            ControlToValidate="txtInfuMedAdmitCY" 
                                            ErrorMessage="Requiring Infusion Medication required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>8. Requiring Dialysis Services</td>
                                        <td><asp:TextBox CssClass="clsDigsPatsPY" ID="txtDialysisAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsPY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvDialysisAdmitPY" runat="server" 
                                            ControlToValidate="txtDialysisAdmitPY" 
                                            ErrorMessage="Requiring Dialysis Services required" Text="*" />
                                        </td>
                                        <td><asp:TextBox CssClass="clsDigsPatsCY" ID="txtDialysisAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" onchange = "return sumDignosisPatsCY();" onkeypress="return allowonlynumbers();"/>
                                            <asp:RequiredFieldValidator ID="rfvDialysisAdmitCY" runat="server" 
                                            ControlToValidate="txtDialysisAdmitCY" 
                                            ErrorMessage="Requiring Dialysis Services required" Text="*" /></td>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td><asp:TextBox ID="txtTotalAdmitPY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" Enabled="false"/>
                                        </td>
                                        <td><asp:TextBox ID="txtTotalAdmitCY" runat="server" BackColor="#FFFFFF" 
                                            Columns="10" MaxLength="10" Enabled="false"/>
                                        </td>
</tr>                               </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12" align="center">
                               <asp:Label ID="Certi1" runat="server" Visible="False"></asp:Label> <asp:Label ID="msave" runat="server" Text="Saved Successfully" Visible="False" CssClass="btnblue"></asp:Label>
                                                           <br />
                                <asp:Label ID="valMessage" runat="server" BackColor="Yellow" 
                                    ForeColor="#CC3300"></asp:Label>
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
