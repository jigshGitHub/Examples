<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SectionB.aspx.vb" Inherits="SectionB" Debug="true" %>

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
        function validateNumber(textbox) {
            var originalValue = textbox.value;
            var cleanValue = originalValue.replace(/[^0-9]/g, '');

            var parts = cleanValue.split('.');
            if (parts.length > 2) {
                cleanValue = parts + '.' + parts.slice(1).join('');
            }

            if (originalValue !== cleanValue) {
                textbox.value = cleanValue;
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
        function validateCheckboxes(checkBoxes) {
            for (var i = 0; i < checkBoxes.length; i++) {
                if (checkBoxes[i].checked) {
                    return true;
                }
            }
            return false;
        }
        function validateAttestsDocsChecks(source, args) {
            var checkBoxes = document.querySelectorAll('.clsAttestsDocs input[type="checkbox"]');
            /*
            for (var i = 0; i < checkBoxes.length; i++) {
                if (checkBoxes[i].checked) {
                    args.IsValid = true; 
                    return;
                }
            }

            args.IsValid = false;*/
            args.IsValid = validateCheckboxes(checkBoxes);
        }
        function validateRationaleTrans(source, args) {
            var checkBoxes = document.querySelectorAll('.clsRationaleTrans input[type="checkbox"]');           
            args.IsValid = validateCheckboxes(checkBoxes);
        }
        function validateOWREIT(source, args) {
            var checkBoxes = document.querySelectorAll('.clsOWREIT input[type="checkbox"]');
            args.IsValid = validateCheckboxes(checkBoxes);
        }
        function validateOWNature(source, args) {
            var checkBoxes = document.querySelectorAll('.clsOWNature input[type="checkbox"]');
            args.IsValid = validateCheckboxes(checkBoxes);
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
        }

        .style15 {
            height: 15px;
            font-weight: bold;
        }

        .style17 {
            width: 710px;
        }

        .style18 {
            color: white;
        }

        .style23 {
            color: #FFFFFF
        }

        .style24 {
            color: #FFFF00;
        }

        .style25 {
            height: 23px;
        }

        .style31 {
            text-align: left;
            width: 626px;
        }



        .style38 {
            width: 425px;
        }

        .style39 {
            height: 15px;
            font-weight: bold;
            width: 30px;
        }

        .style40 {
            width: 30px;
        }

        .style41 {
            color: blue;
        }

        .style42 {
            width: 12px;
            height: 12px;
        }
        .auto-style1 {
            height: 21px;
        }
    </style>
</head>
<body onkeypress="DisableEnter()">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
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
                                        <td colspan="3" align="center">
                                            <b style="text-align: center">SECTION B - PROGRAM DEMOGRAPHICS</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="lbl_message0" runat="server" ForeColor="Red" Text="The information in this section has been prepopulated and locked.  Please contact the Commission staff if you need to make changes."></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC" valign="top">&nbsp;B1.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">LICENSE TYPE</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">
                                            <asp:DropDownList ID="License_Type" runat="server" Enabled="false">
                                                <asp:ListItem Text="Choose one" Value="" />
                                                <asp:ListItem Text="General" Value="01" />
                                                <asp:ListItem Text="Limited" Value="02" />

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="vLicense_Type" runat="server"
                                                ControlToValidate="License_Type" ErrorMessage="B1. License Type" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">&nbsp;B2.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">AGENCY TYPE</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">
                                            <asp:DropDownList ID="AgType" runat="server" Enabled="false">
                                                <asp:ListItem Text="Choose one" Value="" />
                                                <asp:ListItem Text="Freestanding" Value="01" />
                                                <asp:ListItem Text="Hospital Based" Value="02" />
                                                <asp:ListItem Text="Home Health Based" Value="03" />
                                                <asp:ListItem Text="Nursing Home Based" Value="04" />

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="AgType" ErrorMessage="B2. Agency Type" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">&nbsp;B3.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">OWNERSHIP</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">
                                            <asp:DropDownList ID="Ownership" runat="server" Enabled="false" AutoPostBack="true">
                                                <asp:ListItem Text="Choose one" Value="" />
                                                <asp:ListItem Text="Corporate Chain/Multi-Facility Provider" Value="01" />
                                                <asp:ListItem Text="Managed Care/HMO" Value="02" />
                                                <asp:ListItem Text="Hospital or Integrated Health System" Value="03" />
                                                <asp:ListItem Text="Independent" Value="04" />
                                                <asp:ListItem Text="Other" Value="05" />
                                            </asp:DropDownList>&nbsp;&nbsp;
                                            <asp:TextBox ID="txtOWOther" runat="server" Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvOWOther" runat="server" Enabled="false" ControlToValidate="txtOWOther" ErrorMessage="Please specify Other" Text="*"></asp:RequiredFieldValidator><br />
                                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                ControlToValidate="Ownership" ErrorMessage="B3. Ownership" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">Did your agency change ownership during FY<asp:Label ID="SY1" runat="server"></asp:Label>
                                            ?&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="OwnChange" runat="server" AutoPostBack="True" Enabled="false">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="vOwnChange" runat="server"
                                                ControlToValidate="OwnChange"
                                                ErrorMessage="Agency changed ownership during past FY" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">
                                            <asp:Panel ID="Panel_1" runat="server" Enabled="false">
                                                <table style="width:100%" bgcolor="#FFFFCC">
                                                    <tr>
                                                        <td colspan="3" class="style38">If yes, name of the former and current owners and the effective date of change:
                                                        </td>
                                                    </tr>
                                                    <tr>

                                                        <td colspan="3" class="style38">Former Owner:   
                                                        <asp:TextBox ID="FormerOwner" runat="server" Columns="50"
                                                            MaxLength="50" BackColor="#FFFFFF"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                                ControlToValidate="FormerOwner" ErrorMessage="If you have indicated that your agency has changed ownership, please provide the current and former owners, and the date of the change." Text="*"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>


                                                        <td colspan="3" class="style38">Current Owner:
                                 <asp:TextBox ID="CurOwner" runat="server" BackColor="#FFFFFF" Columns="50"
                                     MaxLength="50"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                                ControlToValidate="CurOwner" ErrorMessage="Current Owner" Text="*"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>


                                                        <td colspan="3" class="style38">Month&nbsp;  
                                                         <asp:DropDownList ID="ChangeMon" runat="server">
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
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                                ControlToValidate="ChangeMon" ErrorMessage="Month Ownership changed" Text="*"></asp:RequiredFieldValidator>&nbsp;
 Day&nbsp;
 <asp:DropDownList ID="ChangeDay" runat="server">
     <asp:ListItem Text="Select Day" Value="" />
     <asp:ListItem Text="1" Value="01" />
     <asp:ListItem Text="2" Value="02" />
     <asp:ListItem Text="3" Value="03" />
     <asp:ListItem Text="4" Value="04" />
     <asp:ListItem Text="5" Value="05" />
     <asp:ListItem Text="6" Value="06" />
     <asp:ListItem Text="7" Value="07" />
     <asp:ListItem Text="8" Value="08" />
     <asp:ListItem Text="9" Value="09" />
     <asp:ListItem Text="10" Value="10" />
     <asp:ListItem Text="11" Value="11" />
     <asp:ListItem Text="12" Value="12" />
     <asp:ListItem Text="13" Value="13" />
     <asp:ListItem Text="14" Value="14" />
     <asp:ListItem Text="15" Value="15" />
     <asp:ListItem Text="16" Value="16" />
     <asp:ListItem Text="17" Value="17" />
     <asp:ListItem Text="18" Value="18" />
     <asp:ListItem Text="19" Value="19" />
     <asp:ListItem Text="20" Value="20" />
     <asp:ListItem Text="21" Value="21" />
     <asp:ListItem Text="22" Value="22" />
     <asp:ListItem Text="23" Value="23" />
     <asp:ListItem Text="24" Value="24" />
     <asp:ListItem Text="26" Value="26" />
     <asp:ListItem Text="27" Value="27" />
     <asp:ListItem Text="28" Value="28" />
     <asp:ListItem Text="29" Value="29" />
     <asp:ListItem Text="30" Value="30" />
     <asp:ListItem Text="31" Value="31" />

 </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                                ControlToValidate="ChangeDay" ErrorMessage="Day ownership changed" Text="*"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38"><u><b>General Information</b></u></td></tr>
                                                    <tr><td colspan="3" class="style38">What was the nature of the change in ownership? (check all that apply) 
                                                        <asp:CustomValidator ID="cvOWNature" runat="server" 
                                                            ClientValidationFunction="validateOWNature" 
                                                            ErrorMessage="You must select at least one option for nature of the change in ownership." 
                                                            Display="Dynamic">*
                                                        </asp:CustomValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkRealEstateOW" runat="server" AutoPostBack="true" Text="Change in real estate ownership or leaseholder (legal name of the entity that owns the land and building)" />
                                                         </td>
                                                    </tr>
                                                    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td colspan="2">Relationship to operating entity:
                                                        <asp:RequiredFieldValidator ID="rfvEntityRelation" runat="server" ControlToValidate="rblEntityRelation" ErrorMessage="Relationship to operating entity is required" Enabled="false">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2"><asp:RadioButtonList ID="rblEntityRelation" Enabled="false" AutoPostBack="true" runat="server">
                                                          <asp:ListItem Value="1">Common ownership</asp:ListItem>
                                                          <asp:ListItem Value="2">Related party</asp:ListItem>
                                                          <asp:ListItem Value="3">Unrelated third party</asp:ListItem>
                                                          <asp:ListItem Value="4">Other</asp:ListItem>
                                                      </asp:RadioButtonList>
                                                      <asp:TextBox ID="txtEntityOther" runat="server"  Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                                          <asp:RequiredFieldValidator Enabled="false" runat="server" ErrorMessage="Specify Other for Relationship to operating entity!" ID="rfvEntityOther" ControlToValidate="txtEntityOther">*</asp:RequiredFieldValidator>
                                                    </td></tr>
                                                    <tr><td colspan="3"><asp:CheckBox CssClass="clsOWNature" ID="chkOpOwner" runat="server" AutoPostBack="true" Text="Change in operations owner(s)" /></td></tr>
                                                    <tr><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">Report the Legal Name of the Entity responsible for day-to-day operations&nbsp;<asp:TextBox ID="txtLegalName" BackColor="#CCCCCC" runat="server" Columns="20" MaxLength="250" Enabled="false"></asp:TextBox> 
                                                        <asp:RequiredFieldValidator ID="rfvLegalName" runat="server" ControlToValidate="txtLegalName" ErrorMessage="Legal Name of the Entity is required" Enabled="false">*</asp:RequiredFieldValidator>
                                                        </td></tr>
                                                    <tr><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">Report the Federal EIN&nbsp;<asp:TextBox onkeyup="validateNumber(this);" BackColor="#CCCCCC" ID="txtEIN" runat="server" Columns="10" Enabled="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvEIN" runat="server" ControlToValidate="txtEIN" ErrorMessage="Federal EIN is required" Enabled="false">*</asp:RequiredFieldValidator>
                                                         </td></tr>
                                                    <tr><td>&nbsp;&nbsp;&nbsp;</td><td colspan="2">Report the percentage of ownership&nbsp;<asp:TextBox onkeyup="validateNumber(this);" BackColor="#CCCCCC" ID ="txtPercent" runat="server" Columns="10" Enabled="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvPercent" runat="server" ControlToValidate="txtPercent" ErrorMessage="Percentage of ownership is required" Enabled="false">*</asp:RequiredFieldValidator>
                                                        </td></tr>
                                                    </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkParentEntity" runat="server" Text="Change in parent or controlling entity" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkMgtCompany" runat="server" Text="Change in management company" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkIntRestruct" runat="server" Text="Internal restructuring (e.g., LLC conversion, merger, reorganization)" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkTransferAsset" runat="server" Text="Sale or transfer of assets" /></td></tr>
                                                    <tr><td colspan="3" class="style38">
                                                        <asp:CheckBox ID="chkOtherNature" AutoPostBack="true" runat="server" Text="Other (describe) What was the nature of the ownership change? " />&nbsp;&nbsp; <asp:TextBox ID="txtOtherNature" runat="server" Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvOtherNature" runat="server" ControlToValidate="txtOtherNature" ErrorMessage="Please specify Other" Text="*" Enabled="false"></asp:RequiredFieldValidator>
                                                        </td></tr>
                                                    <tr><td colspan="3" class="style38">&nbsp;</td></tr>
                                                    <tr><td colspan="3" class="style38"><u><b>Ownership and Control</b></u></td></tr>
                                                    <tr><td colspan="3" class="style38">Does any owner, parent entity, subsidiary or controlling entity qualify as a private equity (PE) firm or portfolio company (a company that a PE firm has invested in)?
                                                        <asp:RequiredFieldValidator id="rfvPvtEquity" ControlToValidate="rblPvtEquity" runat="server" Enabled="true" ErrorMessage="Private equity qualification is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                            <asp:RadioButtonList ID="rblPvtEquity" runat="server" AutoPostBack="true">
                                                                <asp:ListItem Text="Yes" Value="1" />
                                                                <asp:ListItem Text="No" Value="2" />
                                                                <asp:ListItem Text="Unsure" Value="3" />
                                                            </asp:RadioButtonList>                                                            
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">Is the acquiring entity part of a corporate chain?
                                                        <asp:RequiredFieldValidator id="rfvCorpChain" ControlToValidate="rblCorpChain" runat="server" Enabled="true" ErrorMessage="Acquiring entity part of a corporate chain is required">*</asp:RequiredFieldValidator>                                                        
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                            <asp:RadioButtonList ID="rblCorpChain" runat="server" AutoPostBack="true">
                                                                <asp:ListItem Text="Yes" Value="1" />
                                                                <asp:ListItem Text="No" Value="2" />
                                                                <asp:ListItem Text="Unsure" Value="3" />
                                                            </asp:RadioButtonList>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">Is any real estate associated with this provider owned by a Real Estate Investment Trust (REIT)?
                                                        <asp:RequiredFieldValidator id="rfvREIT" ControlToValidate="rblREIT" runat="server" Enabled="true" ErrorMessage="Association with REIT is required">*</asp:RequiredFieldValidator>                                                            
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                            <asp:RadioButtonList ID="rblREIT" runat="server" AutoPostBack="true">
                                                                <asp:ListItem Text="Yes" Value="1" />
                                                                <asp:ListItem Text="No" Value="2" />
                                                                <asp:ListItem Text="Unsure" Value="3" />
                                                            </asp:RadioButtonList>
                                                            If yes, report the name of the PE firm or REIT
                                                            <asp:TextBox ID="txtREITName" runat="server" Columns="40" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvREITName" runat="server" ControlToValidate="txtREITName" Enabled="false" ErrorMessage="Please report the name of PE firm or REIT" Text="*"></asp:RequiredFieldValidator><br />
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">&nbsp;</td></tr>
                                                    <tr><td colspan="3" class="style38">Ownership percentage or controlling interest of the PE Firm or REIT (Select all that apply).
                                                        <asp:CustomValidator ID="cvOWREIT" runat="server" 
                                                            ClientValidationFunction="validateOWREIT" 
                                                            ErrorMessage="You must select at least one option for Ownership percentage." 
                                                            Display="Dynamic">*
                                                        </asp:CustomValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                        <asp:CheckBox CssClass="clsOWREIT" ID="chkOperations" runat="server" Text="Operations" AutoPostBack="true"  />
                                                            <asp:DropDownList ID="ddlOpPercent" runat="server" Enabled="false">
                                                                <asp:ListItem Text="Choose one" Value="" />
                                                                <asp:ListItem Text="10" Value="10" />
                                                                <asp:ListItem Text="20" Value="20" />
                                                                <asp:ListItem Text="30" Value="30" />
                                                                <asp:ListItem Text="40" Value="40" />
                                                                <asp:ListItem Text="50" Value="50" />
                                                                <asp:ListItem Text="60" Value="60" />
                                                                <asp:ListItem Text="70" Value="70" />
                                                                <asp:ListItem Text="80" Value="80" />
                                                                <asp:ListItem Text="90" Value="90" />
                                                                <asp:ListItem Text="100" Value="100" />
                                                            </asp:DropDownList> % <asp:RequiredFieldValidator ID="rfvOpPercent" ControlToValidate="ddlOpPercent" runat="server" Enabled="false" ErrorMessage="Operations percentage is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                        <asp:CheckBox CssClass="clsOWREIT" ID="chkFinancing" runat="server" Text="Financing" AutoPostBack="true" />
                                                            <asp:DropDownList ID="ddlFinancing" runat="server" Enabled="false">
                                                                <asp:ListItem Text="Choose one" Value="" />
                                                                <asp:ListItem Text="10" Value="10" />
                                                                <asp:ListItem Text="20" Value="20" />
                                                                <asp:ListItem Text="30" Value="30" />
                                                                <asp:ListItem Text="40" Value="40" />
                                                                <asp:ListItem Text="50" Value="50" />
                                                                <asp:ListItem Text="60" Value="60" />
                                                                <asp:ListItem Text="70" Value="70" />
                                                                <asp:ListItem Text="80" Value="80" />
                                                                <asp:ListItem Text="90" Value="90" />
                                                                <asp:ListItem Text="100" Value="100" />
                                                            </asp:DropDownList> % <asp:RequiredFieldValidator ID="rfvFinancing" ControlToValidate="ddlFinancing" runat="server" Enabled="false" ErrorMessage="Financing percentage is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                        <asp:CheckBox CssClass="clsOWREIT" ID="chkRealestate" runat="server" Text="Real Estate" AutoPostBack="true"  />
                                                            <asp:DropDownList ID="ddlRealEstate" runat="server" Enabled="false">
                                                                <asp:ListItem Text="Choose one" Value="" />
                                                                <asp:ListItem Text="10" Value="10" />
                                                                <asp:ListItem Text="20" Value="20" />
                                                                <asp:ListItem Text="30" Value="30" />
                                                                <asp:ListItem Text="40" Value="40" />
                                                                <asp:ListItem Text="50" Value="50" />
                                                                <asp:ListItem Text="60" Value="60" />
                                                                <asp:ListItem Text="70" Value="70" />
                                                                <asp:ListItem Text="80" Value="80" />
                                                                <asp:ListItem Text="90" Value="90" />
                                                                <asp:ListItem Text="100" Value="100" />
                                                            </asp:DropDownList> % <asp:RequiredFieldValidator ID="rfvRealEstate" ControlToValidate="ddlRealEstate" runat="server" Enabled="false" ErrorMessage="Real estate percentage is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                        <asp:CheckBox CssClass="clsOWREIT" ID="chkMgt" runat="server" Text="Management" AutoPostBack="true"  />
                                                            <asp:DropDownList ID="ddlMgt" runat="server" Enabled="false">
                                                                <asp:ListItem Text="Choose one" Value="" />
                                                                <asp:ListItem Text="10" Value="10" />
                                                                <asp:ListItem Text="20" Value="20" />
                                                                <asp:ListItem Text="30" Value="30" />
                                                                <asp:ListItem Text="40" Value="40" />
                                                                <asp:ListItem Text="50" Value="50" />
                                                                <asp:ListItem Text="60" Value="60" />
                                                                <asp:ListItem Text="70" Value="70" />
                                                                <asp:ListItem Text="80" Value="80" />
                                                                <asp:ListItem Text="90" Value="90" />
                                                                <asp:ListItem Text="100" Value="100" />
                                                            </asp:DropDownList> % <asp:RequiredFieldValidator ID="rfvMgt" ControlToValidate="ddlMgt" runat="server" Enabled="false" ErrorMessage="Real estate percentage is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">&nbsp;</td></tr>
                                                    <tr><td colspan="3" class="style38">Did the transaction involve any Management Services Agreements?
                                                            <asp:RequiredFieldValidator id="rfvMgtSvcAgreement" ControlToValidate="rblMgtSvcAgreement" runat="server" Enabled="true" ErrorMessage="Involve any Management Services Agreements is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">
                                                            <asp:RadioButtonList ID="rblMgtSvcAgreement" runat="server" AutoPostBack="true">
                                                                <asp:ListItem Text="Yes" Value="1" />
                                                                <asp:ListItem Text="No" Value="0" />
                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">&nbsp;</td></tr>
                                                    <tr><td colspan="3" class="style38"><u><b>Transaction Characteristics</b></u></td></tr>
                                                    <tr><td colspan="3" class="style38">What was the approximate value or purchase price of the transaction? 
                                                        <asp:TextBox ID="txtTransPrice" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeyup="validateDecimal(this);"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38">What was the stated rationale for the transaction? (Select all that apply)
                                                        <asp:CustomValidator ID="cvRationaleTrans" runat="server" 
                                                            ClientValidationFunction="validateRationaleTrans" 
                                                            ErrorMessage="You must select at least one option for stated rationale for the transaction." 
                                                            Display="Dynamic">*
                                                        </asp:CustomValidator>
                                                        </td>
                                                    </tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkFinSustain" runat="server" Text="Financial sustainability" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkRenovation" runat="server" Text="Access to capital for expansion/renovation" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkGrowth" runat="server" Text="Market growth/expansion into new service lines" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkCompliance" runat="server" Text="Compliance/regulatory requirements" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkTransOther" runat="server" Text="Other" AutoPostBack="true" />&nbsp;&nbsp; <asp:TextBox ID="txtTransOther" runat="server" Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTransOther" runat="server" enabled="false" ControlToValidate="txtTransOther" ErrorMessage="Please specify Other rationale for the transaction" Text="*"></asp:RequiredFieldValidator>
                                                    </td></tr>                                    
                                                    <tr><td colspan="3" class="style38">The authorized representative of the agency attests that the document(s) supporting the reported ownership structure will be available upon request, including: (Select all that apply)
                                                        <asp:CustomValidator ID="cvAttestsDocs" runat="server" 
                                                            ClientValidationFunction="validateAttestsDocsChecks" 
                                                            ErrorMessage="You must select at least one option for attests that the document(s) supporting." 
                                                            Display="Dynamic">*
                                                        </asp:CustomValidator>
                                                        </td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkOrgChart" runat="server" Text="Organizational charts" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkOpAgreement" runat="server" Text="Operating agreements" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkLease" runat="server" Text="Leases (rent pre and post transaction) or deeds" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkMgtServAgreement" runat="server" Text="Management fees and/or management service agreements" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkFinAgreement" runat="server" Text="Financing or security agreements" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkPayorContract" runat="server" Text="Contracts with payors" /></td></tr>
                                                    <tr><td colspan="3" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkDocNA" runat="server" Text="Not applicable" /></td></tr>
                                                    <tr><td colspan="3" class="style38">&nbsp;</td></tr>
                                                    <tr><td colspan="3" class="style38"><u><b>Looking Forward</b></u></td></tr>
                                                    <tr><td colspan="3" class="style38">Does your agency anticipate any ownership or affiliation changes in the next 12 months?
                                                        <asp:RequiredFieldValidator id="rfvOwnershipChange" ControlToValidate="rblOwnershipChange" runat="server" Enabled="true" ErrorMessage="Ownership or affiliation changes is required">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>                                    
                                                    <tr><td colspan="3" class="style38">
                                                            <asp:RadioButtonList ID="rblOwnershipChange" runat="server">
                                                                <asp:ListItem Text="Yes" Value="1" />
                                                                <asp:ListItem Text="No" Value="2" />
                                                                <asp:ListItem Text="Unsure" Value="3" />
                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">&nbsp;B4.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">TAX STATUS</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">
                                            <asp:DropDownList ID="TaxStatus" runat="server" Enabled="false">
                                                <asp:ListItem Text="Choose one" Value="" />
                                                <asp:ListItem Text="Voluntary (not for profit - 501(c)(3) status)" Value="01" />
                                                <asp:ListItem Text="Proprietary (for profit)" Value="02" />
                                                <asp:ListItem Text="Government" Value="03" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                ControlToValidate="TaxStatus" ErrorMessage="B4. Tax Status" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">&nbsp;B5.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">GEOGRAPHIC AREA SERVED</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">
                                            <asp:DropDownList ID="Location_Type" runat="server" Enabled="false">
                                                <asp:ListItem Text="Choose one" Value="" />
                                                <asp:ListItem Text="Primary Urban" Value="01" />
                                                <asp:ListItem Text="Primary Rural" Value="02" />
                                                <asp:ListItem Text="Mixed Urban and Rural" Value="03" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                ControlToValidate="Location_Type" ErrorMessage="B5. Geographic Area Served" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">&nbsp;B6.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">MULTIPLE LOCATIONS</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">Does your agency have multiple locations? (this includes agencies outside of MD) &nbsp;
                           <asp:DropDownList ID="MultiLoc" runat="server" AutoPostBack="True" Enabled="false">

                               <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                               <asp:ListItem Value="0">No</asp:ListItem>
                           </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                ControlToValidate="MultiLoc" ErrorMessage="B6. Multiple Locations" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td colspan="2">
                                            <asp:Panel ID="Panel2" runat="server" Enabled="false">
                                                <table style="background-color: #FFFFCC">
                                                    <tr>
                                                        <td colspan="3" class="auto-style1">If yes, please indicate the address where each is located
                                                        
                                                        </td>
                                                    </tr>
                                                    <tr>


                                                        <td class="style11" colspan="3">&nbsp;</td>
                                                    </tr>
                                                    <tr>


                                                        <td class="style11" colspan="3">
                                                            <table class="style32a">
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td class="style11" width="120px">Address</td>
                                                                    <td class="style11" width="90px">City</td>
                                                                    <td class="style11" width="90px">County</td>
                                                                    <td class="style11" width="30px">State</td>
                                                                    <td class="style11" width="60px">Zip</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style11" width="80px">Headquarters</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="HeadAddress" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                                            ControlToValidate="HeadAddress" ErrorMessage="Headquarters' address" Text="*"></asp:RequiredFieldValidator></td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="HeadCity" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                                                                            ControlToValidate="HeadCity" ErrorMessage="Headquarters' City" Text="*"></asp:RequiredFieldValidator></td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="HeadCounty"
                                                                            runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="ALLEGANY" Value="01" />
                                                                            <asp:ListItem Text="ANNE ARUNDEL" Value="02" />
                                                                            <asp:ListItem Text="BALTIMORE" Value="03" />
                                                                            <asp:ListItem Text="BALTIMORE CITY" Value="30" />
                                                                            <asp:ListItem Text="CALVERT" Value="04" />
                                                                            <asp:ListItem Text="CAROLINE" Value="05" />
                                                                            <asp:ListItem Text="CARROLL" Value="06" />
                                                                            <asp:ListItem Text="CECIL" Value="07" />
                                                                            <asp:ListItem Text="CHARLES" Value="08" />
                                                                            <asp:ListItem Text="DORCHESTER" Value="09" />
                                                                            <asp:ListItem Text="FREDERICK" Value="10" />
                                                                            <asp:ListItem Text="GARRETT" Value="11" />
                                                                            <asp:ListItem Text="HARFORD" Value="12" />
                                                                            <asp:ListItem Text="HOWARD" Value="13" />
                                                                            <asp:ListItem Text="KENT" Value="14" />
                                                                            <asp:ListItem Text="MONTGOMERY" Value="15" />
                                                                            <asp:ListItem Text="PRINCE GEORGES" Value="16" />
                                                                            <asp:ListItem Text="QUEEN ANNES" Value="17" />
                                                                            <asp:ListItem Text="SOMERSET" Value="19" />
                                                                            <asp:ListItem Text="ST. MARYS" Value="18" />
                                                                            <asp:ListItem Text="TALBOT" Value="20" />
                                                                            <asp:ListItem Text="WASHINGTON" Value="21" />
                                                                            <asp:ListItem Text="WICOMICO" Value="22" />
                                                                            <asp:ListItem Text="WORCESTER" Value="23" />
                                                                            <asp:ListItem Text="OTHER" Value="24" />
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server"
                                                                            ControlToValidate="HeadCounty" ErrorMessage="Headquarters' County" Text="*"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="HeadState" runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="AL" Value="AL" />
                                                                            <asp:ListItem Text="AK" Value="AK" />
                                                                            <asp:ListItem Text="AZ" Value="AZ" />
                                                                            <asp:ListItem Text="AR" Value="AR" />
                                                                            <asp:ListItem Text="CA" Value="CA" />
                                                                            <asp:ListItem Text="CO" Value="CO" />
                                                                            <asp:ListItem Text="CT" Value="CT" />
                                                                            <asp:ListItem Text="DE" Value="DE" />
                                                                            <asp:ListItem Text="DC" Value="DC" />
                                                                            <asp:ListItem Text="FL" Value="FL" />
                                                                            <asp:ListItem Text="GA" Value="GA" />
                                                                            <asp:ListItem Text="GU" Value="GU" />
                                                                            <asp:ListItem Text="HI" Value="HI" />
                                                                            <asp:ListItem Text="ID" Value="ID" />
                                                                            <asp:ListItem Text="IL" Value="IL" />
                                                                            <asp:ListItem Text="IN" Value="IN" />
                                                                            <asp:ListItem Text="IA" Value="IA" />
                                                                            <asp:ListItem Text="KS" Value="KS" />
                                                                            <asp:ListItem Text="KY" Value="KY" />
                                                                            <asp:ListItem Text="LA" Value="LA" />
                                                                            <asp:ListItem Text="ME" Value="ME" />
                                                                            <asp:ListItem Text="MD" Value="MD" />
                                                                            <asp:ListItem Text="MA" Value="MA" />
                                                                            <asp:ListItem Text="MI" Value="MI" />
                                                                            <asp:ListItem Text="MN" Value="MN" />
                                                                            <asp:ListItem Text="MS" Value="MS" />
                                                                            <asp:ListItem Text="MO" Value="MO" />
                                                                            <asp:ListItem Text="MT" Value="MT" />
                                                                            <asp:ListItem Text="NE" Value="NE" />
                                                                            <asp:ListItem Text="NV" Value="NV" />
                                                                            <asp:ListItem Text="NH" Value="NH" />
                                                                            <asp:ListItem Text="NJ" Value="NJ" />
                                                                            <asp:ListItem Text="NM" Value="NM" />
                                                                            <asp:ListItem Text="NY" Value="NY" />
                                                                            <asp:ListItem Text="NC" Value="NC" />
                                                                            <asp:ListItem Text="ND" Value="ND" />
                                                                            <asp:ListItem Text="OH" Value="OH" />
                                                                            <asp:ListItem Text="OK" Value="OK" />
                                                                            <asp:ListItem Text="OR" Value="OR" />
                                                                            <asp:ListItem Text="PA" Value="PA" />
                                                                            <asp:ListItem Text="PR" Value="PR" />
                                                                            <asp:ListItem Text="RI" Value="RI" />
                                                                            <asp:ListItem Text="SC" Value="SC" />
                                                                            <asp:ListItem Text="SD" Value="SD" />
                                                                            <asp:ListItem Text="TN" Value="TN" />
                                                                            <asp:ListItem Text="TX" Value="TX" />
                                                                            <asp:ListItem Text="UT" Value="UT" />
                                                                            <asp:ListItem Text="VT" Value="VT" />
                                                                            <asp:ListItem Text="VA" Value="VA" />
                                                                            <asp:ListItem Text="VI" Value="VI" />
                                                                            <asp:ListItem Text="WA" Value="WA" />
                                                                            <asp:ListItem Text="WV" Value="WV" />
                                                                            <asp:ListItem Text="WI" Value="WI" />
                                                                            <asp:ListItem Text="WY" Value="WY" />
                                                                            <asp:ListItem Text="OT" Value="OT" />
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="vHeadState" runat="server" ControlToValidate="HeadState"
                                                                            ErrorMessage="Headquarters' State" Text="*"></asp:RequiredFieldValidator></td>
                                                                    <td class="style11" width="40px">
                                                                        <asp:TextBox ID="HeadZip" runat="server" Columns="5" MaxLength="5"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="z1" runat="server" ErrorMessage="*"
                                                                            ValidationExpression="\d{5}(-\d{4})?" ControlToValidate="HeadZip"></asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Location 1</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="Loc1Address" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="Loc1City" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                                                    </td>

                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="Loc1County"
                                                                            runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="ALLEGANY" Value="01" />
                                                                            <asp:ListItem Text="ANNE ARUNDEL" Value="02" />
                                                                            <asp:ListItem Text="BALTIMORE" Value="03" />
                                                                            <asp:ListItem Text="BALTIMORE CITY" Value="30" />
                                                                            <asp:ListItem Text="CALVERT" Value="04" />
                                                                            <asp:ListItem Text="CAROLINE" Value="05" />
                                                                            <asp:ListItem Text="CARROLL" Value="06" />
                                                                            <asp:ListItem Text="CECIL" Value="07" />
                                                                            <asp:ListItem Text="CHARLES" Value="08" />
                                                                            <asp:ListItem Text="DORCHESTER" Value="09" />
                                                                            <asp:ListItem Text="FREDERICK" Value="10" />
                                                                            <asp:ListItem Text="GARRETT" Value="11" />
                                                                            <asp:ListItem Text="HARFORD" Value="12" />
                                                                            <asp:ListItem Text="HOWARD" Value="13" />
                                                                            <asp:ListItem Text="KENT" Value="14" />
                                                                            <asp:ListItem Text="MONTGOMERY" Value="15" />
                                                                            <asp:ListItem Text="PRINCE GEORGES" Value="16" />
                                                                            <asp:ListItem Text="QUEEN ANNES" Value="17" />
                                                                            <asp:ListItem Text="SOMERSET" Value="19" />
                                                                            <asp:ListItem Text="ST. MARYS" Value="18" />
                                                                            <asp:ListItem Text="TALBOT" Value="20" />
                                                                            <asp:ListItem Text="WASHINGTON" Value="21" />
                                                                            <asp:ListItem Text="WICOMICO" Value="22" />
                                                                            <asp:ListItem Text="WORCESTER" Value="23" />
                                                                            <asp:ListItem Text="OTHER" Value="24" />
                                                                        </asp:DropDownList>

                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="Loc1State" runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="AL" Value="AL" />
                                                                            <asp:ListItem Text="AK" Value="AK" />
                                                                            <asp:ListItem Text="AZ" Value="AZ" />
                                                                            <asp:ListItem Text="AR" Value="AR" />
                                                                            <asp:ListItem Text="CA" Value="CA" />
                                                                            <asp:ListItem Text="CO" Value="CO" />
                                                                            <asp:ListItem Text="CT" Value="CT" />
                                                                            <asp:ListItem Text="DE" Value="DE" />
                                                                            <asp:ListItem Text="DC" Value="DC" />
                                                                            <asp:ListItem Text="FL" Value="FL" />
                                                                            <asp:ListItem Text="GA" Value="GA" />
                                                                            <asp:ListItem Text="GU" Value="GU" />
                                                                            <asp:ListItem Text="HI" Value="HI" />
                                                                            <asp:ListItem Text="ID" Value="ID" />
                                                                            <asp:ListItem Text="IL" Value="IL" />
                                                                            <asp:ListItem Text="IN" Value="IN" />
                                                                            <asp:ListItem Text="IA" Value="IA" />
                                                                            <asp:ListItem Text="KS" Value="KS" />
                                                                            <asp:ListItem Text="KY" Value="KY" />
                                                                            <asp:ListItem Text="LA" Value="LA" />
                                                                            <asp:ListItem Text="ME" Value="ME" />
                                                                            <asp:ListItem Text="MD" Value="MD" />
                                                                            <asp:ListItem Text="MA" Value="MA" />
                                                                            <asp:ListItem Text="MI" Value="MI" />
                                                                            <asp:ListItem Text="MN" Value="MN" />
                                                                            <asp:ListItem Text="MS" Value="MS" />
                                                                            <asp:ListItem Text="MO" Value="MO" />
                                                                            <asp:ListItem Text="MT" Value="MT" />
                                                                            <asp:ListItem Text="NE" Value="NE" />
                                                                            <asp:ListItem Text="NV" Value="NV" />
                                                                            <asp:ListItem Text="NH" Value="NH" />
                                                                            <asp:ListItem Text="NJ" Value="NJ" />
                                                                            <asp:ListItem Text="NM" Value="NM" />
                                                                            <asp:ListItem Text="NY" Value="NY" />
                                                                            <asp:ListItem Text="NC" Value="NC" />
                                                                            <asp:ListItem Text="ND" Value="ND" />
                                                                            <asp:ListItem Text="OH" Value="OH" />
                                                                            <asp:ListItem Text="OK" Value="OK" />
                                                                            <asp:ListItem Text="OR" Value="OR" />
                                                                            <asp:ListItem Text="PA" Value="PA" />
                                                                            <asp:ListItem Text="PR" Value="PR" />
                                                                            <asp:ListItem Text="RI" Value="RI" />
                                                                            <asp:ListItem Text="SC" Value="SC" />
                                                                            <asp:ListItem Text="SD" Value="SD" />
                                                                            <asp:ListItem Text="TN" Value="TN" />
                                                                            <asp:ListItem Text="TX" Value="TX" />
                                                                            <asp:ListItem Text="UT" Value="UT" />
                                                                            <asp:ListItem Text="VT" Value="VT" />
                                                                            <asp:ListItem Text="VA" Value="VA" />
                                                                            <asp:ListItem Text="VI" Value="VI" />
                                                                            <asp:ListItem Text="WA" Value="WA" />
                                                                            <asp:ListItem Text="WV" Value="WV" />
                                                                            <asp:ListItem Text="WI" Value="WI" />
                                                                            <asp:ListItem Text="WY" Value="WY" />
                                                                            <asp:ListItem Text="OT" Value="OT" />
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td class="style11" width="40px">
                                                                        <asp:TextBox ID="Loc1Zip" runat="server" Columns="5" MaxLength="5"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="z2" runat="server" ErrorMessage="*"
                                                                            ValidationExpression="\d{5}(-\d{4})?" ControlToValidate="Loc1Zip"></asp:RegularExpressionValidator>

                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Location 2</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="Loc2Address" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="Loc2City" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="Loc2County"
                                                                            runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="ALLEGANY" Value="01" />
                                                                            <asp:ListItem Text="ANNE ARUNDEL" Value="02" />
                                                                            <asp:ListItem Text="BALTIMORE" Value="03" />
                                                                            <asp:ListItem Text="BALTIMORE CITY" Value="30" />
                                                                            <asp:ListItem Text="CALVERT" Value="04" />
                                                                            <asp:ListItem Text="CAROLINE" Value="05" />
                                                                            <asp:ListItem Text="CARROLL" Value="06" />
                                                                            <asp:ListItem Text="CECIL" Value="07" />
                                                                            <asp:ListItem Text="CHARLES" Value="08" />
                                                                            <asp:ListItem Text="DORCHESTER" Value="09" />
                                                                            <asp:ListItem Text="FREDERICK" Value="10" />
                                                                            <asp:ListItem Text="GARRETT" Value="11" />
                                                                            <asp:ListItem Text="HARFORD" Value="12" />
                                                                            <asp:ListItem Text="HOWARD" Value="13" />
                                                                            <asp:ListItem Text="KENT" Value="14" />
                                                                            <asp:ListItem Text="MONTGOMERY" Value="15" />
                                                                            <asp:ListItem Text="PRINCE GEORGES" Value="16" />
                                                                            <asp:ListItem Text="QUEEN ANNES" Value="17" />
                                                                            <asp:ListItem Text="SOMERSET" Value="19" />
                                                                            <asp:ListItem Text="ST. MARYS" Value="18" />
                                                                            <asp:ListItem Text="TALBOT" Value="20" />
                                                                            <asp:ListItem Text="WASHINGTON" Value="21" />
                                                                            <asp:ListItem Text="WICOMICO" Value="22" />
                                                                            <asp:ListItem Text="WORCESTER" Value="23" />
                                                                            <asp:ListItem Text="OTHER" Value="24" />
                                                                        </asp:DropDownList>

                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="Loc2State" runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="AL" Value="AL" />
                                                                            <asp:ListItem Text="AK" Value="AK" />
                                                                            <asp:ListItem Text="AZ" Value="AZ" />
                                                                            <asp:ListItem Text="AR" Value="AR" />
                                                                            <asp:ListItem Text="CA" Value="CA" />
                                                                            <asp:ListItem Text="CO" Value="CO" />
                                                                            <asp:ListItem Text="CT" Value="CT" />
                                                                            <asp:ListItem Text="DE" Value="DE" />
                                                                            <asp:ListItem Text="DC" Value="DC" />
                                                                            <asp:ListItem Text="FL" Value="FL" />
                                                                            <asp:ListItem Text="GA" Value="GA" />
                                                                            <asp:ListItem Text="GU" Value="GU" />
                                                                            <asp:ListItem Text="HI" Value="HI" />
                                                                            <asp:ListItem Text="ID" Value="ID" />
                                                                            <asp:ListItem Text="IL" Value="IL" />
                                                                            <asp:ListItem Text="IN" Value="IN" />
                                                                            <asp:ListItem Text="IA" Value="IA" />
                                                                            <asp:ListItem Text="KS" Value="KS" />
                                                                            <asp:ListItem Text="KY" Value="KY" />
                                                                            <asp:ListItem Text="LA" Value="LA" />
                                                                            <asp:ListItem Text="ME" Value="ME" />
                                                                            <asp:ListItem Text="MD" Value="MD" />
                                                                            <asp:ListItem Text="MA" Value="MA" />
                                                                            <asp:ListItem Text="MI" Value="MI" />
                                                                            <asp:ListItem Text="MN" Value="MN" />
                                                                            <asp:ListItem Text="MS" Value="MS" />
                                                                            <asp:ListItem Text="MO" Value="MO" />
                                                                            <asp:ListItem Text="MT" Value="MT" />
                                                                            <asp:ListItem Text="NE" Value="NE" />
                                                                            <asp:ListItem Text="NV" Value="NV" />
                                                                            <asp:ListItem Text="NH" Value="NH" />
                                                                            <asp:ListItem Text="NJ" Value="NJ" />
                                                                            <asp:ListItem Text="NM" Value="NM" />
                                                                            <asp:ListItem Text="NY" Value="NY" />
                                                                            <asp:ListItem Text="NC" Value="NC" />
                                                                            <asp:ListItem Text="ND" Value="ND" />
                                                                            <asp:ListItem Text="OH" Value="OH" />
                                                                            <asp:ListItem Text="OK" Value="OK" />
                                                                            <asp:ListItem Text="OR" Value="OR" />
                                                                            <asp:ListItem Text="PA" Value="PA" />
                                                                            <asp:ListItem Text="PR" Value="PR" />
                                                                            <asp:ListItem Text="RI" Value="RI" />
                                                                            <asp:ListItem Text="SC" Value="SC" />
                                                                            <asp:ListItem Text="SD" Value="SD" />
                                                                            <asp:ListItem Text="TN" Value="TN" />
                                                                            <asp:ListItem Text="TX" Value="TX" />
                                                                            <asp:ListItem Text="UT" Value="UT" />
                                                                            <asp:ListItem Text="VT" Value="VT" />
                                                                            <asp:ListItem Text="VA" Value="VA" />
                                                                            <asp:ListItem Text="VI" Value="VI" />
                                                                            <asp:ListItem Text="WA" Value="WA" />
                                                                            <asp:ListItem Text="WV" Value="WV" />
                                                                            <asp:ListItem Text="WI" Value="WI" />
                                                                            <asp:ListItem Text="WY" Value="WY" />
                                                                            <asp:ListItem Text="OT" Value="OT" />
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td class="style11" width="40px">
                                                                        <asp:TextBox ID="Loc2Zip" runat="server" Columns="5" MaxLength="5"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="z3" runat="server" ErrorMessage="*"
                                                                            ValidationExpression="\d{5}(-\d{4})?" ControlToValidate="Loc2Zip"></asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Location 3</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="Loc3Address" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="Loc3City" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="Loc3County"
                                                                            runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="ALLEGANY" Value="01" />
                                                                            <asp:ListItem Text="ANNE ARUNDEL" Value="02" />
                                                                            <asp:ListItem Text="BALTIMORE" Value="03" />
                                                                            <asp:ListItem Text="BALTIMORE CITY" Value="30" />
                                                                            <asp:ListItem Text="CALVERT" Value="04" />
                                                                            <asp:ListItem Text="CAROLINE" Value="05" />
                                                                            <asp:ListItem Text="CARROLL" Value="06" />
                                                                            <asp:ListItem Text="CECIL" Value="07" />
                                                                            <asp:ListItem Text="CHARLES" Value="08" />
                                                                            <asp:ListItem Text="DORCHESTER" Value="09" />
                                                                            <asp:ListItem Text="FREDERICK" Value="10" />
                                                                            <asp:ListItem Text="GARRETT" Value="11" />
                                                                            <asp:ListItem Text="HARFORD" Value="12" />
                                                                            <asp:ListItem Text="HOWARD" Value="13" />
                                                                            <asp:ListItem Text="KENT" Value="14" />
                                                                            <asp:ListItem Text="MONTGOMERY" Value="15" />
                                                                            <asp:ListItem Text="PRINCE GEORGES" Value="16" />
                                                                            <asp:ListItem Text="QUEEN ANNES" Value="17" />
                                                                            <asp:ListItem Text="SOMERSET" Value="19" />
                                                                            <asp:ListItem Text="ST. MARYS" Value="18" />
                                                                            <asp:ListItem Text="TALBOT" Value="20" />
                                                                            <asp:ListItem Text="WASHINGTON" Value="21" />
                                                                            <asp:ListItem Text="WICOMICO" Value="22" />
                                                                            <asp:ListItem Text="WORCESTER" Value="23" />
                                                                            <asp:ListItem Text="OTHER" Value="24" />
                                                                        </asp:DropDownList>

                                                                    </td>
                                                                    <td class="style11">
                                                                        <asp:DropDownList ID="Loc3State" runat="server">
                                                                            <asp:ListItem Text="Select" Value="" />
                                                                            <asp:ListItem Text="AL" Value="AL" />
                                                                            <asp:ListItem Text="AK" Value="AK" />
                                                                            <asp:ListItem Text="AZ" Value="AZ" />
                                                                            <asp:ListItem Text="AR" Value="AR" />
                                                                            <asp:ListItem Text="CA" Value="CA" />
                                                                            <asp:ListItem Text="CO" Value="CO" />
                                                                            <asp:ListItem Text="CT" Value="CT" />
                                                                            <asp:ListItem Text="DE" Value="DE" />
                                                                            <asp:ListItem Text="DC" Value="DC" />
                                                                            <asp:ListItem Text="FL" Value="FL" />
                                                                            <asp:ListItem Text="GA" Value="GA" />
                                                                            <asp:ListItem Text="GU" Value="GU" />
                                                                            <asp:ListItem Text="HI" Value="HI" />
                                                                            <asp:ListItem Text="ID" Value="ID" />
                                                                            <asp:ListItem Text="IL" Value="IL" />
                                                                            <asp:ListItem Text="IN" Value="IN" />
                                                                            <asp:ListItem Text="IA" Value="IA" />
                                                                            <asp:ListItem Text="KS" Value="KS" />
                                                                            <asp:ListItem Text="KY" Value="KY" />
                                                                            <asp:ListItem Text="LA" Value="LA" />
                                                                            <asp:ListItem Text="ME" Value="ME" />
                                                                            <asp:ListItem Text="MD" Value="MD" />
                                                                            <asp:ListItem Text="MA" Value="MA" />
                                                                            <asp:ListItem Text="MI" Value="MI" />
                                                                            <asp:ListItem Text="MN" Value="MN" />
                                                                            <asp:ListItem Text="MS" Value="MS" />
                                                                            <asp:ListItem Text="MO" Value="MO" />
                                                                            <asp:ListItem Text="MT" Value="MT" />
                                                                            <asp:ListItem Text="NE" Value="NE" />
                                                                            <asp:ListItem Text="NV" Value="NV" />
                                                                            <asp:ListItem Text="NH" Value="NH" />
                                                                            <asp:ListItem Text="NJ" Value="NJ" />
                                                                            <asp:ListItem Text="NM" Value="NM" />
                                                                            <asp:ListItem Text="NY" Value="NY" />
                                                                            <asp:ListItem Text="NC" Value="NC" />
                                                                            <asp:ListItem Text="ND" Value="ND" />
                                                                            <asp:ListItem Text="OH" Value="OH" />
                                                                            <asp:ListItem Text="OK" Value="OK" />
                                                                            <asp:ListItem Text="OR" Value="OR" />
                                                                            <asp:ListItem Text="PA" Value="PA" />
                                                                            <asp:ListItem Text="PR" Value="PR" />
                                                                            <asp:ListItem Text="RI" Value="RI" />
                                                                            <asp:ListItem Text="SC" Value="SC" />
                                                                            <asp:ListItem Text="SD" Value="SD" />
                                                                            <asp:ListItem Text="TN" Value="TN" />
                                                                            <asp:ListItem Text="TX" Value="TX" />
                                                                            <asp:ListItem Text="UT" Value="UT" />
                                                                            <asp:ListItem Text="VT" Value="VT" />
                                                                            <asp:ListItem Text="VA" Value="VA" />
                                                                            <asp:ListItem Text="VI" Value="VI" />
                                                                            <asp:ListItem Text="WA" Value="WA" />
                                                                            <asp:ListItem Text="WV" Value="WV" />
                                                                            <asp:ListItem Text="WI" Value="WI" />
                                                                            <asp:ListItem Text="WY" Value="WY" />
                                                                            <asp:ListItem Text="OT" Value="OT" />
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td class="style11" width="40px">
                                                                        <asp:TextBox ID="Loc3Zip" runat="server" Columns="5" MaxLength="5"></asp:TextBox>
                                                                        <asp:RegularExpressionValidator ID="z4" runat="server" ErrorMessage="*"
                                                                            ValidationExpression="\d{5}(-\d{4})?" ControlToValidate="Loc3Zip"></asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" valign="top" colspan="2">
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" valign="top" colspan="2">Does your agency have multiple Maryland locations?&nbsp;
                           <asp:DropDownList ID="MDLoc" runat="server" AutoPostBack="True" Enabled="false">

                               <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                               <asp:ListItem Value="0">No</asp:ListItem>
                           </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server"
                                                ControlToValidate="MultiLoc" ErrorMessage="B6. Multiple Locations" Text="*"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2" valign="top">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td colspan="2">
                                            <asp:Panel ID="Panel1" runat="server" Enabled="false">
                                                <table style="background-color: #FFFFCC">
                                                    <tr>
                                                        <td colspan="3">If yes, please indicate which locations are reported together in this survey 
                                (including headquarters)
                                                        </td>
                                                    </tr>
                                                    <tr>

                                                        <td class="style11" valign="top" colspan="3">
                                                            <table class="style32a">
                                                                <tr>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin1a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td width="40px">and</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin1b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin2a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td>and</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin2b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin3a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td>and</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin3b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin4a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td>and</td>
                                                                    <td class="style11">
                                                                        <asp:TextBox ID="LocJoin4b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B7.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">MEDICARE CERTIFIED FOR HOSPICE</td>
                                    </tr>

                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">Is your agency Medicare certified for hospice?&nbsp;<asp:DropDownList
                                            ID="MedCert" runat="server" AutoPostBack="True" Enabled="false">
                                            <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                            <asp:ListItem Value="0">No</asp:ListItem>
                                        </asp:DropDownList>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server"
                                                ControlToValidate="MedCert" ErrorMessage="Medicare certified for hospice" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" valign="top" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td colspan="2">
                                            <asp:Panel ID="Panel3" runat="server" Enabled="false">
                                                <table style="background-color: #FFFFCC">
                                                    <tr>
                                                        <td colspan="3">If yes, please enter your agency’s Medicare provider number:   &nbsp; 
                                                        <asp:TextBox ID="MedProvNum" runat="server" Columns="10"
                                                            MaxLength="6" BackColor="#FFFFFF"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server"
                                                                ControlToValidate="MedProvNum" ErrorMessage="Medicare provider number" Text="*"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                                ControlToValidate="MedProvNum" ErrorMessage="B7. Medicare Number requires 6 digits"
                                                                Font-Names="Arial" Font-Size="8pt"
                                                                ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>


                                                        <td class="style11" valign="top" colspan="3">If yes, please enter your National Provider Identifier(s) (NPI):&nbsp; 
                                 <asp:TextBox ID="Medicare_NPI" runat="server" BackColor="#FFFFFF" Columns="10"
                                     MaxLength="10"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server"
                                                                ControlToValidate="Medicare_NPI" ErrorMessage="Medicare NPI number" Text="*"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                                ControlToValidate="Medicare_NPI" ErrorMessage="B7. National Provider Number requires 10 digits"
                                                                Font-Names="Arial" Font-Size="8pt"
                                                                ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B8.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">MEDICAID CERTIFIED FOR HOSPICE</td>
                                    </tr>

                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" colspan="2">Is your agency Medicaid certified for hospice?&nbsp;<asp:DropDownList
                                            ID="MediCert" runat="server" AutoPostBack="True" Enabled="false">
                                            <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                            <asp:ListItem Value="0">No</asp:ListItem>
                                        </asp:DropDownList>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server"
                                                ControlToValidate="MediCert" ErrorMessage="Medicaid certified for hospice" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" valign="top" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td colspan="2">
                                            <asp:Panel ID="Panel4" runat="server" Enabled="false">
                                                <table style="background-color: #FFFFCC">
                                                    <tr>
                                                        <td colspan="3">If yes, please enter your agency’s Medicaid provider number: &nbsp; 
                                                        <asp:TextBox ID="MediProvNum" runat="server" Columns="10"
                                                            MaxLength="9" BackColor="#FFFFFF"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server"
                                                                ControlToValidate="MediProvNum" ErrorMessage="Medicaid provider number" Text="*"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="vrq6a" runat="server"
                                                                ControlToValidate="MediProvNum"
                                                                ErrorMessage="B8. MEDICAID Provider Number requires 9 digits" Font-Names="Arial"
                                                                Font-Size="8pt" ValidationExpression="\d{9}">*</asp:RegularExpressionValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B9.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">ACCREDITATION STATUS</td>
                                    </tr>

                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style31" colspan="2">Accredited by:<br />
                                            <asp:CheckBox ID="AcStatusACHC" runat="server" Text="ACHC" Enabled="false" /><br />
                                            <asp:CheckBox ID="AcStatusCHAP" runat="server" Text="CHAP" Enabled="false" /><br />
                                            <asp:CheckBox ID="AcStatusJCAHO" runat="server" Text="Joint Commission" Enabled="false" /><br />
                                            <asp:CheckBox ID="AcByOther" runat="server" Text="If other, please list:" AutoPostBack="True" Enabled="false" />
                                            &nbsp;
                               <asp:TextBox ID="AcByOther_text" runat="server" Columns="20" MaxLength="20" BackColor="#FFFFFF" Enabled="false"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="vAc" runat="server" ControlToValidate="AcByOther_text" ErrorMessage="Please list Other Accreditation Status" Text="*"></asp:RequiredFieldValidator><br />
                                            <asp:CheckBox ID="NoAccred" runat="server" Text="Not accredited" Enabled="false" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B10.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">FISCAL YEAR FOR DATA</td>
                                    </tr>

                                    <tr>
                                        <td class="style40">a.</td>

                                        <td class="style11" colspan="2">Please indicate the last day of your agency’s
                                            <asp:Label ID="SY2" runat="server"></asp:Label>
                                            fiscal year:
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td valign="top">Month&nbsp;  
                                                         <asp:DropDownList ID="LastMonFY" runat="server" Enabled="false">
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server"
                                                ControlToValidate="LastMonFY" ErrorMessage="Last month of the fiscal year" Text="*"></asp:RequiredFieldValidator>&nbsp;
 Day&nbsp;
 <asp:DropDownList ID="LastDayFY" runat="server" Enabled="false">
     <asp:ListItem Text="Select Day" Value="" />
     <asp:ListItem Text="1" Value="01" />
     <asp:ListItem Text="2" Value="02" />
     <asp:ListItem Text="3" Value="03" />
     <asp:ListItem Text="4" Value="04" />
     <asp:ListItem Text="5" Value="05" />
     <asp:ListItem Text="6" Value="06" />
     <asp:ListItem Text="7" Value="07" />
     <asp:ListItem Text="8" Value="08" />
     <asp:ListItem Text="9" Value="09" />
     <asp:ListItem Text="10" Value="10" />
     <asp:ListItem Text="11" Value="11" />
     <asp:ListItem Text="12" Value="12" />
     <asp:ListItem Text="13" Value="13" />
     <asp:ListItem Text="14" Value="14" />
     <asp:ListItem Text="15" Value="15" />
     <asp:ListItem Text="16" Value="16" />
     <asp:ListItem Text="17" Value="17" />
     <asp:ListItem Text="18" Value="18" />
     <asp:ListItem Text="19" Value="19" />
     <asp:ListItem Text="20" Value="20" />
     <asp:ListItem Text="21" Value="21" />
     <asp:ListItem Text="22" Value="22" />
     <asp:ListItem Text="23" Value="23" />
     <asp:ListItem Text="24" Value="24" />
     <asp:ListItem Text="26" Value="26" />
     <asp:ListItem Text="27" Value="27" />
     <asp:ListItem Text="28" Value="28" />
     <asp:ListItem Text="29" Value="29" />
     <asp:ListItem Text="30" Value="30" />
     <asp:ListItem Text="31" Value="31" />

 </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server"
                                                ControlToValidate="LastDayFY" ErrorMessage="Last day of the fiscal year" Text="*"></asp:RequiredFieldValidator>
                                            &nbsp; 
                                   
                                        </td>
                                        <td class="style11" style="width: 1100px" valign="top">
                                            <asp:Label ID="SY3" runat="server"></asp:Label>&nbsp;</td>

                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style11" valign="top" colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">b.</td>

                                        <td class="style11" valign="top" colspan="2">Does the date reported in this survey represent a full 12-month fiscal year period?   &nbsp; 
                                                        <asp:DropDownList
                                                            ID="FullFYPeriod" runat="server" AutoPostBack="True">
                                                            <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                        </asp:DropDownList>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server"
                                                ControlToValidate="FullFYPeriod" ErrorMessage="Data reported represents 12-month fiscal year" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40" valign="top">c.</td>

                                        <td class="style11" valign="top" colspan="2">If the data submitted in this survey does not represent a full 12-month fiscal year, indicate the number of months represented: &nbsp; 
                                 <asp:TextBox ID="MonthsInFY" runat="server" BackColor="#FFFFFF" Columns="10"
                                     MaxLength="10" ValidationGroup=" "></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="vMonthsInFY" runat="server"
                                                ControlToValidate="MonthsInFY" ErrorMessage="Number of months represented" Text="*"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="RangeValidator1" runat="server"
                                                ControlToValidate="MonthsInFY" CssClass="btnred" ErrorMessage="Must be 1-12"
                                                MaximumValue="12" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <hr />
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B11.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">INPATIENT AND RESIDENTIAL FACILITIES</td>
                                    </tr>

                                    <tr>
                                        <td class="style40" valign="top">a.</td>

                                        <td class="style11" colspan="2" valign="top">Do you provide hospice care in a facility licensed and certified by Medicare as 
                                     inpatient?
                                     <br />
                                            <asp:DropDownList ID="MoreFacilities_Inpt" runat="server" AutoPostBack="True">
                                                <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
                                                <asp:ListItem Value="1">Yes - Please COMPLETE Section H</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server"
                                                ControlToValidate="MoreFacilities_Inpt"
                                                ErrorMessage="Hospice operates 1 or more inpatient hospice facility or unit"
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td class="style40" valign="top">b.</td>

                                        <td class="style11" colspan="2" valign="top">Do you provide hospice care in a facility licensed by OHCQ as a Hospice House?
                                     <asp:DropDownList ID="MoreFacilities_Res" runat="server" AutoPostBack="True">
                                         <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
                                         <asp:ListItem Value="1">Yes - Please COMPLETE Section I</asp:ListItem>
                                     </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server"
                                                ControlToValidate="MoreFacilities_Res"
                                                ErrorMessage="Hospice operates 1 or more residential hospice facility or unit"
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>

                                        <td class="style41" valign="top" colspan="2">
                                            <strong><em>
                                                <img alt="" class="style42" src="Images/info.gif" />
                                                For the remainder of the survey, include all patients in inpatient or Hospice 
                                House facilities in totals, unless the question clearly requests separate 
                                information for home care and inpatient/residential programs.</em></strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B12.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">PALLIATIVE CARE</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">Does your agency have a palliative care program?&nbsp;<asp:DropDownList
                                            ID="drpPalliativeCare" runat="server" AutoPostBack="True">
                                            <asp:ListItem Selected="True" Value="1">No</asp:ListItem>
                                            <asp:ListItem Value="0">Yes</asp:ListItem>
                                        </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server"
                                                ControlToValidate="drpPalliativeCare" ErrorMessage="Palliative care program" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2" valign="top">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">a. </td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2"> PALLIATIVE CARE CENSUS</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2" valign="top">Please provide the census on patients cared for by the Palliative Care Provider in Fiscal Years 2024 and 2025.</td>
                                    </tr>                        
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">
                                            <table style="width:100%;background-color: #FFFFCC">
                                                <tr>
                                                    <th>Census</th>
                                                    <th>Fiscal Year 2024</th>
                                                    <th>Fiscal Year 2025</th>
                                                </tr>
                                                <tr>
                                                    <td>1. Total Admissions</td>
                                                    <td><asp:TextBox ID="txtAdmissionsPY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvAdmissionsPY" runat="server" ControlToValidate="txtAdmissionsPY" ErrorMessage="Total admissions required for FY 2024" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td><asp:TextBox ID="txtAdmissionsCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvAdmissionsCY" runat="server" ControlToValidate="txtAdmissionsCY" ErrorMessage="Total admissions required for FY 2025" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2. Total Discharges</td>
                                                    <td><asp:TextBox ID="txtDischargePY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDischargePY" runat="server" ControlToValidate="txtDischargePY" ErrorMessage="Total Discharges required for FY 2024" Text="*"></asp:RequiredFieldValidator>                                                    
                                                    </td>
                                                    <td><asp:TextBox ID="txtDischargeCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDischargeCY" runat="server" ControlToValidate="txtDischargeCY" ErrorMessage="Total Discharges required for FY 2025" Text="*"></asp:RequiredFieldValidator>                                                    
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3. Total Transfer to Hospice Care</td>
                                                    <td><asp:TextBox ID="txtTransferPY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTransferPY" runat="server" ControlToValidate="txtTransferPY" ErrorMessage="Total Transfer to Hospice Care for FY 2024" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td><asp:TextBox ID="txtTransferCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTransferCY" runat="server" ControlToValidate="txtTransferCY" ErrorMessage="Total Transfer to Hospice Care for FY 2025" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4. Total Palliative Care Deaths</td>
                                                    <td><asp:TextBox ID="txtDeathPY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDeathPY" runat="server" ControlToValidate="txtDeathPY" ErrorMessage="Total Palliative Care Deaths required for FY 2024" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td><asp:TextBox ID="txtDeathCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDeathCY" runat="server" ControlToValidate="txtDeathCY" ErrorMessage="Total Palliative Care Deaths required for FY 2025" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>5. Average Length of Stay</td>
                                                    <td><asp:TextBox ID="txtLOSPY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvLOSPY" runat="server" ControlToValidate="txtLOSPY" ErrorMessage="Average Length of Stay required for FY 2024" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td><asp:TextBox ID="txtLOSCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvLOSCY" runat="server" ControlToValidate="txtLOSCY" ErrorMessage="Average Length of Stay required for FY 2025" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>6. Average Daily Census</td>
                                                    <td><asp:TextBox ID="txtDCPY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDCPY" runat="server" ControlToValidate="txtDCPY" ErrorMessage="Average Daily Census required for FY 2024" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td><asp:TextBox ID="txtDCCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDCCY" runat="server" ControlToValidate="txtDCCY" ErrorMessage="Average Daily Census required for FY 2025" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>7. Occupancy Rate</td>
                                                    <td><asp:TextBox ID="txtORPY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateDecimal(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvORPY" runat="server" ControlToValidate="txtORPY" ErrorMessage="Occupancy Rate required for FY 2024" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                    <td><asp:TextBox ID="txtORCY" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateDecimal(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvORCY" runat="server" ControlToValidate="txtORCY" ErrorMessage="Occupancy Rate required for FY 2025" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style39" bgcolor="#CCCCCC">B13.</td>
                                        <td class="style15" bgcolor="#CCCCCC" colspan="2">PERFORMANCE ON CLINICAL QUALITY MEASURES</td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" colspan="2">
                                            <table style="width:100%;background-color: #FFFFCC">
                                                <tr>
                                                    <th style="width:70%;"">Quality Measure</th>
                                                    <th>Value</th>
                                                </tr>
                                                <tr>
                                                    <td>a. Live Discharges</td>
                                                    <td><asp:TextBox ID="txtLiveDischarge" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvLiveDischarge" runat="server" ControlToValidate="txtLiveDischarge" ErrorMessage="Live Discharge required" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td>b. Percentage of patients who received visits from a registered nurse or medical social worker on at least 2 of the final 3 days of their life</td>
                                                    <td><asp:TextBox ID="txtPatientPerct" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateDecimal(this,1);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvPatientPerct" runat="server" ControlToValidate="txtPatientPerct" ErrorMessage="Percentage of patients required" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td>c. The hospice team communicated with the family</td>
                                                    <td><asp:TextBox ID="txtTeamCommn" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTeamCommn" runat="server" ControlToValidate="txtTeamCommn" ErrorMessage="Team communication required" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td>d. How often the hospice team began their patients' care in a timely manner</td>
                                                    <td><asp:TextBox ID="txtPatientCare" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvPatientCare" runat="server" ControlToValidate="txtPatientCare" ErrorMessage="Patient Care required" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td>e. Report your Hospice Care Index score (0-10)</td>
                                                    <td><asp:TextBox ID="txtCareIndexScore" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCareIndexScore" runat="server" ControlToValidate="txtCareIndexScore" ErrorMessage="Care Index score (0-10) required" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td>f. Report the agency’s quality star rating for the year (1-5)</td>
                                                    <td><asp:TextBox ID="txtStarRating" runat="server" BackColor="#FFFFFF" Columns="15" MaxLength="10" onkeyup="validateNumber(this);"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvStarRating" runat="server" ControlToValidate="txtStarRating" ErrorMessage="Quality star rating (0-10) required" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr><td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">&nbsp;</td>
                                        <td class="style11" align="center" colspan="2" valign="top">
                                            <asp:Label ID="Certi1" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="msave" runat="server" CssClass="btnblue"
                                                Text="Saved Successfully" Visible="False"></asp:Label>
                                            <asp:Label ID="merror" runat="server" CssClass="btnred"
                                                Text="Please correct all errors" Visible="False"></asp:Label>
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
