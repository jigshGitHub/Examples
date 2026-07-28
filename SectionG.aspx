<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionG.aspx.vb" Inherits="SectionG" Debug="true" %>

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
        function CheckMedicarePats(source, arguments) {

            var value1 = parseInt(document.getElementById("HospMedicareDays").value);
            var value2 = parseInt(document.getElementById("HospMedicarePatients").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckMedicaidPats(source, arguments) {

            var value1 = parseInt(document.getElementById("HospMedicaidDays").value);
            var value2 = parseInt(document.getElementById("HospMedicaidPatients").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckMediMCOPats(source, arguments) {

            var value1 = parseInt(document.getElementById("MediMCODays").value);
            var value2 = parseInt(document.getElementById("MediMCOPats").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckComPats(source, arguments) {

            var value1 = parseInt(document.getElementById("ComTot").value);
            var value2 = parseInt(document.getElementById("ComServed").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckComNonMCOPats(source, arguments) {

            var value1 = parseInt(document.getElementById("ComNonMCOTot").value);
            var value2 = parseInt(document.getElementById("ComNonMCOServed").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckComMCOPats(source, arguments) {

            var value1 = parseInt(document.getElementById("ComMCOTot").value);
            var value2 = parseInt(document.getElementById("ComMCOServed").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckBluePats(source, arguments) {

            var value1 = parseInt(document.getElementById("BlueTot").value);
            var value2 = parseInt(document.getElementById("BlueServed").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckBlueNonMCOPats(source, arguments) {

            var value1 = parseInt(document.getElementById("BlueNonMCOTot").value);
            var value2 = parseInt(document.getElementById("BlueNonMCOServed").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckBlueMCOPats(source, arguments) {

            var value1 = parseInt(document.getElementById("BlueMCOTot").value);
            var value2 = parseInt(document.getElementById("BlueMCOServed").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckSelfPats(source, arguments) {

            var value1 = parseInt(document.getElementById("SelfPayDays").value);
            var value2 = parseInt(document.getElementById("SelfPayPatients").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckUncompPats(source, arguments) {

            var value1 = parseInt(document.getElementById("UnChDays").value);
            var value2 = parseInt(document.getElementById("UnChPats").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckOtherPats(source, arguments) {

            var value1 = parseInt(document.getElementById("OtherDays").value);
            var value2 = parseInt(document.getElementById("OtherPatients").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }

        function CheckMedicareDays(source, arguments) {

            var value1 = parseInt(document.getElementById("HospMedicarePatients").value);
            var value2 = parseInt(document.getElementById("HospMedicareDays").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckMedicaidDays(source, arguments) {

            var value1 = parseInt(document.getElementById("HospMedicaidPatients").value);
            var value2 = parseInt(document.getElementById("HospMedicaidDays").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckMediMCODays(source, arguments) {

            var value1 = parseInt(document.getElementById("MediMCOPats").value);
            var value2 = parseInt(document.getElementById("MediMCODays").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckComDays(source, arguments) {

            var value1 = parseInt(document.getElementById("ComServed").value);
            var value2 = parseInt(document.getElementById("ComTot").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckComNonMCODays(source, arguments) {

            var value1 = parseInt(document.getElementById("ComNonMCOServed").value);
            var value2 = parseInt(document.getElementById("ComNonMCOTot").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckComMCODays(source, arguments) {

            var value1 = parseInt(document.getElementById("ComMCOServed").value);
            var value2 = parseInt(document.getElementById("ComMCOTot").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckBlueDays(source, arguments) {

            var value1 = parseInt(document.getElementById("BlueServed").value);
            var value2 = parseInt(document.getElementById("BlueTot").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckBlueNonMCODays(source, arguments) {

            var value1 = parseInt(document.getElementById("BlueNonMCOServed").value);
            var value2 = parseInt(document.getElementById("BlueNonMCOTot").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckBlueMCODays(source, arguments) {

            var value1 = parseInt(document.getElementById("BlueMCOServed").value);
            var value2 = parseInt(document.getElementById("BlueMCOTot").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckSelfDays(source, arguments) {

            var value1 = parseInt(document.getElementById("SelfPayPatients").value);
            var value2 = parseInt(document.getElementById("SelfPayDays").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckUncompDays(source, arguments) {

            var value1 = parseInt(document.getElementById("UnChPats").value);
            var value2 = parseInt(document.getElementById("UnChDays").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }
        function CheckOtherDays(source, arguments) {

            var value1 = parseInt(document.getElementById("OtherPatients").value);
            var value2 = parseInt(document.getElementById("OtherDays").value);

            if (value1 > 0) {

                arguments.IsValid = (value2 > 0);

            }
        }

        function checknumber(fld) {

            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
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

        function checkdoubledec(fld, revenueOrExpense) {

            var sText = document.getElementById(fld).value;
            if (IsNumericDec(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive numeric value!");
            }
            if (revenueOrExpense == 1)
                calculateTotalRevenue(sText)
            else
                calculateTotalExpense(sText)
        }


        function IsNumericDec(sText) {
            var ValidChars = ".0123456789-";
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

        function checkdouble(fld, revenueOrExpense) {

            var sText = document.getElementById(fld).value;
            if (IsNumericPosDec(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive numeric value!");
            }
            if (revenueOrExpense == 1)
                calculateTotalRevenue(sText)
            else
                calculateTotalExpense(sText)
        }

        function IsNumericPosDec(sText) {
            var ValidChars = ".0123456789";
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

        function calculateTotalRevenue(value) {
            //alert("Total revenue:" + value)
            var v1 = parseInt(document.getElementById("HospServRev").value);
            var v2 = parseInt(document.getElementById("TotAgFundRev").value);
            var v3 = parseInt(document.getElementById("OtherAgRev").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            if (v3 > 0) {
                sum = sum + v3
            }

            document.getElementById("LLRevenue").value = sum
        }
        function calculateTotalExpense(value) {
            //alert("Total expense:" + value)

            var v1 = parseInt(document.getElementById("HospServExp").value);
            var v2 = parseInt(document.getElementById("TotAgFundExp").value);
            var v3 = parseInt(document.getElementById("OtherAgExp").value);
            var v4 = parseInt(document.getElementById("OverheadExp").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            if (v3 > 0) {
                sum = sum + v3
            }
            if (v4 > 0) {
                sum = sum + v4
            }

            document.getElementById("LLExpenses").value = sum
        }

        //---Sum row for totals
        function SumTotPayerPats(fld) {
            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive whole number value!");
            }

            var v1 = parseInt(document.getElementById("ComMCOServed").value);
            var v2 = parseInt(document.getElementById("ComNonMCOServed").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            document.getElementById("ComServed").value = sum

            var v3 = parseInt(document.getElementById("BlueNonMCOServed").value);
            var v4 = parseInt(document.getElementById("BlueMCOServed").value);
            var sum1 = 0

            if (v3 > 0) {
                sum1 = sum1 + v3
            }
            if (v4 > 0) {
                sum1 = sum1 + v4
            }
            document.getElementById("BlueServed").value = sum1

            var mySum = 0;
            var value1 = parseInt(document.getElementById("HospMedicarePatients").value);
            var value2 = parseInt(document.getElementById("HospMedicaidPatients").value);
            var value3 = parseInt(document.getElementById("MediMCOPats").value);
            var value4 = parseInt(document.getElementById("ComServed").value);
            var value5 = parseInt(document.getElementById("BlueServed").value);
            var value6 = parseInt(document.getElementById("SelfPayPatients").value);
            var value7 = parseInt(document.getElementById("UnChPats").value);
            var value8 = parseInt(document.getElementById("OtherPatients").value);
            var value9 = parseInt(document.getElementById("ChyPats").value);

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
            document.getElementById("TotHospPatients").value = mySum
        }

        function SumRoutineDays(fld) {
            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive whole number value!");
            }
            var v1 = parseInt(document.getElementById("ComMCORoutine").value);
            var v2 = parseInt(document.getElementById("ComNonMCORoutine").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            document.getElementById("ComRoutine").value = sum
            var v3 = parseInt(document.getElementById("BlueMCORoutine").value);
            var v4 = parseInt(document.getElementById("BlueNonMCORoutine").value);
            var sum1 = 0
            if (v3 > 0) {
                sum1 = sum1 + v3
            }
            if (v4 > 0) {
                sum1 = sum1 + v4
            }
            document.getElementById("BlueRoutine").value = sum1
            var mySum = 0;
            var value1 = parseInt(document.getElementById("MedRoutine").value);
            var value2 = parseInt(document.getElementById("MediRoutine").value);
            var value3 = parseInt(document.getElementById("MediMCORoutine").value);
            var value4 = parseInt(document.getElementById("ComRoutine").value);
            var value5 = parseInt(document.getElementById("BlueRoutine").value);
            var value6 = parseInt(document.getElementById("SelfRoutine").value);
            var value7 = parseInt(document.getElementById("UnChRoutine").value);
            var value8 = parseInt(document.getElementById("OtherRoutine").value);
            var value9 = parseInt(document.getElementById("ChyRoutine").value);

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
            document.getElementById("LevelRoutine").value = mySum
        }
        function SumInpatientDays(fld) {
            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive whole number value!");
            }
            var v1 = parseInt(document.getElementById("ComMCOInpatient").value);
            var v2 = parseInt(document.getElementById("ComNonMCOInpatient").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            document.getElementById("ComInpatient").value = sum
            var v3 = parseInt(document.getElementById("BlueMCOInpatient").value);
            var v4 = parseInt(document.getElementById("BlueNonMCOInpatient").value);
            var sum1 = 0
            if (v3 > 0) {
                sum1 = sum1 + v3
            }
            if (v4 > 0) {
                sum1 = sum1 + v4
            }
            document.getElementById("BlueInpatient").value = sum1
            var mySum = 0;
            var value1 = parseInt(document.getElementById("MedInpatient").value);
            var value2 = parseInt(document.getElementById("MediInpatient").value);
            var value3 = parseInt(document.getElementById("MediMCOInpat").value);
            var value4 = parseInt(document.getElementById("ComInpatient").value);
            var value5 = parseInt(document.getElementById("BlueInpatient").value);
            var value6 = parseInt(document.getElementById("SelfInpatient").value);
            var value7 = parseInt(document.getElementById("UnChInpat").value);
            var value8 = parseInt(document.getElementById("OtherInpatient").value);
            var value9 = parseInt(document.getElementById("ChyInpat").value);

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
            document.getElementById("LevelInpatient").value = mySum
        }
        function SumRespiteDays(fld) {
            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive whole number value!");
            }
            var v1 = parseInt(document.getElementById("ComMCORespite").value);
            var v2 = parseInt(document.getElementById("ComNonMCORespite").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            document.getElementById("ComRespite").value = sum
            var v3 = parseInt(document.getElementById("BlueMCORespite").value);
            var v4 = parseInt(document.getElementById("BlueNonMCORespite").value);
            var sum1 = 0
            if (v3 > 0) {
                sum1 = sum1 + v3
            }
            if (v4 > 0) {
                sum1 = sum1 + v4
            }
            document.getElementById("BlueRespite").value = sum1
            var mySum = 0;
            var value1 = parseInt(document.getElementById("MedRespite").value);
            var value2 = parseInt(document.getElementById("MediRespite").value);
            var value3 = parseInt(document.getElementById("MediMCORespite").value);
            var value4 = parseInt(document.getElementById("ComRespite").value);
            var value5 = parseInt(document.getElementById("BlueRespite").value);
            var value6 = parseInt(document.getElementById("SelfRespite").value);
            var value7 = parseInt(document.getElementById("UnChRespite").value);
            var value8 = parseInt(document.getElementById("OtherRespite").value);
            var value9 = parseInt(document.getElementById("ChyRespite").value);

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
            document.getElementById("LevelRespite").value = mySum
        }
        function SumContinuousDays(fld) {
            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive whole number value!");
            }
            var v1 = parseInt(document.getElementById("ComMCOContinuous").value);
            var v2 = parseInt(document.getElementById("ComNonMCOContinuous").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            document.getElementById("ComContinuous").value = sum
            var v3 = parseInt(document.getElementById("BlueMCOContinuous").value);
            var v4 = parseInt(document.getElementById("BlueNonMCOContinuous").value);
            var sum1 = 0
            if (v3 > 0) {
                sum1 = sum1 + v3
            }
            if (v4 > 0) {
                sum1 = sum1 + v4
            }
            document.getElementById("BlueContinuous").value = sum1
            var mySum = 0;
            var value1 = parseInt(document.getElementById("MedContinuous").value);
            var value2 = parseInt(document.getElementById("MediContinuous").value);
            var value3 = parseInt(document.getElementById("MediMCOCont").value);
            var value4 = parseInt(document.getElementById("ComContinuous").value);
            var value5 = parseInt(document.getElementById("BlueContinuous").value);
            var value6 = parseInt(document.getElementById("SelfContinuous").value);
            var value7 = parseInt(document.getElementById("UnChCont").value);
            var value8 = parseInt(document.getElementById("OtherContinuous").value);
            var value9 = parseInt(document.getElementById("ChyCont").value);

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
            document.getElementById("LevelContinuous").value = mySum
        }
        function SumTotPayerDays(fld) {
            var sText = document.getElementById(fld).value;
            if (IsNumericPos(sText) == false) {
                document.getElementById(fld).value = ''
                alert("Only enter a positive whole number value!");
            }
            var v1 = parseInt(document.getElementById("ComMCOTot").value);
            var v2 = parseInt(document.getElementById("ComNonMCOTot").value);
            var sum = 0
            if (v1 > 0) {
                sum = sum + v1
            }
            if (v2 > 0) {
                sum = sum + v2
            }
            document.getElementById("ComTot").value = sum
            var v3 = parseInt(document.getElementById("BlueMCOTot").value);
            var v4 = parseInt(document.getElementById("BlueNonMCOTot").value);
            var sum1 = 0
            if (v3 > 0) {
                sum1 = sum1 + v3
            }
            if (v4 > 0) {
                sum1 = sum1 + v4
            }
            document.getElementById("BlueTot").value = sum1
            var mySum = 0;
            var value1 = parseInt(document.getElementById("HospMedicareDays").value);
            var value2 = parseInt(document.getElementById("HospMedicaidDays").value);
            var value3 = parseInt(document.getElementById("MediMCODays").value);
            var value4 = parseInt(document.getElementById("ComTot").value);
            var value5 = parseInt(document.getElementById("BlueTot").value);
            var value6 = parseInt(document.getElementById("SelfPayDays").value);
            var value7 = parseInt(document.getElementById("UnChDays").value);
            var value8 = parseInt(document.getElementById("OtherDays").value);
            var value9 = parseInt(document.getElementById("ChyDays").value);

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
            document.getElementById("TotHospDays").value = mySum
        }

        function Summedicare(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("MedRoutine").value);
            var value2 = parseInt(document.getElementById("MedInpatient").value);
            var value3 = parseInt(document.getElementById("MedRespite").value);
            var value4 = parseInt(document.getElementById("MedContinuous").value);
            var value5 = parseInt(document.getElementById("HospMedicareDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function Summedicaid(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("MediRoutine").value);
            var value2 = parseInt(document.getElementById("MediInpatient").value);
            var value3 = parseInt(document.getElementById("MediRespite").value);
            var value4 = parseInt(document.getElementById("MediContinuous").value);
            var value5 = parseInt(document.getElementById("HospMedicaidDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumMediMCODaysCheck(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("MediMCORoutine").value);
            var value2 = parseInt(document.getElementById("MediMCOInpat").value);
            var value3 = parseInt(document.getElementById("MediMCORespite").value);
            var value4 = parseInt(document.getElementById("MediMCOCont").value);
            var value5 = parseInt(document.getElementById("MediMCODays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function Sumcom(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComRoutine").value);
            var value2 = parseInt(document.getElementById("ComInpatient").value);
            var value3 = parseInt(document.getElementById("ComRespite").value);
            var value4 = parseInt(document.getElementById("ComContinuous").value);
            var value5 = parseInt(document.getElementById("ComTot").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumcomNmco(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCORoutine").value);
            var value2 = parseInt(document.getElementById("ComNonMCOInpatient").value);
            var value3 = parseInt(document.getElementById("ComNonMCORespite").value);
            var value4 = parseInt(document.getElementById("ComNonMCOContinuous").value);
            var value5 = parseInt(document.getElementById("ComNonMCOTot").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumcomMco(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCORoutine").value);
            var value2 = parseInt(document.getElementById("ComNonMCOInpatient").value);
            var value3 = parseInt(document.getElementById("ComNonMCORespite").value);
            var value4 = parseInt(document.getElementById("ComNonMCOContinuous").value);
            var value5 = parseInt(document.getElementById("ComNonMCOTot").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function Sumblue(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueRoutine").value);
            var value2 = parseInt(document.getElementById("BlueInpatient").value);
            var value3 = parseInt(document.getElementById("BlueRespite").value);
            var value4 = parseInt(document.getElementById("BlueContinuous").value);
            var value5 = parseInt(document.getElementById("BlueTot").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumblueNmco(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCORoutine").value);
            var value2 = parseInt(document.getElementById("BlueNonMCOInpatient").value);
            var value3 = parseInt(document.getElementById("BlueNonMCORespite").value);
            var value4 = parseInt(document.getElementById("BlueNonMCOContinuous").value);
            var value5 = parseInt(document.getElementById("BlueNonMCOTot").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumblueMco(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueMCORoutine").value);
            var value2 = parseInt(document.getElementById("BlueMCOInpatient").value);
            var value3 = parseInt(document.getElementById("BlueMCORespite").value);
            var value4 = parseInt(document.getElementById("BlueMCOContinuous").value);
            var value5 = parseInt(document.getElementById("BlueMCOTot").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function Sumothpriv(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("OtherRoutine").value);
            var value2 = parseInt(document.getElementById("OtherInpatient").value);
            var value3 = parseInt(document.getElementById("OtherRespite").value);
            var value4 = parseInt(document.getElementById("OtherContinuous").value);
            var value5 = parseInt(document.getElementById("OtherDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function Sumself(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("SelfRoutine").value);
            var value2 = parseInt(document.getElementById("SelfInpatient").value);
            var value3 = parseInt(document.getElementById("SelfRespite").value);
            var value4 = parseInt(document.getElementById("SelfContinuous").value);
            var value5 = parseInt(document.getElementById("SelfPayDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumUnChDaysCheck(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("UnChRoutine").value);
            var value2 = parseInt(document.getElementById("UnChInpat").value);
            var value3 = parseInt(document.getElementById("UnCHRespite").value);
            var value4 = parseInt(document.getElementById("UnChCont").value);
            var value5 = parseInt(document.getElementById("UnChDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }

        function Sumother(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("OtherRoutine").value);
            var value2 = parseInt(document.getElementById("OtherInpatient").value);
            var value3 = parseInt(document.getElementById("OtherRespite").value);
            var value4 = parseInt(document.getElementById("OtherContinuous").value);
            var value5 = parseInt(document.getElementById("OtherDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function Sumtot(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("LevelRoutine").value);
            var value2 = parseInt(document.getElementById("LevelInpatient").value);
            var value3 = parseInt(document.getElementById("LevelRespite").value);
            var value4 = parseInt(document.getElementById("LevelContinuous").value);
            var value5 = parseInt(document.getElementById("TotHospDays").value);

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
                arguments.IsValid = (value5 == mySum);
            }

        }
        function SumblueManServed(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCOServed").value);
            var value2 = parseInt(document.getElementById("BlueMCOServed").value);
            var value3 = parseInt(document.getElementById("BlueServed").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumblueManRoutine(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCORoutine").value);
            var value2 = parseInt(document.getElementById("BlueMCORoutine").value);
            var value3 = parseInt(document.getElementById("BlueRoutine").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumblueManInpatient(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCOInpatient").value);
            var value2 = parseInt(document.getElementById("BlueMCOInpatient").value);
            var value3 = parseInt(document.getElementById("BlueInpatient").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumblueManRespite(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCORespite").value);
            var value2 = parseInt(document.getElementById("BlueMCORespite").value);
            var value3 = parseInt(document.getElementById("BlueRespite").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumblueManContinuous(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCOContinuous").value);
            var value2 = parseInt(document.getElementById("BlueMCOContinuous").value);
            var value3 = parseInt(document.getElementById("BlueContinuous").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumblueManTot(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("BlueNonMCOTot").value);
            var value2 = parseInt(document.getElementById("BlueMCOTot").value);
            var value3 = parseInt(document.getElementById("BlueTot").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumcomManServed(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCOServed").value);
            var value2 = parseInt(document.getElementById("ComMCOServed").value);
            var value3 = parseInt(document.getElementById("ComServed").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumcomManRoutine(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCORoutine").value);
            var value2 = parseInt(document.getElementById("ComMCORoutine").value);
            var value3 = parseInt(document.getElementById("ComRoutine").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumcomManInpatient(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCOInpatient").value);
            var value2 = parseInt(document.getElementById("ComMCOInpatient").value);
            var value3 = parseInt(document.getElementById("ComInpatient").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumcomManRespite(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCORespite").value);
            var value2 = parseInt(document.getElementById("ComMCORespite").value);
            var value3 = parseInt(document.getElementById("ComRespite").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumcomManContinuous(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCOContinuous").value);
            var value2 = parseInt(document.getElementById("ComMCOContinuous").value);
            var value3 = parseInt(document.getElementById("ComContinuous").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function SumcomManTot(source, arguments) {

            var mySum = 0;
            var value1 = parseInt(document.getElementById("ComNonMCOTot").value);
            var value2 = parseInt(document.getElementById("ComMCOTot").value);
            var value3 = parseInt(document.getElementById("ComTot").value);


            if (value1 > 0) {
                mySum = mySum + value1
            }
            if (value2 > 0) {
                mySum = mySum + value2
            }

            if (value3 > 0) {
                arguments.IsValid = (value3 == mySum);
            }

        }
        function ARDaysValue(source, arguments) {
            var days = parseInt(document.getElementById("ARDays").value);
            var limitedID = document.getElementById("UserName").innerHTML;

            if (limitedID != "MD07413" && (limitedID != "MD07419") && (limitedID != "MD07441")) {
                arguments.IsValid = (days > 0);
            }
        }

        function G1Complete(source, arguments) {
            var mySum = 0;
            var value1 = parseInt(document.getElementById("TotHospPatients").value);
            var value6 = parseInt(document.getElementById("TotHospDays").value);
            if (value1 == 0 || value6 == 0) { arguments.IsValid = false; }
        }
        function validateDecimal(textbox, maxDecimals = 2) {
            var originalValue = textbox.value;

            var isNegative = originalValue.startsWith('-');

            var cleanValue = originalValue.replace(/[^0-9.]/g, '');
            var parts = cleanValue.split('.');

            if (parts.length > 2) {
                cleanValue = parts[0] + '.' + parts.slice(1).join('');
                parts = cleanValue.split('.');
            }

            if (parts.length === 2 && parts[1].length > maxDecimals) {
                cleanValue = parts[0] + '.' + parts[1].substring(0, maxDecimals);
            }

            if (isNegative && cleanValue !== '') {
                cleanValue = '-' + cleanValue;
            }
            else if (isNegative && originalValue === '-') {
                cleanValue = '-';
            }

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
        function sumG2Revenue(clsName1, textId1, clsName2, textId2) {
            var inputs = document.querySelectorAll(clsName1);
            document.getElementById(textId1).value = sumInputs(inputs);
            inputs = document.querySelectorAll(clsName2);
            document.getElementById(textId2).value = sumInputs(inputs);
        }
    </script>
    <style type="text/css">
        .style1 {
            width: 700px;
        }

        .style2 {
            width: 675px;
        }

        .style9 {
            width: 100%;
            background-color: #666666;
        }

        .style10 {
            text-align: center;
        }

        .style11 {
            width: 30px;
        }

        .style12 {
            width: 100%;
        }

        .style15 {
            height: 15px;
            font-weight: bold;
        }

        .style17 {
            width: 710px;
        }

        .style23 {
            color: #FFFFFF
        }



        .style35 {
            width: 150px;
        }

        .style36 {
            width: 150px;
            font-weight: bold;
            height: 19px;
        }

        .style37 {
            height: 19px;
            font-weight: bold;
        }



        .style38 {
            height: 19px;
        }

        .style39 {
            width: 150px;
            height: 19px;
        }



        .style40 {
            width: 150px;
            font-weight: bold;
        }



        .style41 {
            height: 24px;
        }



        .style42 {
            color: #CC3300;
        }
    </style>
</head>
<body onkeypress="DisableEnter()">
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

        C<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>

                    <table cellpadding="5" cellspacing="0" class="style1" align="center"
                        bgcolor="White">
                        <tr>
                            <td style="background-color: #666666" class="style17">
                                <img alt="" src="Images/Banner.jpg" style="width: 700px; height: 92px" /></td>
                        </tr>
                        <tr bordercolor="#666666" bgcolor="#666666" style='border: 0px solid #666666;'>
                            <td style='border: 0px solid #666666;' class="style28a">
                                <span class="style23" style='border: 0px solid #666666;'>User Name
                     
            <asp:Label ID="UserName" runat="server" />
                                    <br />

                                    <asp:Label ID="lblFirstname" runat="server" />&nbsp;<asp:Label ID="lblLastName" runat="server" />
                                    <br />
                                </span>

                            </td>
                        </tr>
                        <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                            <td>
                                <table cellpadding="0" cellspacing="0" class="style32a">
                                    <tr>
                                        <td align="right"><a href="#" onclick="javascript:window.print(); return false;">
                                            <asp:Button ID="printbtn" runat="server" CssClass="btn3" Text="PRINT THIS PAGE" CausesValidation="False" /></a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <table align="center" cellpadding="0" cellspacing="0" class="style2">
                                    <tr>
                                        <td colspan="2" align="center">
                                            <b style="text-align: center">SECTION G - REVENUE AND PAYER MIX</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">Please complete the following for FY
                                            <asp:Label ID="SY1" runat="server"></asp:Label>.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;G1.</td>
                                        <td class="style15" bgcolor="#CCCCCC">LEVEL OF CARE AND PAY SOURCE (PART II)</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">

                                            <b>Number of Patients Served:</b> Do <u>not</u> count re-admissions within the same payment 
                                source.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">

                                            <asp:Label ID="license_type" runat="server" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style12">Please provide patient days for all patients served, including those in nursing facilities, during FY
                                            <asp:Label ID="SY4" runat="server"></asp:Label>. Patients who changed primary pay source during FY
                                            <asp:Label ID="SY2" runat="server"></asp:Label>
                                            should be reported with the number of days of care recorded for each pay source (count each day only once even if there is more than one pay source on any given day).<br />
                                            </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style12"><b>Charity Care</b></td>                                            
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style12"><b>Definition:</b></td>                                            
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style12">
                                            <ul>
                                                <li>Charity care means care for which there is no means of payment by the patient or any third-party payer.</li>
                                                <li>Charity care does not mean uninsured or partially insured days of care designated as deductibles or co-payments in patient insurance plans, nor that portion of charges not paid as a consequence of either a
                                                    contract or agreement between a provider and insurer, or a waiver of payment due to family relationship, friendship, or professional courtesy.
                                                </li>
                                                <li>Charity care does not include bad debt.</li>
                                            </ul>
                                        </td>                                            
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style12"><span class="style42"><strong>Note: Please remove Zero in front of any number to get correct calculation.</strong></span></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                                <tr>
                                                    <td valign="top" class="style37" colspan="2">Hospice Payment Source</td>
                                                    <td valign="top">
                                                        <b>(1)<br />
                                                            Number of Patients Served</b></td>
                                                    <td class="style35" valign="top">
                                                        <b>(2)<br />
                                                            Days of Routine Home Care<br />
                                                        </b>
                                                    </td>
                                                    <td class="style40" valign="top">(3)<br />
                                                        Days of Inpatient Care</td>
                                                    <td class="style40" valign="top">(4)<br />
                                                        Days of Respite Care</td>
                                                    <td class="style40" valign="top">(5)<br />
                                                        Days of Continuous Care</td>
                                                    <td class="style40" valign="top">(6)<br />
                                                        Total Patient Care Days</td>
                                                </tr>
                                                <tr>
                                                    <td width="250px" colspan="2">a. Hospice Medicare</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="HospMedicarePatients" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('HospMedicarePatients');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator1" runat="server" 
                         ClientValidationFunction="CheckMedicarePats" ErrorMessage="Please enter number of patients served (Medicare).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="MedRoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('MedRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="MedInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('MedInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="MedRespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('MedRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="MedContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('MedContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="HospMedicareDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('HospMedicareDays');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator13" runat="server" 
                         ClientValidationFunction="CheckMedicareDays" ErrorMessage="Please enter number of patient days (Medicare).">*</asp:CustomValidator>
                                        <asp:CustomValidator ID="CustomValidator25" runat="server" 
                         ClientValidationFunction="Summedicare" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style38" colspan="2">b. Hospice General Medicaid</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="HospMedicaidPatients" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('HospMedicaidPatients');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator2" runat="server" 
                         ClientValidationFunction="CheckMedicaidPats" ErrorMessage="Please enter number of patients served (General Medicaid).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediRoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('MediRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('MediInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediRespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('MediRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('MediContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="HospMedicaidDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('HospMedicaidDays');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator14" runat="server" 
                         ClientValidationFunction="CheckMedicaidDays" ErrorMessage="Please enter number of patient days (General Medicaid).">*</asp:CustomValidator>--%>
                                                        <%--<asp:CustomValidator ID="CustomValidator26" runat="server" 
                         ClientValidationFunction="Summedicaid" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="style38" width="200px" colspan="2">c. Hospice Medicaid MCO</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="MediMCOPats" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('MediMCOPats');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator3" runat="server" 
                         ClientValidationFunction="CheckMediMCOPats" ErrorMessage="Please enter number of patients served (Medicaid MCO).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediMCORoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('MediMCORoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediMCOInpat" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('MediMCOInpat');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediMCORespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('MediMCORespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediMCOCont" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('MediMCOCont');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="MediMCODays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('MediMCODays');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator15" runat="server" 
                         ClientValidationFunction="CheckMediMCODays" ErrorMessage="Please enter number of patient days (Medicaid MCO).">*</asp:CustomValidator>--%>
                                                        <%--<asp:CustomValidator ID="CustomValidator27" runat="server" 
                         ClientValidationFunction="SumMediMCODaysCheck" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%>  </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style38" colspan="2">d. Total Managed Care or Private Insurance (do not include Blue Cross)</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ComServed" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator4" runat="server" 
                         ClientValidationFunction="CheckComPats" ErrorMessage="Please enter number of patients served (Commercial Insurance).">*</asp:CustomValidator>
                                            <asp:CustomValidator ID="CustomValidator44" runat="server" 
                         ClientValidationFunction="SumcomManServed" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%></td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComRoutine" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator45" runat="server" 
                         ClientValidationFunction="SumcomManRoutine" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComInpatient" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator46" runat="server" 
                         ClientValidationFunction="SumcomManInpatient" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComRespite" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator47" runat="server" 
                         ClientValidationFunction="SumcomManRespite" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComContinuous" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator48" runat="server" 
                         ClientValidationFunction="SumcomManContinuous" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComTot" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator16" runat="server" 
                         ClientValidationFunction="CheckComDays" ErrorMessage="Please enter number of patient days (Commercial Insurance).">*</asp:CustomValidator>
                                             <asp:CustomValidator ID="CustomValidator28" runat="server" 
                         ClientValidationFunction="Sumcom" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator><asp:CustomValidator ID="CustomValidator49" runat="server" 
                         ClientValidationFunction="SumcomManTot" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%></td>
                                                </tr>
                                                <tr>
                                                    <td width="10px"></td>
                                                    <td width="200px">d1. Commercial Non-Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ComNonMCOServed" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('ComNonMCOServed');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator5" runat="server" 
                         ClientValidationFunction="CheckComNonMCOPats" ErrorMessage="Please enter number of patients served (Non-MCO Commercial Insurance).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComNonMCORoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('ComNonMCORoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComNonMCOInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('ComNonMCOInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComNonMCORespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('ComNonMCORespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComNonMCOContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('ComNonMCOContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComNonMCOTot" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('ComNonMCOTot');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator17" runat="server" 
                         ClientValidationFunction="CheckComNonMCODays" ErrorMessage="Please enter number of patient days (Non-MCO Commercial Insurance).">*</asp:CustomValidator>
                                       <asp:CustomValidator ID="CustomValidator29" runat="server" 
                         ClientValidationFunction="SumcomNmco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%></td>
                                                </tr>
                                                <tr>
                                                    <td width="10px"></td>
                                                    <td width="200px">d2. Commercial Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ComMCOServed" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('ComMCOServed');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator6" runat="server" 
                         ClientValidationFunction="CheckComMCOPats" ErrorMessage="Please enter number of patients served (MCO Commercial Insurance).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComMCORoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('ComMCORoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComMCOInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('ComMCOInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComMCORespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('ComMCORespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComMCOContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('ComMCOContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ComMCOTot" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('ComMCOTot');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator18" runat="server" 
                         ClientValidationFunction="CheckComMCODays" ErrorMessage="Please enter number of patient days (MCO Commercial Insurance).">*</asp:CustomValidator>
                                       <asp:CustomValidator ID="CustomValidator30" runat="server" 
                         ClientValidationFunction="SumcomMco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2">e. Total Blue Cross</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="BlueServed" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator7" runat="server" 
                         ClientValidationFunction="CheckBluePats" ErrorMessage="Please enter number of patients served (Blue Cross).">*</asp:CustomValidator>--%>
                                                        <%--   <asp:CustomValidator ID="CustomValidator38" runat="server" 
                         ClientValidationFunction="SumblueManServed" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%></td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueRoutine" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator39" runat="server" 
                         ClientValidationFunction="SumblueManRoutine" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator>--%> 
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueInpatient" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator40" runat="server" 
                         ClientValidationFunction="SumblueManInpatient" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueRespite" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator41" runat="server" 
                         ClientValidationFunction="SumblueManRespite" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueContinuous" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator42" runat="server" 
                         ClientValidationFunction="SumblueManContinuous" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueTot" runat="server" BackColor="#FFFFCC" Columns="10"
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator19" runat="server" 
                         ClientValidationFunction="CheckBlueDays" ErrorMessage="Please enter number of patient days (Blue Cross).">*</asp:CustomValidator>
                                        <asp:CustomValidator ID="CustomValidator31" runat="server" 
                         ClientValidationFunction="Sumblue" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator><asp:CustomValidator ID="CustomValidator43" runat="server" 
                         ClientValidationFunction="SumblueManTot" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="10px"></td>
                                                    <td width="200px">e1. Blue Cross Non-Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="BlueNonMCOServed" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('BlueNonMCOServed');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator8" runat="server" 
                         ClientValidationFunction="CheckBlueNonMCOPats" ErrorMessage="Please enter number of patients served (Non-MCO Blue Cross).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueNonMCORoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('BlueNonMCORoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueNonMCOInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('BlueNonMCOInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueNonMCORespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('BlueNonMCORespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueNonMCOContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('BlueNonMCOContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueNonMCOTot" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('BlueNonMCOTot');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator20" runat="server" 
                         ClientValidationFunction="CheckBlueNonMCODays" ErrorMessage="Please enter number of patient days (Non-MCO Blue Cross).">*</asp:CustomValidator>
                                       <asp:CustomValidator ID="CustomValidator32" runat="server" 
                         ClientValidationFunction="SumblueNmco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>  --%></td>
                                                </tr>
                                                <tr>
                                                    <td width="10px"></td>
                                                    <td width="200px">e2. Blue Cross Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="BlueMCOServed" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('BlueMCOServed');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator9" runat="server" 
                         ClientValidationFunction="CheckBlueMCOPats" ErrorMessage="	Please enter number of patients served (MCO Blue Cross).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="BlueMCORoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('BlueMCORoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="BlueMCOInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('BlueMCOInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="BlueMCORespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('BlueMCORespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="BlueMCOContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('BlueMCOContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="BlueMCOTot" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('BlueMCOTot');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator21" runat="server" 
                         ClientValidationFunction="CheckBlueMCODays" ErrorMessage="Please enter number of patient days (MCO Blue Cross).">*</asp:CustomValidator>
                                        <asp:CustomValidator ID="CustomValidator33" runat="server" 
                         ClientValidationFunction="SumblueMco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style38" colspan="2">f. Self Pay</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="SelfPayPatients" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('SelfPayPatients');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator10" runat="server" 
                         ClientValidationFunction="CheckSelfPats" ErrorMessage="Please enter number of patients served (Self Pay).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="SelfRoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('SelfRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="SelfInpatient" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('SelfInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="SelfRespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('SelfRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="SelfContinuous" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('SelfContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="SelfPayDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('SelfPayDays');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator22" runat="server" 
                         ClientValidationFunction="CheckSelfDays" ErrorMessage="Please enter number of patient days (Self Pay).">*</asp:CustomValidator>
                                         <asp:CustomValidator ID="CustomValidator34" runat="server" 
                         ClientValidationFunction="Sumself" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2">g1. Uncompensated Care</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="UnChPats" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('UnChPats');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator11" runat="server" 
                         ClientValidationFunction="CheckUncompPats" ErrorMessage="Please enter number of patients served (Uncompenstated).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="UnChRoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('UnChRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="UnChInpat" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('UnChInpat');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="UnChRespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('UnChRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="UnChCont" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('UnChCont');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="UnChDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('UnChDays');"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator23" runat="server" 
                         ClientValidationFunction="CheckUncompDays" ErrorMessage="Please enter number of patient days (Uncompenstated).">*</asp:CustomValidator>
                                      <asp:CustomValidator ID="CustomValidator35" runat="server" 
                         ClientValidationFunction="SumUnChDaysCheck" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2">g2. Charity Care</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ChyPats" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('ChyPats');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ChyRoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('ChyRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ChyInpat" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumInpatientDays('ChyInpat');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ChyRespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('ChyRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ChyCont" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumContinuousDays('ChyCont');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="ChyDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('ChyDays');"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" width="200px">h. Other*</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="OtherPatients" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerPats('OtherPatients');"></asp:TextBox>
                                                        <br />
                                                        <%--<asp:CustomValidator ID="CustomValidator12" runat="server" 
                         ClientValidationFunction="CheckOtherPats" ErrorMessage="Please enter number of patients served (Other).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherRoutine" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRoutineDays('OtherRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherInpatient" runat="server" BackColor="#FFFFFF"
                                                            Columns="10" MaxLength="10" onkeyup="SumInpatientDays('OtherInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherRespite" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumRespiteDays('OtherRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherContinuous" runat="server" BackColor="#FFFFFF"
                                                            Columns="10" MaxLength="10" onkeyup="SumContinuousDays('OtherContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="SumTotPayerDays('OtherDays');"></asp:TextBox>
                                                        <br />
                                                        <%--<asp:CustomValidator ID="CustomValidator24" runat="server" 
                         ClientValidationFunction="CheckOtherDays" ErrorMessage="Please enter number of patient days (Other).">*</asp:CustomValidator>
                                       <asp:CustomValidator ID="CustomValidator36" runat="server" 
                         ClientValidationFunction="Sumothpriv" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style37" colspan="2" bgcolor="#FFFFCC">i. TOTALS
                                            <asp:CustomValidator ID="vG1" runat="server" ClientValidationFunction="G1Complete" ErrorMessage="Section G1 - I1.TOTAL Number of Patients Served and I6.TOTAL Patient Care Days may not be zero.">*</asp:CustomValidator>
                                                    </td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="TotHospPatients" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="10"
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelRoutine" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="10"
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelInpatient" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="10"
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelRespite" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="10"
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelContinuous" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="10"
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="TotHospDays" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="10"
                                                            MaxLength="10"></asp:TextBox><br />
                                                        <%--<asp:CustomValidator ID="CustomValidator37" runat="server" 
                         ClientValidationFunction="Sumtot" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">*Other Payer Source may include but is not limited to Workers Comp, donations, etc.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">&nbsp;G2</td>
                                        <td class="style15" bgcolor="#CCCCCC">REVENUE (PART II)</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">This question does not correspond to cost centers in the Cost Report, therefore 
                                base responses on your accounting records, not your Cost Report submission. 
                                Responses should reflect gross revenue for FY
                                            <asp:Label ID="SY3" runat="server"></asp:Label>.</td>
                                    </tr>

                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <b>Hospice Service</b> </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Revenue:</u> Payment for services. Include all Medicare per diem payments for all 
                                levels of care, Medicaid, private insurance and private pay.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Expenses:</u> Related to service delivery. Include reimbursable and non-reimbursable 
                                (bereavement and volunteer) program services.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <b>Total Agency Fundraising</b></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Revenue:</u> Include grants, fundraising including capital campaign funds, bequests, 
                                memorial donations, United Way and other community support, as well as transfers 
                                from your hospice foundation, if any.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Expenses:</u> Include any expenses related to fundraising.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <b>Other</b></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Revenue:</u> Include revenue from palliative care, non-hospice patient care and 
                                other community services, nursing home room and board and pass-through costs, as 
                                well as interest or investment income.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Expenses:</u> Related to palliative care, non-hospice patient care, and other 
                                community services.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <b>Charity Care</b></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Revenue:</u> Include the total dollar value of the services provided free of charge under your agency’s policy.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <u>Expenses:</u> Include the costs incurred by the agency to deliver the services that qualify as Charity Care (i.e., the cost of service delivery)</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <b>Uninsured Patients Expenses:</b> Include the costs incurred by the agency to deliver the services for patients who did not have private insurance</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <%--<tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td>
                                                        <b>Revenue Source</b></td>
                                                    <td>
                                                        <b>Revenue</b></td>
                                                    <td>
                                                        <b>Expenses</b></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style41">Hospice Service</td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="HospServRev" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="checkdouble('HospServRev',1);"></asp:TextBox>
                                                    </td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="HospServExp" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="checkdouble('HospServExp',2);"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style41">Total Agency Fundraising</td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="TotAgFundRev" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="checkdouble('TotAgFundRev',1);"></asp:TextBox>
                                                    </td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="TotAgFundExp" runat="server" BackColor="#FFFFFF"
                                                            Columns="10" MaxLength="10" onkeyup="checkdouble('TotAgFundExp',2);"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px">Other</td>
                                                    <td>
                                                        <asp:TextBox ID="OtherAgRev" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="checkdoubledec('OtherAgRev',1);"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="OtherAgExp" runat="server" BackColor="#FFFFFF"
                                                            Columns="10" MaxLength="10" onkeyup="checkdouble('OtherAgExp',2);"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px">Overhead Expenses (administrative and general)</td>
                                                    <td>NA</td>
                                                    <td>
                                                        <asp:TextBox ID="OverheadExp" runat="server" BackColor="#FFFFFF" Columns="10"
                                                            MaxLength="10" onkeyup="checkdouble('OverheadExp',2);"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12"></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <table border="1" cellpadding="0" cellspacing="0" class="style32a">
                                                <tr>
                                                    <td width="300px">
                                                        <b>Total Revenue </b>
                                                        <br />
                                                        (include earned revenues, fundraising allocation from endowment, 
                                            and other fundraising)</td>
                                                    <td>
                                                        <asp:TextBox ID="LLRevenue" runat="server" BackColor="#FFFFFF" Columns="15"
                                                            MaxLength="15" onkeyup="checkdouble('LLRevenue');"></asp:TextBox><br />
                                                        <asp:RequiredFieldValidator ID="vLL" runat="server"
                                                            ControlToValidate="LLRevenue" ErrorMessage="Please answer the Total Revenue question." Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="300px">Total Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="LLExpenses" runat="server" BackColor="#FFFFFF" Columns="15"
                                                            MaxLength="15" onkeyup="checkdouble('LLExpenses');"></asp:TextBox><br />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                            ControlToValidate="LLExpenses" ErrorMessage="Please answer the Total Expenses question." Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>--%>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td style="width:40%"></td>
                                                    <th colspan="2" style="width:30%">FY <%=PreviousYear %></th>
                                                    <th colspan="2" style="width:30%">FY <%=CurrentYear %></th>
                                                </tr>
                                                <tr>
                                                    <th>Revenue Source</th>
                                                    <th style="width:15%">Revenue</th>
                                                    <th style="width:15%">Expenses</th>
                                                    <th style="width:15%">Revenue</th>
                                                    <th style="width:15%">Expenses</th>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Medicare</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicareRevPY" CssClass="clsHospSvcRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicareRevPY" runat="server" ControlToValidate="MedicareRevPY" 
                                                            Text="*" ErrorMessage="Medicare revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicareExpPY" CssClass="clsHospSvcExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicareExpPY" runat="server" ControlToValidate="MedicareExpPY" 
                                                            Text="*" ErrorMessage="Medicare expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicareRevCY" CssClass="clsHospSvcRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicareRevCY" runat="server" ControlToValidate="MedicareRevCY" 
                                                            Text="*" ErrorMessage="Medicare revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicareExpCY" CssClass="clsHospSvcExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicareExpCY" runat="server" ControlToValidate="MedicareExpCY" 
                                                            Text="*" ErrorMessage="Medicare expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Medicaid</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicaidRevPY" CssClass="clsHospSvcRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicaidRevPY" runat="server" ControlToValidate="MedicaidRevPY" 
                                                            Text="*" ErrorMessage="Medicaid revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicaidExpPY" CssClass="clsHospSvcExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicaidExpPY" runat="server" ControlToValidate="MedicaidExpPY" 
                                                            Text="*" ErrorMessage="Medicaid expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicaidRevCY" CssClass="clsHospSvcRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicaidRevCY" runat="server" ControlToValidate="MedicaidRevCY" 
                                                            Text="*" ErrorMessage="Medicaid revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="MedicaidExpCY" CssClass="clsHospSvcExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvMedicaidExpCY" runat="server" ControlToValidate="MedicaidExpCY" 
                                                            Text="*" ErrorMessage="Medicaid expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Commercial Insurance</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="InsRevPY" CssClass="clsHospSvcRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvInsRevPY" runat="server" ControlToValidate="InsRevPY" 
                                                            Text="*" ErrorMessage="Insurance revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="InsExpPY" CssClass="clsHospSvcExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvInsExpPY" runat="server" ControlToValidate="InsExpPY" 
                                                            Text="*" ErrorMessage="Insurance expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="InsRevCY" CssClass="clsHospSvcRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvInsRevCY" runat="server" ControlToValidate="InsRevCY" 
                                                            Text="*" ErrorMessage="Insurance revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="InsExpCY" CssClass="clsHospSvcExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvInsExpCY" runat="server" ControlToValidate="InsExpCY" 
                                                            Text="*" ErrorMessage="Insurance expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Self Pay</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="SelfPayRevPY" CssClass="clsHospSvcRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvSelfPayRevPY" runat="server" ControlToValidate="SelfPayRevPY" 
                                                            Text="*" ErrorMessage="Self Pay revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="SelfPayExpPY" CssClass="clsHospSvcExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvSelfPayExpPY" runat="server" ControlToValidate="SelfPayExpPY" 
                                                            Text="*" ErrorMessage="Self Pay expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="SelfPayRevCY" CssClass="clsHospSvcRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvSelfPayRevCY" runat="server" ControlToValidate="SelfPayRevCY" 
                                                            Text="*" ErrorMessage="Self Pay revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="SelfPayExpCY" CssClass="clsHospSvcExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvSelfPayExpCY" runat="server" ControlToValidate="SelfPayExpCY" 
                                                            Text="*" ErrorMessage="Self Pay expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Other Government</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="OthGovtRevPY" CssClass="clsHospSvcRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvOthGovtRevPY" runat="server" ControlToValidate="OthGovtRevPY" 
                                                            Text="*" ErrorMessage="Other Government revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="OthGovtExpPY" CssClass="clsHospSvcExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvOthGovtExpPY" runat="server" ControlToValidate="OthGovtExpPY" 
                                                            Text="*" ErrorMessage="Other Government expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="OthGovtRevCY" CssClass="clsHospSvcRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvOthGovtRevCY" runat="server" ControlToValidate="OthGovtRevCY" 
                                                            Text="*" ErrorMessage="Other Government revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="OthGovtExpCY" CssClass="clsHospSvcExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvOthGovtExpCY" runat="server" ControlToValidate="OthGovtExpCY" 
                                                            Text="*" ErrorMessage="Other Government expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Hospice Service Revenue and Expenses</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalHospServRevPY" CssClass="clsRevPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalHospServExpPY" CssClass="clsExpPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5"
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalHospServRevCY" CssClass="clsRevCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalHospServExpCY" CssClass="clsExpCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5"
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Agency Fundraising Revenue and Expenses</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalAgFundRevPY" CssClass="clsRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalAgFundRevPY" runat="server" ControlToValidate="TotalAgFundRevPY" 
                                                            Text="*" ErrorMessage="Total Agency Fundraising Revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalAgFundExpPY" CssClass="clsExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalAgFundExpPY" runat="server" ControlToValidate="TotalAgFundExpPY" 
                                                            Text="*" ErrorMessage="Total Agency Fundraising Expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalAgFundRevCY" CssClass="clsRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalAgFundRevCY" runat="server" ControlToValidate="TotalAgFundRevCY" 
                                                            Text="*" ErrorMessage="Total Agency Fundraising Revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalAgFundExpCY" CssClass="clsExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalAgFundExpCY" runat="server" ControlToValidate="TotalAgFundExpCY" 
                                                            Text="*" ErrorMessage="Total Agency Fundraising Expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Other Revenue and Expenses (exclude Charity Care)</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalOtherRevPY" CssClass="clsRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalOtherRevPY" runat="server" ControlToValidate="TotalOtherRevPY" 
                                                            Text="*" ErrorMessage="Total Other Revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalOtherExpPY" CssClass="clsExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalOtherExpPY" runat="server" ControlToValidate="TotalOtherExpPY" 
                                                            Text="*" ErrorMessage="Total Other Expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalOtherRevCY" CssClass="clsRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalOtherRevCY" runat="server" ControlToValidate="TotalOtherRevCY" 
                                                            Text="*" ErrorMessage="Total Other Revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalOtherExpCY" CssClass="clsExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalOtherExpCY" runat="server" ControlToValidate="TotalOtherExpCY" 
                                                            Text="*" ErrorMessage="Total Other Expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Charity Care Revenue and Expenses</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalCharityRevPY" CssClass="clsRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevPY','TotalHospServRevPY','.clsRevPY','GrandTotalRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalCharityRevPY" runat="server" ControlToValidate="TotalCharityRevPY" 
                                                            Text="*" ErrorMessage="Total Charity Care Revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalCharityExpPY" CssClass="clsExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalCharityExpPY" runat="server" ControlToValidate="TotalCharityExpPY" 
                                                            Text="*" ErrorMessage="Total Charity Care expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalCharityRevCY" CssClass="clsRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcRevCY','TotalHospServRevCY','.clsRevCY','GrandTotalRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalCharityRevCY" runat="server" ControlToValidate="TotalCharityRevCY" 
                                                            Text="*" ErrorMessage="Total Charity Care Revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalCharityExpCY" CssClass="clsExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalCharityExpCY" runat="server" ControlToValidate="TotalCharityExpCY" 
                                                            Text="*" ErrorMessage="Total Charity Care expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Dollar Spent on Staff Education Expenses</td>
                                                    <td style="padding-left:2%"></td>                                                                                            
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalStaffEduExpPY" CssClass="clsExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalStaffEduExpPY" runat="server" ControlToValidate="TotalStaffEduExpPY" 
                                                            Text="*" ErrorMessage="Total Staff Education Expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%"></td>                                                                                            
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalStaffEduExpCY" CssClass="clsExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalStaffEduExpCY" runat="server" ControlToValidate="TotalStaffEduExpCY" 
                                                            Text="*" ErrorMessage="Total Staff Education Expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Dollar Spent on Patients without Insurance</td>
                                                    <td style="padding-left:2%"></td>                                                                                            
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalNoInsExpPY" CssClass="clsExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalNoInsExpPY" runat="server" ControlToValidate="TotalNoInsExpPY" 
                                                            Text="*" ErrorMessage="Total Patients without Insurance Expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%"></td>                                                                                            
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalNoInsExpCY" CssClass="clsExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalNoInsExpCY" runat="server" ControlToValidate="TotalNoInsExpCY" 
                                                            Text="*" ErrorMessage="Total Patients without Insurance Expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Overhead Expenses (administrative and general)</td>
                                                    <td style="padding-left:2%"></td>                                                                                            
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalOverExpPY" CssClass="clsExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpPY','TotalHospServExpPY','.clsExpPY','GrandTotalExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalOverExpPY" runat="server" ControlToValidate="TotalOverExpPY" 
                                                            Text="*" ErrorMessage="Total Overhead Expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%"></td>                                                                                            
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="TotalOverExpCY" CssClass="clsExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsHospSvcExpCY','TotalHospServExpCY','.clsExpCY','GrandTotalExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvTotalOverExpCY" runat="server" ControlToValidate="TotalOverExpCY" 
                                                            Text="*" ErrorMessage="Total Overhead Expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Revenue and Expenses</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="GrandTotalRevPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>                                                                          
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="GrandTotalExpPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="GrandTotalRevCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>                                                                          
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="GrandTotalExpCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
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
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style15" colspan="2" bgcolor="#CCCCCC" valign="top">G2-1 FINANCIAL AND OPERATIONAL PERFORMANCE</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style15" width="30px"></td>
                                        <td>Provide the total of each financial metric below for Fiscal Years <%=PreviousYear %> and <%=CurrentYear %>.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td style="width:70%"></td>
                                                    <th style="width:15%">FY <%=PreviousYear %></th>
                                                    <th style="width:15%">FY <%=CurrentYear %></th>
                                                </tr>
                                                <tr>
                                                    <td>Cash on Hand</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinCashPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinCashPY" runat="server" ControlToValidate="FinCashPY" 
                                                            Text="*" ErrorMessage="Cash on Hand for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinCashCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinCashCY" runat="server" ControlToValidate="FinCashCY" 
                                                            Text="*" ErrorMessage="Cash on Hand for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Revenue<br />
                                                        Include all revenues, including earned revenue, fundraising, 
                                                        and allocation from endowment or other fundraising.
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinTotalRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinTotalRevPY" runat="server" ControlToValidate="FinTotalRevPY" 
                                                            Text="*" ErrorMessage="Total Revenue for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinTotalRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinTotalRevCY" runat="server" ControlToValidate="FinTotalRevCY" 
                                                            Text="*" ErrorMessage="Total Revenue for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Expenses<br />Include all expenses.
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinTotalExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinTotalExpPY" runat="server" ControlToValidate="FinTotalExpPY" 
                                                            Text="*" ErrorMessage="Total Expenses for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinTotalExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinTotalExpCY" runat="server" ControlToValidate="FinTotalExpCY" 
                                                            Text="*" ErrorMessage="Total Expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Bad Debts (Allowances and Adjustments)<br />Includes patients without insurance
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinBadDebtPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinBadDebtPY" runat="server" ControlToValidate="FinBadDebtPY" 
                                                            Text="*" ErrorMessage="Bad Debts for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinBadDebtCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinBadDebtCY" runat="server" ControlToValidate="FinBadDebtCY" 
                                                            Text="*" ErrorMessage="Bad Debts for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Net Income
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinNetIncomePY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinNetIncomePY" runat="server" ControlToValidate="FinNetIncomePY" 
                                                            Text="*" ErrorMessage="Net Income for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinNetIncomeCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinNetIncomeCY" runat="server" ControlToValidate="FinNetIncomeCY" 
                                                            Text="*" ErrorMessage="Net Income for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Debt Service Coverage Ratio
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinDebtCoverRatioPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinDebtCoverRatioPY" runat="server" ControlToValidate="FinDebtCoverRatioPY" 
                                                            Text="*" ErrorMessage="Debt Service Coverage Ratio for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinDebtCoverRatioCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinDebtCoverRatioCY" runat="server" ControlToValidate="FinDebtCoverRatioCY" 
                                                            Text="*" ErrorMessage="Debt Service Coverage Ratio for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Adjusted EBITDA<br />Earnings before income, taxes, depreciation, and amortization.
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinAdjEBITDAPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinAdjEBITDAPY" runat="server" ControlToValidate="FinAdjEBITDAPY" 
                                                            Text="*" ErrorMessage="Adjusted EBITDA Ratio for previous FY is required" />
                                                    </td> 
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="FinAdjEBITDACY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" />
                                                        <asp:RequiredFieldValidator ID="rfvFinAdjEBITDACY" runat="server" ControlToValidate="FinAdjEBITDACY" 
                                                            Text="*" ErrorMessage="Adjusted EBITDA Ratio for current FY is required" />
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
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style15" colspan="2" bgcolor="#CCCCCC" valign="top">G2-2. TOTAL PALLIATIVE CARE REVENUE</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">
                                            <table class="style32a" border="1" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td style="width:40%"></td>
                                                    <th colspan="2" style="width:30%">FY <%=PreviousYear %></th>
                                                    <th colspan="2" style="width:30%">FY <%=CurrentYear %></th>
                                                </tr>
                                                <tr>
                                                    <th>Revenue Source</th>
                                                    <th style="width:15%">Revenue</th>
                                                    <th style="width:15%">Expenses</th>
                                                    <th style="width:15%">Revenue</th>
                                                    <th style="width:15%">Expenses</th>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Medicare</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicareRevPY" CssClass="clsPalCareRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevPY','PalTotalHospServRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicareRevPY" runat="server" ControlToValidate="PalMedicareRevPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicare revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicareExpPY" CssClass="clsPalCareExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpPY','PalTotalHospServExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicareExpPY" runat="server" ControlToValidate="PalMedicareExpPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicare expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicareRevCY" CssClass="clsPalCareRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevCY','PalTotalHospServRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicareRevCY" runat="server" ControlToValidate="PalMedicareRevCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicare revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicareExpCY" CssClass="clsPalCareExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpCY','PalTotalHospServExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicareExpCY" runat="server" ControlToValidate="PalMedicareExpCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicare expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Medicaid</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicaidRevPY" CssClass="clsPalCareRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevPY','PalTotalHospServRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicaidRevPY" runat="server" ControlToValidate="PalMedicaidRevPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicaid revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicaidExpPY" CssClass="clsPalCareExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpPY','PalTotalHospServExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicaidExpPY" runat="server" ControlToValidate="PalMedicaidExpPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicaid expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicaidRevCY" CssClass="clsPalCareRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevCY','PalTotalHospServRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicaidRevCY" runat="server" ControlToValidate="PalMedicaidRevCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicaid revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalMedicaidExpCY" CssClass="clsPalCareExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpCY','PalTotalHospServExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalMedicaidExpCY" runat="server" ControlToValidate="PalMedicaidExpCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Medicaid expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Commercial Insurance</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalInsRevPY" CssClass="clsPalCareRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevPY','PalTotalHospServRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalInsRevPY" runat="server" ControlToValidate="PalInsRevPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Commercial Insurance revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalInsExpPY" CssClass="clsPalCareExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpPY','PalTotalHospServExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalInsExpPY" runat="server" ControlToValidate="PalInsExpPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Commercial Insurance expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalInsRevCY" CssClass="clsPalCareRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevCY','PalTotalHospServRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalInsRevCY" runat="server" ControlToValidate="PalInsRevCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Commercial Insurance revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalInsExpCY" CssClass="clsPalCareExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpCY','PalTotalHospServExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalInsExpCY" runat="server" ControlToValidate="PalInsExpCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Commercial Insurance expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Self Pay</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalSelfPayRevPY" CssClass="clsPalCareRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevPY','PalTotalHospServRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalSelfPayRevPY" runat="server" ControlToValidate="PalSelfPayRevPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Self Pay revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalSelfPayExpPY" CssClass="clsPalCareExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpPY','PalTotalHospServExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalSelfPayExpPY" runat="server" ControlToValidate="PalSelfPayExpPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Self Pay expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalSelfPayRevCY" CssClass="clsPalCareRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevCY','PalTotalHospServRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalSelfPayRevCY" runat="server" ControlToValidate="PalSelfPayRevCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Self Pay revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalSelfPayExpCY" CssClass="clsPalCareExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpCY','PalTotalHospServExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalSelfPayExpCY" runat="server" ControlToValidate="PalSelfPayExpCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Self Pay expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Other Government</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalOthGovtRevPY" CssClass="clsPalCareRevPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevPY','PalTotalHospServRevPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalOthGovtRevPY" runat="server" ControlToValidate="PalOthGovtRevPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Other Government revenue for previous FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalOthGovtExpPY" CssClass="clsPalCareExpPY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpPY','PalTotalHospServExpPY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalOthGovtExpPY" runat="server" ControlToValidate="PalOthGovtExpPY" 
                                                            Text="*" ErrorMessage="Palliative Care - Other Government expenses for previous FY is required" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalOthGovtRevCY" CssClass="clsPalCareRevCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareRevCY','PalTotalHospServRevCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalOthGovtRevCY" runat="server" ControlToValidate="PalOthGovtRevCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Other Government revenue for current FY is required" />
                                                    </td>                                        
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalOthGovtExpCY" CssClass="clsPalCareExpCY" runat="server" Columns="5" MaxLength="10" 
                                                            BackColor="#FFFFFF" onkeyup="return validateDecimal(this,2);" 
                                                            onchange="return sumG2Revenue('.clsPalCareExpCY','PalTotalHospServExpCY');"/>
                                                        <asp:RequiredFieldValidator ID="rfvPalOthGovtExpCY" runat="server" ControlToValidate="PalOthGovtExpCY" 
                                                            Text="*" ErrorMessage="Palliative Care - Other Government expenses for current FY is required" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Palliative Care Revenue and Expenses</td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalTotalHospServRevPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>                                                                          
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalTotalHospServExpPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalTotalHospServRevCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>                                                                          
                                                    <td style="padding-left:2%">
                                                        <asp:TextBox ID="PalTotalHospServExpCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" Columns="5" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">G3</td>
                                        <td class="style15" bgcolor="#CCCCCC">RECEIVABLES MANAGEMENT</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">Please provide the number of days your revenue is outstanding in accounts receivable. Multiply the total accounts receivable on the last day of your fiscal year by 365 and divide by your total Hospice Service Revenue.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12">Average Days Revenue Outstanding (A/R Days):
                                <asp:TextBox ID="ARDays" runat="server" BackColor="#FFFFFF" Columns="10"
                                    MaxLength="10"></asp:TextBox><asp:RequiredFieldValidator ID="vARDays" runat="server"
                                        ControlToValidate="ARDays" ErrorMessage="Please answer the Average Days Revenue." Text="*"></asp:RequiredFieldValidator>

                                            <asp:RangeValidator ID="rARDays" runat="server"
                                                ControlToValidate="ARDays"
                                                ErrorMessage="G3. Average Days Revenue Outstanding may not be zero."
                                                MaximumValue="1000000" MinimumValue=".01" Type="Double">*</asp:RangeValidator>

                                            <br />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">&nbsp;</td>
                                        <td class="style12" align="center">
                                            <asp:Label ID="Certi1" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="lblSectionH" runat="server" Visible="False"></asp:Label>
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
                                            <asp:Button ID="btnBack" OnClientClick="return confirm('Reminder -   No changes to this section are saved unless you validate. ');" runat="server" CssClass="btn1" Text="Menu"
                                                CausesValidation="False"
                                                ToolTip="Return to Menu." />
                                        </td>
                                        <td class="style10">
                                            <asp:Button ID="btnMenu" runat="server" CssClass="btn2" Text="Validate & Save" CausesValidation="True"
                                                ToolTip="Validate and Saves your answers." />
                                        </td>
                                        <td class="style10">
                                            <asp:Button ID="btnNext" OnClientClick="return confirm('Reminder -   No changes to this section are saved unless you validate. ');" runat="server" CssClass="btn3" CausesValidation="False"
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
