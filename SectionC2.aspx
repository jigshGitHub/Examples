<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionC2.aspx.vb" Inherits="SectionC2" Debug="true"%>

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
    function ckValidate(source, arguments) {
        var value1 = document.getElementById("ActProgPalliative");
        var value2 = document.getElementById("ActProgHomeHealth");
        var value3 = document.getElementById("ActProgPreHospice");
        var value4 = document.getElementById("ActProgPostHospice");
        var value5 = document.getElementById("ActProgGriefCounseling");
        var value6 = document.getElementById("ActProgOther1");
        var value7 = document.getElementById("ActProgOther2");
        args.IsValid = ((value1.checked) || (value2.checked) || (value3.checked) || (value4.checked) || (value5.checked) || (value6.checked) || (value7.checked));
    }
    //---Total referrals check
    function CheckReferrals(source, arguments) {
        var value1 = parseInt(document.getElementById("RefSourceMD").value);
        var value2 = parseInt(document.getElementById("RefSourceNF").value);
        var value3 = parseInt(document.getElementById("RefSourceHosp").value);
        var value4 = parseInt(document.getElementById("RefSourceHH").value);
        var value5 = parseInt(document.getElementById("RefSourceALF").value);
        var value6 = parseInt(document.getElementById("RefSourceSelf").value);
        var value7 = parseInt(document.getElementById("RefSourceOther").value);
        var valPalCareProvider = parseInt(document.getElementById("PalCareProvider").value);
        var value8 = parseInt(document.getElementById("TotReferrals").value);
        var sum = value1 + value2 + value3 + value4 + value5 + value6 + value7 + valPalCareProvider;
        arguments.IsValid = (sum == value8);
    }
    function validateCheckboxes(checkBoxes) {
        for (var i = 0; i < checkBoxes.length; i++) {
            if (checkBoxes[i].checked) {
                return true;
            }
        }
        return false;
    }
    function validateSocialNeeds(source, args) {
        var checkBoxes = document.querySelectorAll('.clsSocialNeed input[type="checkbox"]');           
        args.IsValid = validateCheckboxes(checkBoxes);
    }
    function validateForgoneCare(source, args) {
        var checkBoxes = document.querySelectorAll('.clsCheckForgoneCare input[type="checkbox"]');
        args.IsValid = validateCheckboxes(checkBoxes);
    }
    function sumForgoneCarePatients() {
        var total = 0;
        // Select all inputs with the specific class name
        var inputs = document.querySelectorAll('.clsSumForgoneCare');

        inputs.forEach(function (input) {
            // Parse the text value to a float number
            var value = parseInt(input.value);

            // If the input is empty or not a number (NaN), treat it as 0
            if (!isNaN(value)) {
                total += value;
            }
        });
        document.getElementById("txtTotalForgonePatients").value = total;
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
            font-size: x-large;
        }
        .style36
        {
            width: 35%;
        }
         .style6{
             width:6%
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
                                <b style="text-align: center">SECTION C - PATIENT VOLUME (Continued)</td>
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
                            <td class="style6" bgcolor="#CCCCCC" valign="top">
                                &nbsp;C2.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                 REFERRALS</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                           A referral is defined by one or more of the following:
                                                    </td>
                        </tr>
                         <tr>
                            <td>
                                &nbsp;</td>
                             <td class="style12">
                                 1.&nbsp; A request for assessment for possible admission to hospice from a physician, 
                                 case manager, discharge planner,
                                 <br />
                                 &nbsp;&nbsp;&nbsp;&nbsp; health care organization, or equivalent;</td>
                        </tr>
                       
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                2. Contact by a patient, or family or friend of a patient, that identifies a 
                                specific patient who may need hospice care.</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                NOTE: The definition here is intentionally broader and is intended to capture 
                                all calls and contacts that identify a potential hospice patient.</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                               <b> Note: For various reasons, hospices usually do not admit all patients who are 
                                referred for care. Therefore, the number of referrals is rarely the same as the 
                                number of admissions. A value entered for number of referrals that is the same 
                                as the value entered for new admissions will be excluded from the data analysis.</b></td>
                        </tr>
                         <tr>
                             <td>
                                 &nbsp;</td>
                             <td class="style12">
                                 &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                              <b>a. Total number of referrals received in FY 
                                  <asp:Label ID="SY1" runat="server"></asp:Label>:</b>
                          
                              
                                    &nbsp;
                                    <asp:TextBox ID="TotReferrals" onkeypress=" return allowonlynumbers();" runat="server" BackColor="#FFFFFF" Columns="10" 
                                        MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="TotReferrals" 
                                        ErrorMessage="Total number of referrals received in FY" Text="*"></asp:RequiredFieldValidator>
                          <asp:CustomValidator ID="CustomValidator8" runat="server" 
                         ClientValidationFunction="CheckReferrals" ErrorMessage="Please be sure that the sum of the elements entered for Referrals by Source matches the value entered for Total Referrals.">*</asp:CustomValidator>
                                    
                           </td>
                        </tr>
                         <tr>
                             <td>
                                 &nbsp;</td>
                             <td class="style12">
                                 <hr /></td>
                        </tr>
                         <tr>
                            <td class="style15" width="40px"  valign="top">
                                &nbsp;</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                 REFERRAL SOURCES</td>
                        </tr>
                          <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                              Provide the number of referrals from the following sources:
                           </td>
                        </tr>
                         
                         <tr>
                            <td>
                                &nbsp;</td>
                             <td class="style12">
                                 <table class="style32a">
                                     <tr>
                                        <td width="30px">
                                            &nbsp;</td>
                                        <th style="text-align:left;width:350px">Referral Source</th>
                                        <th style="text-align:left">Number of Referrals</th>
                                     </tr>
                                     <tr>
                                         <td width="30px">
                                             &nbsp;</td>
                                         <td>
                                             b. Physician</td>
                                         <td>
                                            <asp:TextBox ID="RefSourceMD" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="RefSourceMD" Format="integer"
                                    ErrorMessage="Referrals received from physician" Text="*"></asp:RequiredFieldValidator> </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             c. Hospital (includes discharge planners)</td>
                                         <td>
                                            <asp:TextBox ID="RefSourceHosp" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="RefSourceHosp" Format="integer"
                                    ErrorMessage="Referrals received from hospitals" Text="*"></asp:RequiredFieldValidator></td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             d. Skilled Nursing Facility</td>
                                         <td>
                                             <asp:TextBox ID="RefSourceNF" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                    ControlToValidate="RefSourceNF" Format="integer"
                                    ErrorMessage="Referrals received from skilled nursing facilities" Text="*"></asp:RequiredFieldValidator></td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             e. Assisted Living Facility</td>
                                         <td>
                                              <asp:TextBox ID="RefSourceALF" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                    ControlToValidate="RefSourceALF" Format="integer"
                                    ErrorMessage="Referrals received from assisted living facilities" Text="*"></asp:RequiredFieldValidator></td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             f. Home Health Agency</td>
                                         <td>
                                             <asp:TextBox ID="RefSourceHH" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                    ControlToValidate="RefSourceHH" Format="integer"
                                    ErrorMessage="Referrals received from home health agency" Text="*"></asp:RequiredFieldValidator></td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             g. Self/Family/Friend</td>
                                         <td>
                                            <asp:TextBox ID="RefSourceSelf" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                    ControlToValidate="RefSourceSelf" Format="integer"
                                    ErrorMessage="Referrals received from self/family/friend" Text="*"></asp:RequiredFieldValidator></td>
                                     </tr>
                                     <tr>
                                         <td>
                                             &nbsp;</td>
                                         <td>
                                             h. Other: (Specify) h1.<asp:TextBox ID="RefSourceOtherSpecify" runat="server" BackColor="#FFFFFF" Columns="20" MaxLength="250"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvRefOther" runat="server" ControlToValidate="RefSourceOtherSpecify" ErrorMessage="Referrals source from other" Text="*"></asp:RequiredFieldValidator>
                                         </td>
                                         <td>
                                           <asp:TextBox ID="RefSourceOther" runat="server" BackColor="#FFFFFF" Columns="20" 
                                    MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                    ControlToValidate="RefSourceOther" Format="integer"
                                    ErrorMessage="Referrals received from other" Text="*"></asp:RequiredFieldValidator></td>
                                     </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            i. Palliative Care Provider</td>
                                        <td>
                                            <asp:TextBox ID="PalCareProvider" runat="server" BackColor="#FFFFFF" Columns="20" MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvPalCareProvider" runat="server" 
                                                ControlToValidate="PalCareProvider" Format="integer"
                                                ErrorMessage="Referrals received from Palliative Care Provider" Text="*"></asp:RequiredFieldValidator>
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
                             <td class="style15" width="40px" bgcolor="#CCCCCC" valign="top">
                                 &nbsp;C2-1.</td>
                             <td class="style15" bgcolor="#CCCCCC">
                                  SOCIAL DETERMINANTS OF HEALTH & COMMUNITY REFERRALS</td>
                         </tr>
                        <tr>
                            <td></td>
                            <td>Does your agency refer patients to organizations that help address social determinants of health or health-related social needs? 
                                <asp:RequiredFieldValidator runat="server" ID="rfvRefYN" ControlToValidate="rblRefYN" 
                                    ErrorMessage="SOCIAL DETERMINANTS OF HEALTH & COMMUNITY REFERRALS required" Text="*" />
                        </tr>
                        <tr>
                            <td></td>
                            <td><asp:RadioButtonList ID="rblRefYN" runat="server" AutoPostBack="true">
                                    <asp:ListItem Text="Yes" Value="True" />
                                    <asp:ListItem Text="No" Value="False" />
                                </asp:RadioButtonList></td>
                        </tr>
                       <tr>
                           <td></td>
                           <td>
                               <asp:Panel ID="pnlSocialRefferal" Visible="false" runat="server">
                                   If yes, what social needs do you help address? Select all that apply and report the organization partner you work with.
                                    <asp:CustomValidator ID="cvSocialNeeds" runat="server" 
                                        ClientValidationFunction="validateSocialNeeds" 
                                        ErrorMessage="You must select at least one option for social need." 
                                        Display="Dynamic">*
                                    </asp:CustomValidator><br />
                                    <table style="width:100%;">
                                        <tr>
                                            <th style="text-align:left;width:40%">Social Need</th>
                                            <th style="text-align:left;">Partner Organization</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkHousing" runat="server" AutoPostBack="true" Text="Housing" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtHousing" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvHousing" runat="server" Enabled="false"
                                                    ControlToValidate="txtHousing" ErrorMessage="Hosuing partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkFood" runat="server" AutoPostBack="true" Text="Food" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFood" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvFood" runat="server" Enabled="false"
                                                    ControlToValidate="txtFood" ErrorMessage="Food partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>                                        
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkTransport" runat="server" AutoPostBack="true" Text="Transport" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTransport" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvTransport" runat="server" Enabled="false"
                                                    ControlToValidate="txtTransport" ErrorMessage="Transport partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkUtilities" runat="server" AutoPostBack="true" Text="Utilities" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtUtilities" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvUtilities" runat="server" Enabled="false"
                                                    ControlToValidate="txtUtilities" ErrorMessage="Utilities partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkSafety" runat="server" AutoPostBack="true" Text="Interpersonal Safety" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSafety" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvSafety" runat="server" Enabled="false"
                                                    ControlToValidate="txtSafety" ErrorMessage="Interpersonal Safety partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkIsolation" runat="server" AutoPostBack="true" Text="Social Isolation" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtIsolation" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvIsolation" runat="server" Enabled="false"
                                                    ControlToValidate="txtIsolation" ErrorMessage="Social Isolation partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkLiteracy" runat="server" AutoPostBack="true" Text="Literacy" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtLiteracy" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvLiteracy" runat="server" Enabled="false"
                                                    ControlToValidate="txtLiteracy" ErrorMessage="Literacy partner organization  required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>                                       
                                        <tr>
                                            <td>
                                                <asp:CheckBox CssClass="clsSocialNeed" ID="chkSocialOther" runat="server" AutoPostBack="true" Text="Other" />
                                                <asp:TextBox ID="txtSocialNeedOtherSpec" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvSocialNeedOtherSpec" runat="server" Enabled="false"
                                                    ControlToValidate="txtSocialNeedOtherSpec" ErrorMessage="Social need other required" Text="*"></asp:RequiredFieldValidator>                                        
                                            
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSocialOther" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="40" MaxLength="250"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvSocialOther" runat="server" Enabled="false"
                                                    ControlToValidate="txtSocialOther" ErrorMessage="Other partner organization required" Text="*"></asp:RequiredFieldValidator>                                        
                                            </td>
                                        </tr>
                                    </table>
                               </asp:Panel>                              
                           </td>
                       </tr>
                         <tr>
                            <td colspan="2">
                                <hr />
                             </td>
                           
                        </tr>
                       <tr>
                         <td class="style15" width="40px" bgcolor="#CCCCCC" valign="top">
                             &nbsp;C2-2.</td>
                         <td class="style15" bgcolor="#CCCCCC">
                              INCOMPLETE REFERRALS- REASONS FOR FORGONE CARE</td>
                        </tr>
                        <tr><td></td>
                            <td>Please report the number of patients who you did not take under your care:
                                <asp:CustomValidator ID="cvForgoneCare" runat="server" 
                                    ClientValidationFunction="validateForgoneCare" 
                                    ErrorMessage="You must select at least one option for social need." 
                                    Display="Dynamic">*
                                </asp:CustomValidator><br />
                                <table style="width:100%;">
                                    <tr>
                                        <th style="text-align:left;width:5%"></th>
                                        <th style="text-align:left;width:60%">Reasons for Forgone Care</th>
                                        <th style="text-align:left;">Number of Patients</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox CssClass="clsCheckForgoneCare" ID="chkClinical" runat="server" AutoPostBack="true"/>                                            
                                        </td>
                                        <td>Clinical</td>
                                        <td style="vertical-align:top">
                                            <asp:TextBox ID="txtClinical" CssClass="clsSumForgoneCare" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250" onkeypress=" return allowonlynumbers();" onchange="return sumForgoneCarePatients();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvClinical" runat="server" Enabled="false" 
                                                ControlToValidate="txtClinical" ErrorMessage="Number of Patients for clinical required" Text="*"></asp:RequiredFieldValidator>                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td colspan="2">Patient seeking curative or other treatment options</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox CssClass="clsCheckForgoneCare" ID="chkFamilyPref" runat="server" AutoPostBack="true"/>                                            
                                        </td>
                                        <td>Patient or Family Preference</td>
                                        <td style="vertical-align:top">
                                            <asp:TextBox ID="txtFamilyPref" CssClass="clsSumForgoneCare" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250" onkeypress=" return allowonlynumbers();" onchange="return sumForgoneCarePatients();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFamilyPref" runat="server" Enabled="false" 
                                                ControlToValidate="txtFamilyPref" ErrorMessage="Number of Patients for Family Preference required" Text="*"></asp:RequiredFieldValidator>                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td colspan="2">Patient decides they do not wish to elect hospice services</td>
                                    </tr>
                                     <tr>
                                         <td>
                                             <asp:CheckBox CssClass="clsCheckForgoneCare" ID="chkAdminBarrier" runat="server" AutoPostBack="true"/>                                            
                                         </td>
                                         <td>Administrative Barriers</td>
                                         <td style="vertical-align:top">
                                             <asp:TextBox ID="txtAdminBarrier" CssClass="clsSumForgoneCare" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250" onkeypress=" return allowonlynumbers();" onchange="return sumForgoneCarePatients();"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="rfvAdminBarrier" runat="server" Enabled="false" 
                                                 ControlToValidate="txtAdminBarrier" ErrorMessage="Number of Patients for Administrative Barriers required" Text="*"></asp:RequiredFieldValidator>                                        
                                         </td>
                                     </tr>
                                     <tr>
                                         <td></td>
                                         <td>Agency loses contact with the patient, patient not in the service area, service not authorized, or staffing constraint.</td>
                                         <td></td>
                                     </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox CssClass="clsCheckForgoneCare" ID="chkDied" runat="server" AutoPostBack="true"/>                                            
                                        </td>
                                        <td>Died</td>
                                        <td style="vertical-align:top">
                                            <asp:TextBox ID="txtDied" CssClass="clsSumForgoneCare" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250" onkeypress=" return allowonlynumbers();" onchange="return sumForgoneCarePatients();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvDied" runat="server" Enabled="false" 
                                                ControlToValidate="txtDied" ErrorMessage="Number of Patients for died required" Text="*"></asp:RequiredFieldValidator>                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>The patient died before the referral was completed</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox CssClass="clsCheckForgoneCare" ID="chkFinancial" runat="server" AutoPostBack="true"/>                                            
                                        </td>
                                        <td>Financial</td>
                                        <td style="vertical-align:top">
                                            <asp:TextBox ID="txtFinancial" CssClass="clsSumForgoneCare" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250" onkeypress=" return allowonlynumbers();" onchange="return sumForgoneCarePatients();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFinancial" runat="server" Enabled="false" 
                                                ControlToValidate="txtFinancial" ErrorMessage="Number of Patients for Financial required" Text="*"></asp:RequiredFieldValidator>                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><b>Total</b></td>
                                        <td style="vertical-align:top">
                                            <asp:TextBox ID="txtTotalForgonePatients" runat="server" BackColor="#CCCCCC" Enabled="false" Columns="20" MaxLength="250"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td colspan="2"><hr /></td></tr>
                       <tr>
                            <td class="style15" width="40px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;C3. </td>
                            <td class="style15" bgcolor="#CCCCCC">
                                 AVERAGE DAILY CENSUS</td>
                        </tr>
                       
                       <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                          Please review the definitions and calculation examples carefully before completing the following data for FY 
                                <asp:Label ID="SY2" runat="server" ></asp:Label>.
                                                    </td>
                        </tr>
                                                
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                <table class="style32a">
                                    <tr>
                                        <td width="30px" valign="top">
                                            A.</td>
                                        <td valign="top">
                                            Average Daily Census (ADC) Patients per Day:&nbsp;
                                            <asp:TextBox ID="ADC" runat="server" BackColor="#FFFFFF" Columns="10" onkeyup="validateDecimal(this);"
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="ADC"
                                    ErrorMessage="Average Daily Census patients per day" Text="*"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator3" runat="server" Text = "*" 
                                                ErrorMessage="C3 a. ADC must be less than 1000" ControlToValidate="ADC" 
                                                Operator="LessThan" Type="Double" ValueToCompare="1000"></asp:CompareValidator>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False">Use Calculator</asp:LinkButton>
                                            <br />
                                            <asp:Panel ID="Panel_ADC" runat="server">
                                            
                                            <table cellpadding="3" cellspacing="0" class="style32a" 
                                                    style="background-color: #DFDFFF; border: 1px solid #C0C0C0">
                                                <tr>
                                                    <td>
                                                        Enter Patient Days:&nbsp;
                                                        <asp:TextBox ID="xADC" runat="server"></asp:TextBox>
                                                        &nbsp; <strong><span class="style35">/&nbsp;</span></strong>&nbsp; 365&nbsp; <strong>
                                                        <span class="style35">=</span></strong> &nbsp;&nbsp;
                                                        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                                            Text="Calculate" />
                                                    </td>
                                                </tr>
                                            </table>
</asp:Panel>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="30px">
                                            &nbsp;</td>
                                        <td>
                                            <ul>
                                                <li>Divide the total patient days by 365</li>
                                                <li>Example: You provided a total of 12,775 patient days for all levels of care. 
                                                    12,775 divided by 365 days equals an ADC of 35 patients per day.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            B.</td>
                                        <td valign="top">
                                            Average Length of Stay (ALOS) Days:&nbsp;
                                            <asp:TextBox ID="ALOS" runat="server" BackColor="#FFFFFF" Columns="10" onkeyup="validateDecimal(this);"
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="ALOS" 
                                    ErrorMessage="Average Length of Stay days" Text="*"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" Text = "*" 
                                                ErrorMessage="C3 b. ALOS must be less than 366" ControlToValidate="ALOS" 
                                                Operator="LessThan" Type="Double" ValueToCompare="366"></asp:CompareValidator>
                                            &nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False">Use Calculator</asp:LinkButton>
                                            <br />
                                            <asp:Panel ID="Panel_ALOS" runat="server">
                                                <table cellpadding="3" cellspacing="0" class="style32a" 
                                                    style="background-color: #DFDFFF; border: 1px solid #C0C0C0">
                                                    <tr>
                                                        <td align="center">
                                                            &nbsp;<asp:TextBox ID="ALOS_Days" runat="server"></asp:TextBox>
                                                            &nbsp;
                                                            <br />
                                                            Total patient days from admission to discharge</td>
                                                        <td align="center" class="style35" width="5%">
                                                            <strong>/</strong></td>
                                                        <td align="center" class="style36">
                                                            <asp:TextBox ID="ALOS_DD" runat="server"></asp:TextBox>
                                                            <br />
                                                            Patients died or were discharged</td>
                                                        <td align="center" width="5%">
                                                            <strong><span class="style35">=</span></strong></td>
                                                        <td width="15%">
                                                            <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                                                Text="Calculate" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Divide the total days of care provided to discharged patients by the total number of patients discharged.</li>
                                                <li>Example: 100 patients died or were discharged. Their total patient days from admission to discharge were 4200. ALOS = 4200/100 = 42 days.</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            C.</td>
                                        <td valign="top">
                                            Median Length of Stay (MLOS) Days:&nbsp;
                                            <asp:TextBox ID="MLOS" runat="server" BackColor="#FFFFFF" Columns="10" onkeyup="validateDecimal(this);"
                                    MaxLength="10" ControlToValidate="MLOS"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="MLOS" 
                                    ErrorMessage="Median Length of Stay days" Text="*"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" Text = "*" 
                                                ErrorMessage="C3 c. MLOS must be less than 366" ControlToValidate="MLOS" 
                                                Operator="LessThan" Type="Double" ValueToCompare="366"></asp:CompareValidator>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>The midpoint for all discharged patients (same population as for ALOS). Half of the patients have a LOS longer than the median and half of the patients have an LOS shorter than the median. Calculate the MLOS by arranging the LOS scores for all patients from lowest to highest (1, 2, 3…). Find the score that falls in the exact middle of the list. This is the median length of stay.</li>
                                                <li>Example 1: Even number of patients: You have six patients that stayed the following number of days: 11, 2, 9, 5, 8, 4. Arrange the LOS scores from lowest to highest: 2, 4, 5, 8, 9, 11. The median will fall between the third and fourth number. In this case, 5 and 8. Add 5+8 and divide by 2. (5+8)/2 = 6.5. Therefore 6.5 is your median.</li>
                                                <li>Example 2: Odd number of patients: You have five patients with the following number of days: 8, 22, 3, 10, 22. Arrange the LOS scores from lowest to highest (3, 7, 8, 10, 22). The median length of stay is in the middle – 8 days.</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            D.</td>
                                        <td valign="top">
                                            Number of Patients Who Died or were Discharged in less than or equal to 7 days:
                                            &nbsp;
                                            <asp:TextBox ID="Died7" runat="server" BackColor="#FFFFFF" Columns="10" onkeypress=" return allowonlynumbers();"
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="Died7" 
                                    ErrorMessage="Number patients died or discharged within 7 days" Text="*"></asp:RequiredFieldValidator>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Include the number of deaths for all patients who died with stays of 7 days or fewer</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            E.</td>
                                        <td valign="top">
                                            Number of Patients Who Died or were Discharged in greater than or equal to 180 
                                            days:  &nbsp;
                                            <asp:TextBox ID="Died180" runat="server" BackColor="#FFFFFF" Columns="10" onkeypress=" return allowonlynumbers();"
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="Died180" 
                                    ErrorMessage="Number patients died or discharged in greater than or equal to 180 days" Text="*"></asp:RequiredFieldValidator>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Include the number of deaths for all patients who died with stays of 180 days or more.</li>
                                            </ul>
                                        </td>
                                    </tr>    
                                    <tr>
                                        <td valign="top">
                                            F.</td>
                                        <td valign="top">
                                            Number of Patients Who Died or were Discharged between 8 days and 179 days:  &nbsp;
                                            <asp:TextBox ID="txtDied179" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvDied179" runat="server" 
                                                ControlToValidate="txtDied179" 
                                                ErrorMessage="Number patients died or discharged between 8 days and 179 days is required" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Include the number of deaths for all patients who died with stays of 8 to 179 days.</li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                            <%--<tr>
                            <td colspan="2">
                                <hr />
                             </td>
                           
                        </tr>
                       
                       <tr>
                            <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                &nbsp;C4. </td>
                            <td class="style15" bgcolor="#CCCCCC">
                                 OTHER SERVICES OFFERED BY YOUR HOSPICE</td>
                        </tr>
                       
                       <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                          In the table below, please check the type of program(s) you operated or were planning in FY 
                                <asp:Label ID="SY3" runat="server" ></asp:Label>.
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
                                Do you have a hospice service delivery program outside the model of the Medicare 
                                Hospice Benefit?</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                <asp:DropDownList ID="SerDelProgram" runat="server" AutoPostBack="True">
                                 <asp:ListItem Selected="True" Value="">Select the program</asp:ListItem>
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem  Value="2">We are planning a program</asp:ListItem>
                                    <asp:ListItem Value="0">No (If no, skip the remaining questions in this section)</asp:ListItem>
                                </asp:DropDownList>
                               
                                            <asp:RequiredFieldValidator ID="vOwnChange" runat="server" 
 ControlToValidate="SerDelProgram" ErrorMessage="Hospice service delivery program outside model of Medicare Hospice Benefit" Text="*"></asp:RequiredFieldValidator></td>
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
                                <asp:Panel ID="Panel_C1" runat="server" style="background-color: #FFFFCC">
                                
                            <table>
                             <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            Please provide the number of patients/families admitted to the program in FY<asp:Label 
                                        ID="SY9" runat="server"> </asp:Label>
                                    and the number of deaths in FY<asp:Label ID="SY4" runat="server"></asp:Label>
                                    of patients who participated in the program.</td>
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
                                            <table border="1" cellspacing="0" class="style32a">
                                                <tr>
                                                    <td valign="top" width="200px">
                                                        Program Type</td>
                                                    <td valign="top">
                                                        Active Program in FY<asp:Label ID="SY5" runat="server"></asp:Label>
                                                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                         ClientValidationFunction="CheckReferrals" ErrorMessage="Please be sure that the sum of the elements entered for Referrals by Source matches the value entered for Total Referrals.">*</asp:CustomValidator>
                                                    </td>
                                                    <td valign="top">
                                                        FY<asp:Label ID="SY6" runat="server"></asp:Label>
                                                        admissions to this program (total number of patients/families)</td>
                                                    <td valign="top">
                                                        FY<asp:Label ID="SY7" runat="server"></asp:Label>
                                                        deaths in this program (total number of deaths)</td>
                                                    <td valign="top">
                                                        Program is Planning or active after FY<asp:Label ID="SY8" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Palliative consult team</td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgPalliative" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitPalliative" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathPalliative" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningPalliative" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Home health agency serving primarily
                                                        <br />
                                                        terminally ill patients</td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgHomeHealth" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitHomeHealth" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathHomeHealth" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningHomeHealth" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pre-hospice support program</td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgPreHospice" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitPreHospice" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathPreHospice" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningPreHospice" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Post-hospice support program for
                                                        <br />
                                                        patients discharged alive</td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgPostHospice" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitPostHospice" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathPostHospice" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningPostHospice" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Grief counseling for non-hospice
                                                        <br />
                                                        families</td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgGriefCounseling" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitGriefCounseling" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathGriefCounseling" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningGriefCounseling" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Other
                                                        <asp:TextBox ID="AltServProgOther1" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgOther1" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitOther1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathOther1" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningOther1" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Other
                                                        <asp:TextBox ID="AltServProgOther2" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="ActProgOther2" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="AdmitOther2" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="DeathOther2" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="PlanningOther2" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            *Please include music therapy, art therapy, and other alternative therapies.</td>
                                    </tr>
                             
                        </table></asp:Panel>
                        </td></tr>--%>
                         <tr><td colspan="2"><hr /></td></tr>
                        <tr>
                             <td class="style15" width="40px" bgcolor="#CCCCCC" valign="top">
                                 &nbsp;C4. </td>
                             <td class="style15" bgcolor="#CCCCCC">UTILIZATION</td>
                         </tr>
                        
                        <tr>
                            <td>&nbsp;</td>
                            <td class="style12">
                                <table class="style32a">
                                    <tr>
                                        <td width="30px" valign="top">
                                            A.</td>
                                        <td valign="top">
                                            Total number of patients served with no insurance:
                                            <asp:TextBox ID="txtNoInsPatients" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvNoInsPatients" runat="server" 
                                                ControlToValidate="txtNoInsPatients" 
                                                ErrorMessage="Number of patients served with no insurance is required" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30px" valign="top">
                                            B.</td>
                                        <td valign="top">
                                            Occupancy Rate: Report the facility’s Occupancy Rate for Fiscal Year 2025.
                                            <asp:TextBox ID="txtOccupancyRate" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeyup="validateDecimal(this);"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvOccupancyRate" runat="server" 
                                                ControlToValidate="txtOccupancyRate" 
                                                ErrorMessage="Occupancy Rate is required" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
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
