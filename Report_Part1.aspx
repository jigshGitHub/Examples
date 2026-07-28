<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Report_Part1.aspx.vb" Inherits="SectionA" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .style11
        {           
        }
        .style17
        {
            width: 710px;
        }
        
        .style23 {color: #FFFFFF}
         .style31
        {
            text-align: left;
            width: 626px;
        }
         
     
         
        .style15
        {
            height: 15px;
            font-weight: bold;
        }
                 
     
         
        .style37
        {
            width: 700px;
        }
         
        .style38
        {
            height: 22px;
        }
         
     
         
        .style12
        {
            width: 100%;
            text-align: left;
        }
                 
     
         
        .style36
        {
            width: 65px;
            font-weight: bold;
            height: 19px;
        }
                 
     
         
        .style35
        {
            width: 65px;
        }
                 
     
         
        .style39
        {
            font-size: medium;
        }
        .style40
        {
            font-size: small;
        }
                 
     
         
        .style42
        {
            width: 421px;
        }
                 
     
         
        .style43
        {
            height: 22px;
            width: 425px;
        }
                 
     
         
        .style44
        {
            height: 22px;
            text-decoration: underline;
        }
                 
     
         
        .auto-style1 {
            width: 700px;
            height: 19px;
        }
                 
     table { page-break-inside:auto }
        tr    { page-break-inside:avoid; page-break-after:auto }
        thead { display:table-header-group }
        /*tfoot { display:table-footer-group }*/

         
        .auto-style2 {
            height: 15px;
            font-weight: bold;
            width: 72px;
        }
        .auto-style3 {
            width: 72px;
        }

         
        </style>
</head>
<body  onkeypress="DisableEnter()">
    <form id="form1" runat="server">

    <div >
    
        <table cellpadding="5" cellspacing="0" class="style1" align="center" 
            bgcolor="White">
            <tr>
                <td align="center" >Maryland Health Care Commission<br />
                    <span class="style39"><strong>HOSPICE SURVEY&nbsp; 
                    PART 1<br />
                    <span class="style23">
                       <asp:Label ID="SY0" runat="server" ForeColor="Black" 
                        style="font-size: small" />
                    </span><br />
                    </strong></span><span class="style40">(Print version)</span></td>
            </tr>
       <tr bordercolor="#FFFFFF" bgcolor="#FFFFFF">
        <td>
            <table cellpadding="0" cellspacing="0" class="style32a">
                <tr>
                   <td align=" ">User Name <span class="style23">
                       <asp:Label ID="UserName" runat="server" ForeColor="Black" />
<br />        

<asp:Label ID="lblFirstname" runat="server" ForeColor="Black" />&nbsp;<asp:Label ID="lblLastName" 
                           runat="server" ForeColor="Black" />
                       </td>
                </tr>
            </table>
          </td>
      </tr>
            <tr>
                <td class="style17">
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                      <tr>
                            <td colspan="3" align="left">
                                <b>SECTION A - IDENTIFICATION AND CONTACT INFORMATION</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                           <td class="style8">
                                                       Agency Name:</td>
                            <td class="style8">
                                                        <asp:TextBox ID="Agency" runat="server" Columns="50" 
                                    MaxLength="50"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="vAgency" runat="server" 
 ControlToValidate="Agency" ErrorMessage="Agency Name" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                        </tr>
                         <tr>
                         <td class="style11" width="30px">
                                &nbsp;</td>

                                                    <td class="style8">
                                                        Street:</td>
                                                    <td class="style8">
                                                        <asp:TextBox ID="AddressLine1" runat="server" Columns="50" MaxLength="50"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="vaddress1" runat="server" 
 ControlToValidate="AddressLine1" ErrorMessage="Street address" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                <td class="style11" width="30px">
                                &nbsp;</td>
                                                    <td>
                                                        City:</td>
                                                    <td>
                                                        <asp:TextBox ID="City" runat="server" Columns="20" MaxLength="20"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="vCity" runat="server" 
 ControlToValidate="City" ErrorMessage="City" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                <td class="style11" width="30px">
                                &nbsp;</td>
                                                    <td>
                                                        County:</td>
                                                    <td>                                           <asp:DropDownList ID="County" 
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
 ControlToValidate="County" ErrorMessage="County" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                                                                <tr>
                                                <td class="style11" width="30px">
                                &nbsp;</td>
                                                    <td class="style12">
                                                        Zip:</td>
                                                    <td class="style12">
                                                        <asp:TextBox ID="Zipcode" runat="server" Columns="20" MaxLength="20" 
                                                            onkeypress="return allowonlynumbers();"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="vZip" runat="server" 
 ControlToValidate="Zipcode" ErrorMessage="Zip code" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style12">
                               Name of Administrator:</td>
                            <td class="style12">
                               <asp:TextBox ID="AdminName" runat="server" Columns="50" MaxLength="50"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
 ControlToValidate="AdminName" ErrorMessage="Name of administrator" Text="*"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style12">
                               Agency Telephone # </td>
                            <td class="style12">
                                                        <asp:TextBox ID="AgenPhone" runat="server" Columns="10" MaxLength="10" onkeypress="return allowonlynumbers();"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
 ControlToValidate="AgenPhone" ErrorMessage="Agency's phone number" Text="*"></asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="AgenPhone" ErrorMessage="Invalid Phone Number" 
                                Font-Names="Arial" Font-Size="8pt" 
                                ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                                                    </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style12">
                                Contact Person:</td>
                            <td class="style12">
                                <asp:TextBox ID="PreparedBy" runat="server" Columns="50" MaxLength="50"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
 ControlToValidate="PreparedBy" ErrorMessage="Contact Person" Text="*"></asp:RequiredFieldValidator></td>
                        </tr>
                                                
                      <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style12">
                                Contact Email:</td>
                            <td class="style12">
                                <asp:TextBox ID="Email" runat="server" Columns="50" MaxLength="50"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="vEmail2" runat="server" 
                                            ControlToValidate="Email" ErrorMessage="Invalid Email Address" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
 ControlToValidate="Email" ErrorMessage="Email" Text="*"></asp:RequiredFieldValidator></td>
                        </tr>
                                                
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style12">
                               Contact Telephone Number:</td>
                            <td class="style12">
                                                        <asp:TextBox ID="Phone" runat="server" Columns="10" MaxLength="10" onkeypress="return allowonlynumbers();"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
 ControlToValidate="Phone" ErrorMessage="Phone for person who submitted survey" Text="*"></asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="Phone" ErrorMessage="Invalid Contact Phone Number" 
                                Font-Names="Arial" Font-Size="8pt" 
                                ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$">*</asp:RegularExpressionValidator>
                                                    </td>
                        </tr>
                                                
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style11"  valign="top" colspan="2">
                                <hr />
                            </td>
                        </tr>
                         
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style11" colspan="2" valign="top">

                                Did your agency change name(s) during this reporting period?&nbsp;<asp:DropDownList 
                                    ID="ProgChangeName" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                               
                                            <asp:RequiredFieldValidator ID="vProgChangeName" runat="server" 
 ControlToValidate="ProgChangeName" ErrorMessage="Agency changed names during reporting period" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                              
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                                <td colspan="2">
                            <asp:Panel ID="Panel_A1" runat="server">
                            <table style="background-color: #FFFFCC">
                            <tr><td class="style42">
                                                            If yes, provide the former name of the agency and the effective date of change.
                                                        </td>
</tr>
<tr>
                            <td class="style42">
                                                    Former Name:   
                                                        <asp:TextBox ID="FormerName" runat="server" Columns="50" 
                                    MaxLength="50" BackColor="#FFFFFF"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="vCur_Name" runat="server" 
 ControlToValidate="FormerName" ErrorMessage="If you have indicated that your agency has changed its name, please provide the former name of the agency, as well as the date of the change." Text="*"></asp:RequiredFieldValidator>
                                        </td>
                        </tr>
                        <tr>
                            <td class="style42">
                                                    Effective Date of Change: Month&nbsp;  
                                                         <asp:DropDownList ID="MonthChang" runat="server" >
        <asp:ListItem Text="Select Month" Value="" />  
        <asp:ListItem Text="January" Value="01" />  
        <asp:ListItem Text="February"  Value="02" />  
        <asp:ListItem Text="March"  Value="03" />  
        <asp:ListItem Text="April"  Value="04" />  
        <asp:ListItem Text="May"  Value="05" />  
        <asp:ListItem Text="June"  Value="06" />  
        <asp:ListItem Text="July"  Value="07" />  
        <asp:ListItem Text="August"  Value="08" />  
        <asp:ListItem Text="September"  Value="09" />  
        <asp:ListItem Text="October"  Value="10" />  
        <asp:ListItem Text="November"  Value="11" />  
        <asp:ListItem Text="December"  Value="12" />  
         </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
 ControlToValidate="MonthChang" ErrorMessage="Effective Date of Change: Month" Text="*"></asp:RequiredFieldValidator>&nbsp;
 Day&nbsp;
 <asp:DropDownList ID="DayChang" runat="server" >
        <asp:ListItem Text="Select Day" Value="" />  
        <asp:ListItem Text="1" Value="01" />  
        <asp:ListItem Text="2"  Value="02" />  
        <asp:ListItem Text="3"  Value="03" />  
        <asp:ListItem Text="4"  Value="04" />  
        <asp:ListItem Text="5"  Value="05" />  
        <asp:ListItem Text="6"  Value="06" />  
        <asp:ListItem Text="7"  Value="07" />  
        <asp:ListItem Text="8"  Value="08" />  
        <asp:ListItem Text="9"  Value="09" />  
        <asp:ListItem Text="10"  Value="10" />  
        <asp:ListItem Text="11"  Value="11" />  
        <asp:ListItem Text="12"  Value="12" />  
        <asp:ListItem Text="13" Value="13" />  
        <asp:ListItem Text="14"  Value="14" />  
        <asp:ListItem Text="15"  Value="15" />  
        <asp:ListItem Text="16"  Value="16" />  
        <asp:ListItem Text="17"  Value="17" />  
        <asp:ListItem Text="18"  Value="18" />  
        <asp:ListItem Text="19"  Value="19" />  
        <asp:ListItem Text="20"  Value="20" />  
        <asp:ListItem Text="21"  Value="21" />  
        <asp:ListItem Text="22"  Value="22" />  
        <asp:ListItem Text="23"  Value="23" />  
        <asp:ListItem Text="24"  Value="24" /> 
        <asp:ListItem Text="26"  Value="26" />  
        <asp:ListItem Text="27"  Value="27" />  
        <asp:ListItem Text="28"  Value="28" />  
        <asp:ListItem Text="29"  Value="29" />  
        <asp:ListItem Text="30"  Value="30" />  
        <asp:ListItem Text="31"  Value="31" />  
        
         </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
 ControlToValidate="DayChang" ErrorMessage="Effective Date of Change: Day" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                        </tr>
                       </table></asp:Panel></td></tr>
                        <tr>
                            <td class="style14">
                                </td>
                            <td class="style14">
                                </td>
                            <td class="style14">
                                </td>
                        </tr>
                       
                    </table>
                </td>
            </tr>  
            <tr>
            <td class="style17">            
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="3" align="left">
                                <b style="text-align: center">SECTION B - PROGRAM DEMOGRAPHICS</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC" valign="top">
                                &nbsp;B1.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 LICENSE TYPE</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11" colspan="2">
                           <asp:DropDownList ID="License_Type" runat="server" >
        <asp:ListItem Text="Choose one" Value="" />  
        <asp:ListItem Text="General" Value="01" />  
        <asp:ListItem Text="Limited"  Value="02" />  
        
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
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                                &nbsp;B2.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 AGENCY TYPE</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            
                            <td class="style11" colspan="2">
                           <asp:DropDownList ID="AgType" runat="server" >
        <asp:ListItem Text="Choose one" Value="" />  
        <asp:ListItem Text="Free Standing" Value="01" />  
        <asp:ListItem Text="Hospital Based"  Value="02" />  
        <asp:ListItem Text="Home Health Based" Value="03" />  
        <asp:ListItem Text="Nursing Home Based"  Value="04" />  
        
         </asp:DropDownList>                                                        
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator82" runat="server" 
 ControlToValidate="AgType" ErrorMessage="B2. Agency Type" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                        </tr>
                         <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                                &nbsp;B3.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 OWNERSHIP</td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr><td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2">
                                <B>Definitions:</B>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2">
                                <B>Hospital or Integrated Health System - </B>Owned/operated by a hospital, hospital network, or regional health system. 
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2">
                                <B>Managed Care/HMO - </B>Directly owned or integrated within an insurance/managed care network. 
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2">
                                <B>Corporate Chain/Multi-Facility Provider - </B>Part of a national or multi-state hospice corporation. 
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2">
                                <B>Independent - </B>Not affiliated with a larger corporate or hospital network. 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11" colspan="2">
                           <asp:DropDownList ID="Ownership" runat="server" >
                                <asp:ListItem Text="Choose one" Value="" />  
                                <asp:ListItem Text="Corporate Chain/Multi-Facility Provider" Value="01" />  
                                <asp:ListItem Text="Managed Care/HMO"  Value="02" />  
                                <asp:ListItem Text="Hospital or Integrated Health System" Value="03" />  
                                <asp:ListItem Text="Independent"  Value="04" />  
                                <asp:ListItem Text="Other" Value="05" />
                            </asp:DropDownList><br /> 
                             <asp:TextBox ID="txtOWOther" runat="server" Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>   
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator83" runat="server" 
 ControlToValidate="Ownership" ErrorMessage="B3. Ownership" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11" colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">&nbsp;B3a.</td>
                            <td class="style11" colspan="2">
                                Did your agency change ownership during FY <asp:Label ID="SY1" runat="server"></asp:Label>
                                ?&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="OwnChange" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="vOwnChange" runat="server" 
                                    ControlToValidate="OwnChange" 
                                    ErrorMessage="Agency changed ownership during past FY" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11" colspan="2">
                                <asp:Panel ID="Panel_1" runat="server">
                                    <table style="width:100%" bgcolor="#FFFFCC">
                                        <tr>
                                            <td colspan="2" class="style43">
                                                            If yes, name of the former and current owners and the effective date of change:
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="style43">
                                                           Former Owner:   
                                                                <asp:TextBox ID="FormerOwner" runat="server" Columns="50" 
                                            MaxLength="50" BackColor="#FFFFFF"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator84" runat="server" ControlToValidate="FormerOwner" ErrorMessage="If you have indicated that your agency has changed ownership, please provide the current and former owners, and the date of the change." 
                                                                       Text="*"></asp:RequiredFieldValidator>
                                             </td>
                                          </tr>
                                        <tr>
                                             <td colspan="2" class="style43">
                                                 Current Owner:
                                                 <asp:TextBox ID="CurOwner" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                     MaxLength="50"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator85" runat="server" 
                                                     ControlToValidate="CurOwner" ErrorMessage="Current Owner" Text="*"></asp:RequiredFieldValidator>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="style43">
                                                            Month&nbsp;  
                                                 <asp:DropDownList ID="ChangeMon" runat="server" >
                                                    <asp:ListItem Text="Select Month" Value="" />  
                                                    <asp:ListItem Text="January" Value="01" />  
                                                    <asp:ListItem Text="February"  Value="02" />  
                                                    <asp:ListItem Text="March"  Value="03" />  
                                                    <asp:ListItem Text="April"  Value="04" />  
                                                    <asp:ListItem Text="May"  Value="05" />  
                                                    <asp:ListItem Text="June"  Value="06" />  
                                                    <asp:ListItem Text="July"  Value="07" />  
                                                    <asp:ListItem Text="August"  Value="08" />  
                                                    <asp:ListItem Text="September"  Value="09" />  
                                                    <asp:ListItem Text="October"  Value="10" />  
                                                    <asp:ListItem Text="November"  Value="11" />  
                                                    <asp:ListItem Text="December"  Value="12" />  
                                                </asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator86" runat="server" 
                                 ControlToValidate="ChangeMon" ErrorMessage="Month Ownership changed" Text="*"></asp:RequiredFieldValidator>&nbsp;
                                             Day&nbsp;
                                                 <asp:DropDownList ID="ChangeDay" runat="server" >
                                                        <asp:ListItem Text="Select Day" Value="" />  
                                                        <asp:ListItem Text="1" Value="01" />  
                                                        <asp:ListItem Text="2"  Value="02" />  
                                                        <asp:ListItem Text="3"  Value="03" />  
                                                        <asp:ListItem Text="4"  Value="04" />  
                                                        <asp:ListItem Text="5"  Value="05" />  
                                                        <asp:ListItem Text="6"  Value="06" />  
                                                        <asp:ListItem Text="7"  Value="07" />  
                                                        <asp:ListItem Text="8"  Value="08" />  
                                                        <asp:ListItem Text="9"  Value="09" />  
                                                        <asp:ListItem Text="10"  Value="10" />  
                                                        <asp:ListItem Text="11"  Value="11" />  
                                                        <asp:ListItem Text="12"  Value="12" />  
                                                        <asp:ListItem Text="13" Value="13" />  
                                                        <asp:ListItem Text="14"  Value="14" />  
                                                        <asp:ListItem Text="15"  Value="15" />  
                                                        <asp:ListItem Text="16"  Value="16" />  
                                                        <asp:ListItem Text="17"  Value="17" />  
                                                        <asp:ListItem Text="18"  Value="18" />  
                                                        <asp:ListItem Text="19"  Value="19" />  
                                                        <asp:ListItem Text="20"  Value="20" />  
                                                        <asp:ListItem Text="21"  Value="21" />  
                                                        <asp:ListItem Text="22"  Value="22" />  
                                                        <asp:ListItem Text="23"  Value="23" />  
                                                        <asp:ListItem Text="24"  Value="24" /> 
                                                        <asp:ListItem Text="26"  Value="26" />  
                                                        <asp:ListItem Text="27"  Value="27" />  
                                                        <asp:ListItem Text="28"  Value="28" />  
                                                        <asp:ListItem Text="29"  Value="29" />  
                                                        <asp:ListItem Text="30"  Value="30" />  
                                                        <asp:ListItem Text="31"  Value="31" />  
                                                  </asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator87" runat="server" 
                                                 ControlToValidate="ChangeDay" ErrorMessage="Day ownership changed" Text="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">&nbsp;</td></tr>
                                        <tr><td colspan="2" class="style38"><u><b>General Information</b></u></td></tr>
                                        <tr><td colspan="2" class="style38">What was the nature of the change in ownership? (check all that apply) 
                                            <asp:CustomValidator ID="cvOWNature" runat="server" 
                                                ClientValidationFunction="validateOWNature" 
                                                ErrorMessage="You must select at least one option for nature of the change in ownership." 
                                                Display="Dynamic">*
                                            </asp:CustomValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkRealEstateOW" runat="server" AutoPostBack="true" Text="Change in real estate ownership or leaseholder (legal name of the entity that owns the land and building)" />
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>Relationship to operating entity:
                                            <asp:RequiredFieldValidator ID="rfvEntityRelation" runat="server" ControlToValidate="rblEntityRelation" ErrorMessage="Relationship to operating entity is required" Enabled="false">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;&nbsp;&nbsp;</td><td><asp:RadioButtonList ID="rblEntityRelation" Enabled="false" AutoPostBack="true" runat="server">
                                              <asp:ListItem Value="1">Common ownership</asp:ListItem>
                                              <asp:ListItem Value="2">Related party</asp:ListItem>
                                              <asp:ListItem Value="3">Unrelated third party</asp:ListItem>
                                              <asp:ListItem Value="4">Other</asp:ListItem>
                                          </asp:RadioButtonList>
                                          <asp:TextBox ID="txtEntityOther" runat="server"  Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                              <asp:RequiredFieldValidator Enabled="false" runat="server" ErrorMessage="Specify Other for Relationship to operating entity!" ID="rfvEntityOther" ControlToValidate="txtEntityOther">*</asp:RequiredFieldValidator>
                                        </td></tr>
                                        <tr><td colspan="2"><asp:CheckBox CssClass="clsOWNature" ID="chkOpOwner" runat="server" AutoPostBack="true" Text="Change in operations owner(s)" /></td></tr>
                                        <tr><td>&nbsp;&nbsp;&nbsp;</td><td>Report the Legal Name of the Entity responsible for day-to-day operations&nbsp;<asp:TextBox ID="txtLegalName" BackColor="#CCCCCC" runat="server" Columns="20" MaxLength="250" Enabled="false"></asp:TextBox> 
                                            <asp:RequiredFieldValidator ID="rfvLegalName" runat="server" ControlToValidate="txtLegalName" ErrorMessage="Legal Name of the Entity is required" Enabled="false">*</asp:RequiredFieldValidator>
                                            </td></tr>
                                        <tr><td>&nbsp;&nbsp;&nbsp;</td><td>Report the Federal EIN&nbsp;<asp:TextBox onkeyup="validateNumber(this);" BackColor="#CCCCCC" ID="txtEIN" runat="server" Columns="10" Enabled="false"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEIN" runat="server" ControlToValidate="txtEIN" ErrorMessage="Federal EIN is required" Enabled="false">*</asp:RequiredFieldValidator>
                                             </td></tr>
                                        <tr><td>&nbsp;&nbsp;&nbsp;</td><td>Report the percentage of ownership&nbsp;<asp:TextBox onkeyup="validateNumber(this);" BackColor="#CCCCCC" ID ="txtPercent" runat="server" Columns="10" Enabled="false"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvPercent" runat="server" ControlToValidate="txtPercent" ErrorMessage="Percentage of ownership is required" Enabled="false">*</asp:RequiredFieldValidator>
                                            </td></tr>
                                        <%--</td>
                                        </tr>--%>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkParentEntity" runat="server" Text="Change in parent or controlling entity" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkMgtCompany" runat="server" Text="Change in management company" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkIntRestruct" runat="server" Text="Internal restructuring (e.g., LLC conversion, merger, reorganization)" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsOWNature" ID="chkTransferAsset" runat="server" Text="Sale or transfer of assets" /></td></tr>
                                        <tr><td colspan="2" class="style38">
                                            <asp:CheckBox ID="chkOtherNature" AutoPostBack="true" runat="server" Text="Other (describe) What was the nature of the ownership change? " />&nbsp;&nbsp; <asp:TextBox ID="txtOtherNature" runat="server" Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvOtherNature" runat="server" ControlToValidate="txtOtherNature" ErrorMessage="Please specify Other" Text="*" Enabled="false"></asp:RequiredFieldValidator>
                                            </td></tr>
                                        <tr><td colspan="2" class="style38">&nbsp;</td></tr>
                                        <tr><td colspan="2" class="style38"><u><b>Ownership and Control</b></u></td></tr>
                                        <tr><td colspan="2" class="style38">Does any owner, parent entity, subsidiary or controlling entity qualify as a private equity (PE) firm or portfolio company (a company that a PE firm has invested in)?
                                            <asp:RequiredFieldValidator id="rfvPvtEquity" ControlToValidate="rblPvtEquity" runat="server" Enabled="true" ErrorMessage="Private equity qualification is required">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">
                                                <asp:RadioButtonList ID="rblPvtEquity" runat="server" AutoPostBack="true">
                                                    <asp:ListItem Text="Yes" Value="1" />
                                                    <asp:ListItem Text="No" Value="2" />
                                                    <asp:ListItem Text="Unsure" Value="3" />
                                                </asp:RadioButtonList>                                                            
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">Is the acquiring entity part of a corporate chain?
                                            <asp:RequiredFieldValidator id="rfvCorpChain" ControlToValidate="rblCorpChain" runat="server" Enabled="true" ErrorMessage="Acquiring entity part of a corporate chain is required">*</asp:RequiredFieldValidator>                                                        
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">
                                                <asp:RadioButtonList ID="rblCorpChain" runat="server" AutoPostBack="true">
                                                    <asp:ListItem Text="Yes" Value="1" />
                                                    <asp:ListItem Text="No" Value="2" />
                                                    <asp:ListItem Text="Unsure" Value="3" />
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">Is any real estate associated with this provider owned by a Real Estate Investment Trust (REIT)?
                                            <asp:RequiredFieldValidator id="rfvREIT" ControlToValidate="rblREIT" runat="server" Enabled="true" ErrorMessage="Association with REIT is required">*</asp:RequiredFieldValidator>                                                            
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">
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
                                        <tr><td colspan="2" class="style38">&nbsp;</td></tr>
                                        <tr><td colspan="2" class="style38">Ownership percentage or controlling interest of the PE Firm or REIT <b>(Select all that apply)</b>.
                                            <asp:CustomValidator ID="cvOWREIT" runat="server" 
                                                ClientValidationFunction="validateOWREIT" 
                                                ErrorMessage="You must select at least one option for Ownership percentage." 
                                                Display="Dynamic">*
                                            </asp:CustomValidator>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">
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
                                        <tr><td colspan="2" class="style38">
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
                                        <tr><td colspan="2" class="style38">
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
                                        <tr><td colspan="2" class="style38">
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
                                        <tr><td colspan="2" class="style38">&nbsp;</td></tr>
                                        <tr><td colspan="2" class="style38">Did the transaction involve any Management Services Agreements?
                                                <asp:RequiredFieldValidator id="rfvMgtSvcAgreement" ControlToValidate="rblMgtSvcAgreement" runat="server" Enabled="true" ErrorMessage="Involve any Management Services Agreements is required">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">
                                                <asp:RadioButtonList ID="rblMgtSvcAgreement" runat="server" AutoPostBack="true">
                                                    <asp:ListItem Text="Yes" Value="1" />
                                                    <asp:ListItem Text="No" Value="0" />
                                                </asp:RadioButtonList></td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">&nbsp;</td></tr>
                                        <tr><td colspan="2" class="style38"><u><b>Transaction Characteristics</b></u></td></tr>
                                        <tr><td colspan="2" class="style38">What was the approximate value or purchase price of the transaction? 
                                            <asp:TextBox ID="txtTransPrice" runat="server" BackColor="#FFFFFF" Columns="10" MaxLength="10" onkeyup="validateDecimal(this);"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38">What was the stated rationale for the transaction? <b>(Select all that apply)</b>
                                            <asp:CustomValidator ID="cvRationaleTrans" runat="server" 
                                                ClientValidationFunction="validateRationaleTrans" 
                                                ErrorMessage="You must select at least one option for stated rationale for the transaction." 
                                                Display="Dynamic">*
                                            </asp:CustomValidator>
                                            </td>
                                        </tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkFinSustain" runat="server" Text="Financial sustainability" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkRenovation" runat="server" Text="Access to capital for expansion/renovation" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkGrowth" runat="server" Text="Market growth/expansion into new service lines" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkCompliance" runat="server" Text="Compliance/regulatory requirements" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsRationaleTrans" ID="chkTransOther" runat="server" Text="Other" AutoPostBack="true" />&nbsp;&nbsp; <asp:TextBox ID="txtTransOther" runat="server" Columns="50" MaxLength="250" BackColor="#CCCCCC" Enabled="false"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvTransOther" runat="server" enabled="false" ControlToValidate="txtTransOther" ErrorMessage="Please specify Other rationale for the transaction" Text="*"></asp:RequiredFieldValidator>
                                        </td></tr>                                    
                                        <tr><td colspan="2" class="style38">The authorized representative of the agency attests that the document(s) supporting the reported ownership structure will be available upon request, including: <b>(Select all that apply)</b>
                                            <asp:CustomValidator ID="cvAttestsDocs" runat="server" 
                                                ClientValidationFunction="validateAttestsDocsChecks" 
                                                ErrorMessage="You must select at least one option for attests that the document(s) supporting." 
                                                Display="Dynamic">*
                                            </asp:CustomValidator>
                                            </td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkOrgChart" runat="server" Text="Organizational charts" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkOpAgreement" runat="server" Text="Operating agreements" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkLease" runat="server" Text="Leases (rent pre and post transaction) or deeds" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkMgtServAgreement" runat="server" Text="Management fees and/or management service agreements" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkFinAgreement" runat="server" Text="Financing or security agreements" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkPayorContract" runat="server" Text="Contracts with payors" /></td></tr>
                                        <tr><td colspan="2" class="style38"><asp:CheckBox CssClass="clsAttestsDocs" ID="chkDocNA" runat="server" Text="Not applicable" /></td></tr>
                                        <tr><td colspan="2" class="style38">&nbsp;</td></tr>
                                        <tr><td colspan="2" class="style38"><u><b>Looking Forward</b></u></td></tr>
                                        <tr><td colspan="2" class="style38">Does your agency anticipate any ownership or affiliation changes in the next 12 months?
                                            <asp:RequiredFieldValidator id="rfvOwnershipChange" ControlToValidate="rblOwnershipChange" runat="server" Enabled="true" ErrorMessage="Ownership or affiliation changes is required">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>                                    
                                        <tr><td colspan="2" class="style38">
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
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                                &nbsp;B4.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 TAX STATUS</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                          
                            <td class="style11" colspan="2">
                           <asp:DropDownList ID="TaxStatus" runat="server" >
        <asp:ListItem Text="Choose one" Value="" />  
        <asp:ListItem Text="Voluntary (not for profit - 501(c)(3) status)" Value="01" />  
        <asp:ListItem Text="Proprietary (for profit)"  Value="02" />  
        <asp:ListItem Text="Government" Value="03" />  
                   </asp:DropDownList>                                                        
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator88" runat="server" 
 ControlToValidate="TaxStatus" ErrorMessage="B4. Tax Status" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                        </tr>
                         <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                                &nbsp;B5.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 GEOGRAPHIC AREA SERVED</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" colspan="2">
                           <asp:DropDownList ID="Location_Type" runat="server" >
        <asp:ListItem Text="Choose one" Value="" />  
        <asp:ListItem Text="Primary Urban" Value="01" />  
        <asp:ListItem Text="Primary Rural"  Value="02" />  
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
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                                &nbsp;B6.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 MULTIPLE LOCATIONS</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                          
                            <td class="style11" colspan="2">
                            Does your agency have multiple locations? (this includes agencies outside of MD) &nbsp;
                           <asp:DropDownList ID="MultiLoc" runat="server" AutoPostBack="True" >
         
        <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                   </asp:DropDownList>                                                        
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
 ControlToValidate="MultiLoc" ErrorMessage="B6. Multiple Locations" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td colspan="2">
                            <asp:Panel ID="Panel2" runat="server">
                            <table   style="background-color: #FFFFCC">
                            <tr><td>
                                If yes, please indicate the address where each is located
                                                        
                                        </td>
                        </tr>
                        <tr>
                            
                           
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            
                           
                            <td class="style11">
                                <table class="style32a">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style11" width="120px">
                                            Address</td>
                                        <td class="style11" width="90px">
                                            City</td>
                                        <td class="style11" width="90px">
                                            County</td>
                                        <td class="style11" width="30px">
                                            State</td>
                                        <td class="style11" width="60px">
                                            Zip</td>
                                    </tr>
                                    <tr>
                                        <td class="style11" width="80px">
                                            Headquarters</td>
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
                                                            runat="server" >
        <asp:ListItem Text="Select" Value="" />  
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
         <asp:ListItem Text="OTHER"  Value="24" />        </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
 ControlToValidate="HeadCounty" ErrorMessage="Headquarters' County" Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                        <td class="style11" >
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
                                        <td>
                                            Location 1</td>
                                        <td class="style11">
                                            <asp:TextBox ID="Loc1Address" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                </td>
                                         <td class="style11">
                                            <asp:TextBox ID="Loc1City" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                              </td>
                                     
                                        <td class="style11">                                           
                                            <asp:DropDownList ID="Loc1County" 
                                                            runat="server" >
        <asp:ListItem Text="Select" Value="" />  
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
        <asp:ListItem Text="OTHER"  Value="24" />          
        </asp:DropDownList>
              
                                                    </td>
                                         <td class="style11" >
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
                                        <td>
                                            Location 2</td>
                                       <td class="style11">
                                            <asp:TextBox ID="Loc2Address" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                 </td>
                                         <td class="style11">
                                            <asp:TextBox ID="Loc2City" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                               </td>
                                        <td class="style11">                                           
                                            <asp:DropDownList ID="Loc2County" 
                                                            runat="server" >
        <asp:ListItem Text="Select" Value="" />  
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
        <asp:ListItem Text="OTHER"  Value="24" />        </asp:DropDownList>
             
                                                    </td>
                                        <td class="style11" >
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
                                        <td>
                                            Location 3</td>
                                        <td class="style11">
                                            <asp:TextBox ID="Loc3Address" runat="server" Columns="15" MaxLength="50"></asp:TextBox>
                                                 </td>
                                        <td class="style11">
                                            <asp:TextBox ID="Loc3City" runat="server" Columns="10" MaxLength="15"></asp:TextBox>
                                                </td>
                                        <td class="style11">                                           
                                            <asp:DropDownList ID="Loc3County" 
                                                            runat="server" >
        <asp:ListItem Text="Select" Value="" />  
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
        <asp:ListItem Text="OTHER"  Value="24" />        </asp:DropDownList>
              
                                                    </td>
                                        <td class="style11" >
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
                       </table></asp:Panel></td></tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11"  valign="top" colspan="2">
                                <hr />
                            </td>
                        </tr>
                         <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11"  valign="top" colspan="2">
                                Does your agency have multiple Maryland locations?&nbsp;
                           <asp:DropDownList ID="MDLoc" runat="server" AutoPostBack="True" >
         
        <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                   </asp:DropDownList>                                                        
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
 ControlToValidate="MultiLoc" ErrorMessage="B6. Multiple Locations" Text="*"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td class="style11" colspan="2" valign="top">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            <td colspan="2">
                            <asp:Panel ID="Panel1" runat="server">
                            <table style="background-color: #FFFFCC">
                            <tr><td>
                                If yes, please indicate which locations are reported together in this survey 
                                (including headquarters)
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="style11" valign="top">
                                <table class="style32a">
                                    <tr>
                                        <td class="style11">
                                            <asp:TextBox ID="LocJoin1a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                </td>
                                        <td width="40px">
                                            and</td>
                                        <td class="style11">
                                            <asp:TextBox ID="LocJoin1b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            <asp:TextBox ID="LocJoin2a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                </td>
                                        <td>
                                            and</td>
                                       <td class="style11">
                                            <asp:TextBox ID="LocJoin2b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                 </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            <asp:TextBox ID="LocJoin3a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                </td>
                                        <td>
                                            and</td>
                                        <td class="style11">
                                            <asp:TextBox ID="LocJoin3b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                 </td>
                                    </tr>
                                    <tr>
                                       <td class="style11">
                                            <asp:TextBox ID="LocJoin4a" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                 </td>
                                        <td>
                                            and</td>
                                       <td class="style11">
                                            <asp:TextBox ID="LocJoin4b" runat="server" Columns="40" MaxLength="50"></asp:TextBox>
                                                 </td>
                                    </tr>
                                </table>
                            </td>
                        </tr></table></asp:Panel></td></tr>
                         <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                               B7.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 CMS CERTIFICATION NUMBER (CNN) FOR HOSPICE</td>
                        </tr>
                                                
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            
                            <td class="style11" colspan="2">

                                Is your agency Medicare certified for hospice?&nbsp;<asp:DropDownList 
                                    ID="MedCert" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                               
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
 ControlToValidate="MedCert" ErrorMessage="Medicare certified for hospice" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                                            &nbsp;</td>
                        </tr>
                                                 <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td colspan="2">
                            <asp:Panel ID="Panel3" runat="server">
                            <table style="background-color: #FFFFCC">
                            <tr><td>
                                                  If yes, please enter your agency’s CMS Certification number:   &nbsp; 
                                                        <asp:TextBox ID="MedProvNum" runat="server" Columns="10" 
                                    MaxLength="10" BackColor="#FFFFFF"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
 ControlToValidate="MedProvNum" ErrorMessage="Medicare provider number" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        </tr>
                                        <tr>
                             
                             
                             <td class="style11" valign="top">
                                 If yes, please enter your National Provider Identifier(s) (NPI):&nbsp; 
                                 <asp:TextBox ID="Medicare_NPI" runat="server" BackColor="#FFFFFF" Columns="10" 
                                     MaxLength="10"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                                     ControlToValidate="Medicare_NPI" ErrorMessage="Medicare NPI number" 
                                     Text="*"></asp:RequiredFieldValidator>
                             </td>
                        </tr></table></asp:Panel></td></tr>
                        <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                               B8.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 MEDICAID CERTIFIED FOR HOSPICE</td>
                        </tr>
                                                
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            
                            <td class="style11" colspan="2">

                               Is your agency Medicaid certified for hospice?&nbsp;<asp:DropDownList 
                                    ID="MediCert" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                               
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
 ControlToValidate="MediCert" ErrorMessage="Medicaid certified for hospice" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                                            &nbsp;</td>
                        </tr>
                                                 <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td colspan="2">
                            <asp:Panel ID="Panel4" runat="server">
                            <table style="background-color: #FFFFCC">
                            <tr><td>
                                                  If yes, please enter your agency’s Medicaid provider number:  &nbsp; 
                                                        <asp:TextBox ID="MediProvNum" runat="server" Columns="10" 
                                    MaxLength="10" BackColor="#FFFFFF"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
 ControlToValidate="MediProvNum" ErrorMessage="Medicaid provider number" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        </tr></table></asp:Panel></td></tr>
                                       <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                               B9.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                ACCREDITATION STATUS</td>
                        </tr>
                                                
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                            
                            <td class="style31" colspan="2">

                               Accredited by:<br />
                               <asp:CheckBox ID="AcStatusACHC" runat="server" Text="ACHC"/><br />
                               <asp:CheckBox ID="AcStatusCHAP" runat="server" Text="CHAP"/><br />
                               <asp:CheckBox ID="AcStatusJCAHO" runat="server" Text="Joint Commission"/><br />
                               <asp:CheckBox ID="AcByOther" runat="server" Text="If other, please list:" 
                                    AutoPostBack="True" /> &nbsp;
                               <asp:TextBox ID="AcByOther_text" runat="server" Columns="20" MaxLength="20" 
                                    BackColor="#FFFFFF"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="vAc" runat="server" 
                                    ControlToValidate="AcByOther_text" 
                                    ErrorMessage="Please list Other Accreditation Status" Text="*"></asp:RequiredFieldValidator>
                                <br />
                               <asp:CheckBox ID="NoAccred" runat="server" Text="Not accredited"/>
                                                                        
                            </td>
                        </tr>
                         <tr>
                            <td colspan="3">
                                <hr />
                            </td>
                        </tr>
                       
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                               B10.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 FISCAL YEAR FOR DATA</td>
                        </tr>
                                                
                        <tr>
                            <td class="style40">
                                a.</td>
                            
                            <td class="style11" colspan="2">

                                Please indicate the last day of your agency’s 
                                <asp:Label ID="SY2" 
                                    runat="server"></asp:Label> &nbsp;fiscal year:
                            </td>
                        </tr>
                        <tr>
                             <td class="style40">
                                 &nbsp;</td>
                            
                               <td valign="top">
                                                    Month&nbsp;  
                                                         <asp:DropDownList ID="LastMonFY" runat="server" >
        <asp:ListItem Text="Select Month" Value="" />  
        <asp:ListItem Text="January" Value="01" />  
        <asp:ListItem Text="February"  Value="02" />  
        <asp:ListItem Text="March"  Value="03" />  
        <asp:ListItem Text="April"  Value="04" />  
        <asp:ListItem Text="May"  Value="05" />  
        <asp:ListItem Text="June"  Value="06" />  
        <asp:ListItem Text="July"  Value="07" />  
        <asp:ListItem Text="August"  Value="08" />  
        <asp:ListItem Text="September"  Value="09" />  
        <asp:ListItem Text="October"  Value="10" />  
        <asp:ListItem Text="November"  Value="11" />  
        <asp:ListItem Text="December"  Value="12" />  
         </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
 ControlToValidate="LastMonFY" ErrorMessage="Last month of the fiscal year" Text="*"></asp:RequiredFieldValidator>&nbsp;
 Day&nbsp;
 <asp:DropDownList ID="LastDayFY" runat="server" >
        <asp:ListItem Text="Select Day" Value="" />  
        <asp:ListItem Text="1" Value="01" />  
        <asp:ListItem Text="2"  Value="02" />  
        <asp:ListItem Text="3"  Value="03" />  
        <asp:ListItem Text="4"  Value="04" />  
        <asp:ListItem Text="5"  Value="05" />  
        <asp:ListItem Text="6"  Value="06" />  
        <asp:ListItem Text="7"  Value="07" />  
        <asp:ListItem Text="8"  Value="08" />  
        <asp:ListItem Text="9"  Value="09" />  
        <asp:ListItem Text="10"  Value="10" />  
        <asp:ListItem Text="11"  Value="11" />  
        <asp:ListItem Text="12"  Value="12" />  
        <asp:ListItem Text="13" Value="13" />  
        <asp:ListItem Text="14"  Value="14" />  
        <asp:ListItem Text="15"  Value="15" />  
        <asp:ListItem Text="16"  Value="16" />  
        <asp:ListItem Text="17"  Value="17" />  
        <asp:ListItem Text="18"  Value="18" />  
        <asp:ListItem Text="19"  Value="19" />  
        <asp:ListItem Text="20"  Value="20" />  
        <asp:ListItem Text="21"  Value="21" />  
        <asp:ListItem Text="22"  Value="22" />  
        <asp:ListItem Text="23"  Value="23" />  
        <asp:ListItem Text="24"  Value="24" /> 
        <asp:ListItem Text="26"  Value="26" />  
        <asp:ListItem Text="27"  Value="27" />  
        <asp:ListItem Text="28"  Value="28" />  
        <asp:ListItem Text="29"  Value="29" />  
        <asp:ListItem Text="30"  Value="30" />  
        <asp:ListItem Text="31"  Value="31" />  
        
         </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
 ControlToValidate="LastDayFY" ErrorMessage="Last day of the fiscal year" Text="*"></asp:RequiredFieldValidator> &nbsp; 
                                   
                                        </td>
                                         <td class="style11" style="width: 1100px" valign="top">
                                             <asp:Label ID="SY3" runat="server"></asp:Label>&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                                            &nbsp;</td>
                        </tr>
                                                 <tr>
                            <td class="style40">
                               b.</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                                  Does the date reported in this survey represent a full 12-month fiscal year period?   &nbsp; 
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
                             <td class="style40" valign="top">
                                 c.</td>
                             
                             <td class="style11" valign="top" colspan="2">
                                 If the data submitted in this survey does not represent a full 12-month fiscal year, indicate the number of months represented: &nbsp; 
                                 <asp:TextBox ID="MonthsInFY" runat="server" BackColor="#FFFFFF" Columns="10" 
                                     MaxLength="10" ValidationGroup=" "></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="vMonthsInFY" runat="server" 
                                     ControlToValidate="MonthsInFY" ErrorMessage="Number of months represented" 
                                     Text="*"></asp:RequiredFieldValidator>
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
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                               B11.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 INPATIENT AND RESIDENTIAL FACILITIES</td>
                        </tr>
                                                
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                                            &nbsp;</td>
                        </tr>
                                                 <tr>
                            <td class="style40" valign="top">
                               a.</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                     Do you provide hospice care in a facility licensed and certified by Medicare as 
                                     inpatient?
                                                 <br /> 
                                                        <asp:DropDownList 
                                    ID="MoreFacilities_Inpt" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
                                    <asp:ListItem Value="1">Yes - Please COMPLETE Section H</asp:ListItem>
                                </asp:DropDownList>
                               
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
 ControlToValidate="MoreFacilities_Inpt" ErrorMessage="Hospice operates 1 or more inpatient hospice facility or unit" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        </tr>
                       <tr>
                             <td class="style40" valign="top">
                                 b.</td>
                             
                             <td class="style11" valign="top" colspan="2">
                                     Do you provide hospice care in a facility licensed by OHCQ as a Hospice House?<br /> 
                                 <asp:DropDownList 
                                    ID="MoreFacilities_Res" runat="server" AutoPostBack="True">
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
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" valign="top" colspan="2">
                                                            For the remainder of survey, include all patients in inpatient or residential facilities in totals, 
                                                            unless the question clearly requests separate information for home care and inpatient/residential programs.</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">
                               B12.</td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2">
                                 PALLIATIVE CARE</td>
                        </tr>
                                                
                        <tr>
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" colspan="2">

                                Does your agency have a palliative care program?&nbsp;<asp:DropDownList 
                                    ID="drpPalliativeCare" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">No</asp:ListItem>
                                    <asp:ListItem Value="0">Yes</asp:ListItem>
                                </asp:DropDownList>
                               
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator104" runat="server" 
 ControlToValidate="drpPalliativeCare" ErrorMessage="Medicare certified for hospice" Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2" valign="top">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style39" bgcolor="#CCCCCC">B12a. </td>
                            <td class="style15" bgcolor="#CCCCCC" colspan="2"> PALLIATIVE CARE CENSUS</td>
                        </tr>
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2" valign="top">Please provide the census on patients cared for by the Palliative Care Provider in Fiscal Years <%= System.Configuration.ConfigurationManager.AppSettings("pyear") %> and <%= System.Configuration.ConfigurationManager.AppSettings("year") %>.</td>
                        </tr>                        
                        <tr>
                            <td class="style40">&nbsp;</td>
                            <td class="style11" colspan="2">
                                <table style="width:100%;background-color: #FFFFCC">
                                    <tr>
                                        <th>Census</th>
                                        <th>Fiscal Year <%= System.Configuration.ConfigurationManager.AppSettings("pyear") %></th>
                                        <th>Fiscal Year <%= System.Configuration.ConfigurationManager.AppSettings("year") %></th>
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
                            <td class="style11" colspan="2" valign="top">Using the CMS Care Compare website or other agency information , report the rating or score on the agency's performance on clinical quality measures.</td>
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
                            <td class="style40">
                                &nbsp;</td>
                           
                            <td class="style11" valign="top" colspan="2" align="center">
                                                           <asp:Label ID="Certi2" runat="server" Visible="False"></asp:Label>
                                                           <asp:Label ID="msave0" runat="server" Text="Saved Successfully" Visible="False" 
                                                               CssClass="btnblue"></asp:Label>
                                                           <asp:Label ID="merror0" runat="server" Text="Please correct all errors" 
                                                               Visible="False" CssClass="btnred"></asp:Label></td>
                        </tr>
                                                
                    </table>
            
            </td></tr>

            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td align="left" class="style38" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <b style="text-align: center">SECTION C - PATIENT VOLUME </b>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="45px">
                                &nbsp;C1a.
                            </td>
                            <td align="center">
                                PATIENT VOLUME BY COUNTY
                                <asp:Label ID="SY4" runat="server"></asp:Label>
                                .
                            </td>
                        </tr>
                        <tr>
                            <td class="style27" width="30px">
                            </td>
                            <td class="style27">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                                Please complete the following, including totals, for each county you serve in FY
                                <asp:Label ID="SY6" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                                <b>Columns, C, D, E, F, and G are admissions by point of hospice entry. Please 
                                read the descriptions below. </b>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                                <u>Number of Home-based Hospice Admissions (Column C):</u>&nbsp;Include only 
                                unduplicated, first time hospice admissions of a patient residing in a private 
                                home (excluding residential or nursing home setting).
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                                <u>Number of Inpatient Hospice Admissions (Column D):</u>&nbsp;Include only 
                                unduplicated, first time hospice admissions of a patient to a facility providing 
                                general or respite inpatient care (including a GIP unit, facility or hospital 
                                contract).
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                                <u>Number of Residential Hospice Admissions (Column E):</u>&nbsp;Include only 
                                unduplicated, first time hospice admissions of a patient to a Hospice House providing routine/continuous home care (excluding a nursing home or 
                                assisted living facility).
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                                <u>Number of Nursing Home Hospice Admissions (Column F):</u>&nbsp;Include only 
                                unduplicated, first time hospice admissions of a patient residing in a skilled 
                                nursing facility.
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;
                            </td>
                            <td class="style11">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp; &nbsp;
                            </td>
                            <td class="style11">
                                <u>Number of Assisted Living Hospice Admissions (Column G):</u> Include only 
                                unduplicated, first time hospice admissions of a patient residing in an assisted 
                                living facility.
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style11">
                                <i style="font-weight: 700">Note: Please remove zero in front of any number to 
                                get correct calculation.</i></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                No. Counties:
                                <asp:Label ID="ncountya" runat="server"></asp:Label>
                                <br />
                                <asp:GridView ID="Grid_PV" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="5" DataKeyNames="QID" Font-Names="Arial" Font-Size="8pt" 
                                    ShowFooter="true">
                                    <Columns>
                                        <asp:BoundField DataField="txtCounty" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="A.&lt;br&gt;County" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="Carryovers" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="B.&lt;br&gt;Carryovers" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="UndupHomeAdmit" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="C.&lt;br&gt;Home&lt;br&gt;Admit" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="UndupInptAdmit" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="D.&lt;br&gt;Inpatient General or&lt;br&gt;Respite " HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="UndupResAdmit" HeaderText="E.&lt;br&gt;Residential Hospice" 
                                            HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                            ItemStyle-VerticalAlign="Bottom" />
                                        <asp:BoundField DataField="UndupNurseAdmit" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;br&gt;Nursing&lt;br&gt;Home" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="UndupAssistAdmit" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;br&gt;Assisted&lt;br&gt;Living" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="Patients" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="H.&lt;br&gt;Patients" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="Deaths" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="I.&lt;br&gt;Deaths" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NonDeathDischarges" 
                                            HeaderStyle-VerticalAlign="Bottom" HeaderText="J.&lt;br&gt;Discharges" 
                                            HtmlEncode="False" ItemStyle-HorizontalAlign="right" />
                                       
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td align="center" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <b style="text-align: center">SECTION C - PATIENT VOLUME (Continued)</b></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" width="45px">
                                &nbsp;C1b.
                            </td>
                            <td>
                                PATIENT VOLUME BY COUNTY</td>
                        </tr>
                        <tr>
                            <td class="style11" width="30px">
                                &nbsp;</td>
                            <td class="style25" colspan="10" align="center" >
                                <span class="style26"><em>Note: The sum of Columns D, E, F, and G must equal the total reported in C1a, Letter J. </em></span> 
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                No. Counties:
                                <asp:Label ID="ncountyb" runat="server"></asp:Label>
                                <br />
                                <asp:GridView ID="Grid_PV0" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="5" DataKeyNames="QID" Font-Names="Arial" Font-Size="8pt" 
                                    ShowFooter="true">
                                    <Columns>
                                        <asp:BoundField DataField="txtCounty" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="A.&lt;BR&gt;County" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="TotReAdmissions" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="B.&lt;BR&gt;Current Yr&lt;br&gt;Re-Admissions" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="TotReAdmissionsPrior" 
                                            HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="C.&lt;BR&gt;Prior Yr&lt;br&gt;Re-Admissions" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDExProg" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="D.&lt;BR&gt;Discharged&lt;br&gt;by Hospice" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDCurative" 
                                            HeaderText="E.&lt;BR&gt;Withdrew&lt;br&gt;from Hospice" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" ItemStyle-VerticalAlign="Bottom" />
                                        <%--<asp:BoundField DataField="NDDRefused" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;BR&gt;Refused Treatment" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDOOA" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;BR&gt;Moved Out" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                                        <asp:BoundField DataField="NDDTrans" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;BR&gt;Transferred&lt;br&gt;to another Hospice" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <%--<asp:BoundField DataField="NDDCause" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="I.&lt;BR&gt;Discharges" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                                        <asp:BoundField DataField="NDDOther" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;BR&gt;Other" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                      
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2" style="page-break-before: always;">
                        <tr>
                            <td align="left" class="style38" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <b style="text-align: center">SECTION C - PATIENT VOLUME (Continue)</b></td>
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
                            <td bgcolor="#CCCCCC" class="auto-style2" valign="top">
                                &nbsp;C2.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                REFERRALS</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                A referral is defined by one or more of the following:
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                1.&nbsp; A request for assessment for possible admission to hospice from a physician, 
                                case manager, discharge planner,
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp; health care organization, or equivalent;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                2. Contact by a patient, or family or friend of a patient, that identifies a 
                                specific patient who may need hospice care.</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                NOTE: The definition here is intentionally broader and is intended to capture 
                                all calls and contacts that identify a potential hospice patient.</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                <b>Note: For various reasons, hospices usually do not admit all patients who are 
                                referred for care. Therefore, the number of referrals is rarely the same as the 
                                number of admissions. A value entered for number of referrals that is the same 
                                as the value entered for new admissions will be excluded from the data analysis.</b></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                <b>a. Total number of referrals received in FY
                                <asp:Label ID="SY10" runat="server"></asp:Label>
                                :</b> &nbsp;
                                <asp:TextBox ID="TotReferrals" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" 
                                    ControlToValidate="TotReferrals" 
                                    ErrorMessage="Total number of referrals received in FY" Text="*"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator8" runat="server" 
                                    ClientValidationFunction="CheckReferrals" 
                                    ErrorMessage="Please be sure that the sum of the elements entered for Referrals by Source matches the value entered for Total Referrals.">*</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2" valign="top">
                                &nbsp;</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                REFERRAL SOURCES</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                Provide the number of referrals from the following sources:
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
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
                                        <td width="100px">
                                            b. Physician</td>
                                        <td>
                                            <asp:TextBox ID="RefSourceMD" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" 
                                                ControlToValidate="RefSourceMD" 
                                                ErrorMessage="Referrals received from physician" Format="integer" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            c. Hospital (includes discharge planners)</td>
                                        <td>
                                            <asp:TextBox ID="RefSourceHosp" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
                                                ControlToValidate="RefSourceHosp" 
                                                ErrorMessage="Referrals received from hospitals" Format="integer" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            d. Skilled Nursing Facility</td>
                                        <td>
                                            <asp:TextBox ID="RefSourceNF" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                ControlToValidate="RefSourceNF" 
                                                ErrorMessage="Referrals received from skilled nursing facilities" 
                                                Format="integer" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            e. Assisted Living Facility</td>
                                        <td>
                                            <asp:TextBox ID="RefSourceALF" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                ControlToValidate="RefSourceALF" 
                                                ErrorMessage="Referrals received from assisted living facilities" 
                                                Format="integer" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            f. Home Health Agency</td>
                                        <td>
                                            <asp:TextBox ID="RefSourceHH" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                ControlToValidate="RefSourceHH" 
                                                ErrorMessage="Referrals received from home health agency" Format="integer" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            g. Self/Family/Friend</td>
                                        <td>
                                            <asp:TextBox ID="RefSourceSelf" runat="server" BackColor="#FFFFFF" Columns="50" 
                                                MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
                                                ControlToValidate="RefSourceSelf" 
                                                ErrorMessage="Referrals received from self/family/friend" Format="integer" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            h. Other: (Specify) h1.<asp:TextBox ID="RefSourceOtherSpecify" runat="server" BackColor="#FFFFFF" Columns="20" MaxLength="250"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="RefSourceOther" runat="server" BackColor="#FFFFFF" 
                                                Columns="50" MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                ControlToValidate="RefSourceOther" ErrorMessage="Referrals received from other" 
                                                Format="integer" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            i. Palliative Care Provider</td>
                                        <td>
                                            <asp:TextBox ID="PalCareProvider" runat="server" BackColor="#FFFFFF" Columns="50" MaxLength="50" onkeypress=" return allowonlynumbers();"></asp:TextBox>
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
                            <td class="auto-style2" bgcolor="#CCCCCC" valign="top">
                                &nbsp;C2-1.</td>
                            <td class="style15" bgcolor="#CCCCCC">
                                SOCIAL DETERMINANTS OF HEALTH & COMMUNITY REFERRALS</td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td>Does your agency refer patients to organizations that help address social determinants of health or health-related social needs? 
                                <asp:RequiredFieldValidator runat="server" ID="rfvRefYN" ControlToValidate="rblRefYN" 
                                    ErrorMessage="SOCIAL DETERMINANTS OF HEALTH & COMMUNITY REFERRALS required" Text="*" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td><asp:RadioButtonList ID="rblRefYN" runat="server" AutoPostBack="true">
                                    <asp:ListItem Text="Yes" Value="True" />
                                    <asp:ListItem Text="No" Value="False" />
                                </asp:RadioButtonList></td>
                        </tr>
                    <tr>
                        <td class="auto-style3"></td>
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
                        <td class="auto-style2" bgcolor="#CCCCCC" valign="top">
                            &nbsp;C2-2.</td>
                        <td class="style15" bgcolor="#CCCCCC">
                            INCOMPLETE REFERRALS- REASONS FOR FORGONE CARE</td>
                        </tr>
                        <tr><td class="auto-style3"></td>
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
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" class="auto-style2" valign="top">
                                &nbsp;C3.
                            </td>
                            <td bgcolor="#CCCCCC" class="style15">
                                AVERAGE DAILY CENSUS</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                Please review the definitions and calculation examples carefully before 
                                completing the following data for FY
                                <asp:Label ID="SY11" runat="server"></asp:Label>
                                .
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                <table class="style32a">
                                    <tr>
                                        <td valign="top" width="30px">
                                            A.</td>
                                        <td valign="top">
                                            Average Daily Census (ADC) Patients per Day:&nbsp;
                                            <asp:TextBox ID="ADC" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
                                                ControlToValidate="ADC" ErrorMessage="Average Daily Census patients per day" 
                                                Text="*"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator3" runat="server" 
                                                ControlToValidate="ADC" ErrorMessage="C3 a. ADC must be less than 601" 
                                                Operator="LessThan" Text="*" Type="Double" ValueToCompare="601"></asp:CompareValidator>
                                            &nbsp;&nbsp;&nbsp;
                                            <br />
                                            
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
                                            <asp:TextBox ID="ALOS" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" 
                                                ControlToValidate="ALOS" ErrorMessage="Average Length of Stay days" Text="*"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                                ControlToValidate="ALOS" ErrorMessage="C3 b. ALOS must be less than 366" 
                                                Operator="LessThan" Text="*" Type="Double" ValueToCompare="366"></asp:CompareValidator>
                                            &nbsp;
                                            <br />
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Divide the total days of care provided to discharged patients by the total 
                                                    number of patients discharged.</li>
                                                <li>Example: 100 patients died or were discharged. Their total patient days from 
                                                    admission to discharge were 4200. ALOS = 4200/100 = 42 days.</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            C.</td>
                                        <td valign="top">
                                            Median Length of Stay (MLOS) Days:&nbsp;
                                            <asp:TextBox ID="MLOS" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                ControlToValidate="MLOS" MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" 
                                                ControlToValidate="MLOS" ErrorMessage="Median Length of Stay days" Text="*"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                ControlToValidate="MLOS" ErrorMessage="C3 c. MLOS must be less than 366" 
                                                Operator="LessThan" Text="*" Type="Double" ValueToCompare="366"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>The midpoint for all discharged patients (same population as for ALOS). Half of 
                                                    the patients have a LOS longer than the median and half of the patients have an 
                                                    LOS shorter than the median. Calculate the MLOS by arranging the LOS scores for 
                                                    all patients from lowest to highest (1, 2, 3…). Find the score that falls in the 
                                                    exact middle of the list. This is the median length of stay.</li>
                                                <li>Example 1: Even number of patients: You have six patients that stayed the 
                                                    following number of days: 11, 2, 9, 5, 8, 4. Arrange the LOS scores from lowest 
                                                    to highest: 2, 4, 5, 8, 9, 11. The median will fall between the third and fourth 
                                                    number. In this case, 5 and 8. Add 5+8 and divide by 2. (5+8)/2 = 6.5. Therefore 
                                                    6.5 is your median.</li>
                                                <li>Example 2: Odd number of patients: You have five patients with the following 
                                                    number of days: 8, 22, 3, 10, 22. Arrange the LOS scores from lowest to highest 
                                                    (3, 7, 8, 10, 22). The median length of stay is in the middle – 8 days.</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            D.</td>
                                        <td valign="top">
                                            Number of Patients Who Died or were Discharged in less than or equal to 7 days: 
                                            &nbsp;
                                            <asp:TextBox ID="Died7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator59" runat="server" 
                                                ControlToValidate="Died7" 
                                                ErrorMessage="Number patients died or discharged within 7 days" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Include the number of deaths for all patients who died with stays of 7 days or 
                                                    fewer</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            E.</td>
                                        <td valign="top">
                                            Number of Patients Who Died or were Discharged in greater than or equal to 180 
                                            days: &nbsp;
                                            <asp:TextBox ID="Died180" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" 
                                                ControlToValidate="Died180" 
                                                ErrorMessage="Number patients died or discharged in greater than or equal to 180 days" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <ul>
                                                <li>Include the number of deaths for all patients who died with stays of 180 days or 
                                                    more.</li>
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
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
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
                        <%--<asp:BoundField DataField="NDDRefused" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;BR&gt;Refused Treatment" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDOOA" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;BR&gt;Moved Out" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%><%--<asp:BoundField DataField="NDDCause" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="I.&lt;BR&gt;Discharges" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%><%--<asp:BoundField DataField="NDDRefused" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;BR&gt;Refused Treatment" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDOOA" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;BR&gt;Moved Out" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                &nbsp;</td>
                            <td class="style12">
                                <%--<asp:BoundField DataField="NDDCause" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="I.&lt;BR&gt;Discharges" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%><%--<asp:BoundField DataField="NDDRefused" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;BR&gt;Refused Treatment" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDOOA" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;BR&gt;Moved Out" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td align="left" class="style38" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <b style="text-align: center">SECTION D - PATIENT DEMOGRAPHICS</b></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Report the number (NOT %) of unduplicated, new admissions during FY <asp:Label 
                                    ID="SY14" runat="server"></asp:Label>
                                for each category in this section. Count each patient only one time. This means 
                                patients with multiple admissions in
                                <asp:Label ID="SY15" runat="server"></asp:Label>
                                &nbsp;are included only once. Do not include carryovers or re-admissions. The total 
                                admissions in this section should equal total admissions in Section C (Column H 
                                minus B), or
                                <asp:Label ID="TotalAdmissions" runat="server" ForeColor="Blue"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;
                                 <asp:Label ID="AgTotPatsServed" runat="server" ForeColor="Aqua" 
                                                style="display: none;" />
                                            <asp:Label ID="TotalCarryovers" runat="server" ForeColor="Aqua" 
                                                style="display: none;" />
                                            <asp:Label ID="Certi1" runat="server" Visible="False"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                If your hospice did not admit patients in one or more of the age categories, 
                                enter 0 in the appropriate space.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;D1.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                AGE and D2. GENDER</td>
                        </tr>
                        <tr>
                            <td width="30px">
                                &nbsp;</td>
                            <td>
                                Use patient’s age on the first day of admission.<br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:GridView ID="Grid_AgeGender" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="QID" Font-Names="Arial" Font-Size="8pt" 
                                ShowFooter="True">
                                <Columns>
                                   <asp:BoundField DataField="txtCounty" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="County" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Age01" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Less than 1" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="Right" />
                                    <asp:BoundField DataField="Age1to12" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="1-12" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="Age13to18" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="13-18 " HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="Age19to20" HeaderText="19-20" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />
                                        <%--<asp:BoundField DataField="Age25" HeaderText="25-34" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />--%>
                                        <asp:BoundField DataField="TotalAge0to20" HeaderText="Total<br>0-20" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />
                                    <asp:BoundField DataField="Age21to34" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="21-34" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="Age35to64" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="35-64" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="Age65" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="65-74" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="Age75" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="75-84" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="Age85" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="85+" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="AgeTot" 
                                        HeaderStyle-VerticalAlign="Bottom" HeaderText="Total<br>Age" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="SexF" 
                                        HeaderStyle-VerticalAlign="Bottom" HeaderText="Female" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="SexM" 
                                        HeaderStyle-VerticalAlign="Bottom" HeaderText="Male" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="SexO" 
                                        HeaderStyle-VerticalAlign="Bottom" HeaderText="Other Gender Identity" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="SexTot" 
                                        HeaderStyle-VerticalAlign="Bottom" HeaderText="Total<br>Gender" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" />


                                </Columns>
                            </asp:GridView>




                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;D3.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                ETHNICITY and D4. RACE</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                All patients served in
                                <asp:Label ID="SY16" runat="server"></asp:Label>
                                &nbsp;should be categorized as Hispanic or non-Hispanic, and further categorized by 
                                Race below.<br />
                                <br />
                               
                                
                                
                                
                                
                                </td>
                        </tr>
                        <tr>
                            <td class="style11" colspan="2">
                                <asp:GridView ID="Grid_Race" runat="server" AutoGenerateColumns="False" 
                                CellPadding="5" DataKeyNames="QID" Font-Names="Arial" Font-Size="8pt" 
                                ShowFooter="true">
                                <Columns>
                                    <asp:BoundField DataField="txtCounty" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="County" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="EthHispanic" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Hispanic,<br />Latino, or<br />Spanish Origin" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="EthNonHispanic" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Non<br>Hispanic" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="EthTotal" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Total" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />

                                    <asp:BoundField DataField="RaceAmInd" HeaderStyle-VerticalAlign="Bottom" HeaderText="American<br>Indian or<br>Alaskan<br /> Native"
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="RaceBlack" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Black or <br />African<br>American" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="RaceAsian" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Asian " HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="RaceHawPacIs" HeaderText="Hawaiian or<br>Other<br> Pacific<br> Islander" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />
                                        <asp:BoundField DataField="RaceWhite" HeaderText="White" HeaderStyle-VerticalAlign="Bottom"
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />
                                    <asp:BoundField DataField="RaceMultiracial" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Multiracial" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <asp:BoundField DataField="RaceOther" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Other" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                                    <%--<asp:BoundField DataField="RaceUnknown" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Unknown" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />--%>
                                    <asp:BoundField DataField="RaceTot" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Total" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />
                               

                                </Columns>
                            </asp:GridView>
                                
                                
                                
                                </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td>
                <br />
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;D5.</td>
                            <td bgcolor="#CCCCCC" class="style15">
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
                                            Developmental disabilities are a diverse group of severe chronic conditions that 
                                            are due to mental and/or physical impairments. The developmentally disabled have 
                                            problems with major life activities such as language, mobility, learning, 
                                            self-help, and independent living. Developmental disabilities begin anytime up 
                                            to 22 years of age and usually last throughout a person’s lifetime.</td>
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
                                            Patients admitted in
                                            <asp:Label ID="SY17" runat="server"></asp:Label>
                                            &nbsp;with developmental disabilities &nbsp;
                                            <asp:TextBox ID="DevDisability" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator74" runat="server" 
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
                                            A Veteran is a male or female hospice patient who served in the U.S. armed 
                                            forces. It is not necessary for a patient to receive hospice services through 
                                            Veterans benefits to be counted as a veteran.</td>
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
                                            Patients admitted in
                                            <asp:Label ID="SY18" runat="server"></asp:Label>
                                            &nbsp;who were Veterans &nbsp;
                                            <asp:TextBox ID="NumVeterans" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" 
                                                ControlToValidate="NumVeterans" 
                                                ErrorMessage="Number of patients who are veterans" Text="*"></asp:RequiredFieldValidator>
                                            <asp:CustomValidator ID="CustomValidator11" runat="server" 
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;D6.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                NUMBER OF ADMISSIONS AND DEATHS BY LOCATION <span class="style44">OF CARE BY 
                                LEVEL OF CARE</span></td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                               Report the number of unduplicated, new admissions, deaths, non-death discharges and patient days in each location and level during FY <asp:Label ID="SY19" runat="server"></asp:Label>
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
                                <u>Admissions:</u> Count each patient only one time. This means patients with 
                                multiple admissions in
                                <asp:Label ID="SY20" runat="server"></asp:Label>
                                are included only once. <b>Do not include carryovers or re-admissions.</b></td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                The total admissions in this section should equal total admissions in Section C 
                                (Column H minus B), or (<asp:Label ID="TotalAdmissions0" runat="server" 
                                    ForeColor="Blue"></asp:Label>
                                )
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
                                C (column I), or (<asp:Label ID="TotalDeaths" runat="server" ForeColor="Blue"></asp:Label>
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
                                <u>Non-Death Discharges:</u>Total non-death discharges should equal total 
                                non-death discharges in Section C (column J), or (<asp:Label 
                                    ID="TotalNonDeathDischarges" runat="server" ForeColor="Blue"></asp:Label>
                                )
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
                                <strong>Total Patient Days should be reported by location 
                                and level of care for all patients who died or were discharged during FY 
                                <asp:Label ID="SY5" runat="server"></asp:Label>
                                . 
                                Patient Days should equal total patient days reported in Question D7</strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="0" cellspacing="0" style="page-break-before: always;">
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
                                             <asp:TextBox ID="Adm_HC_PR" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                 MaxLength="10" ></asp:TextBox>
                                       </td>
<td>
                                            <asp:TextBox ID="D_HC_PR" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="DD_HC_PR" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                 MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_PR" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Assisted Living Facility</td>
                                        <td>
                                             <asp:TextBox ID="Adm_HC_AL" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                 MaxLength="10"></asp:TextBox></td>
<td>
                                            <asp:TextBox ID="D_HC_AL" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="DD_HC_AL" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                 MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_AL" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospice House</td>
                                        <td>
                                            <asp:TextBox ID="Adm_HC_HH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        


                                            <td> 
                                                <asp:TextBox ID="D_HC_HH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>

                                             <td><asp:TextBox ID="DD_HC_HH" runat="server" 
                                                     BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_HH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home </td>
                                        <td>
                                            <asp:TextBox ID="Adm_HC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>

<td>
                                             <asp:TextBox ID="D_HC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>

                                        <td>
                                            <asp:TextBox ID="DD_HC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_HC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (Specify)&nbsp;
                                            <asp:TextBox ID="HC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_HC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
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
                                            <asp:TextBox ID="Adm_RC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
<td>
                                            <asp:TextBox ID="D_RC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>


                                        <td>
                                            <asp:TextBox ID="DD_RC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_RC_NH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospital with contractual relationship with general hospice</td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
<td>
                                            <asp:TextBox ID="D_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>


                                        <td>
                                             <asp:TextBox ID="DD_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_RC_HOSP" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>
                                            Freestanding Inpatient Hospice Facility owned and operated by a general hospice* </td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>

                                        <td>
                                            <asp:TextBox ID="D_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        <td>
                                             <asp:TextBox ID="DD_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10"></asp:TextBox></td>
                                        
                                        <td>
                                            <asp:TextBox ID="PD_RC_FREE" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (specify)&nbsp;
                                            <asp:TextBox ID="RC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_RC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
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
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_HOSP" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home-with contractual relationship with general hospice</td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Freestanding Inpatient Hospice facility owned and operated by a general hospice*</td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_FREE" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (specify)
                                            <asp:TextBox ID="IC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_IC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_IC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_IC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_IC_OTH" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
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
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_PR" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Assisted Living Facility</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_AL" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Hospice House</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_HH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nursing Home</td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_NH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Other (Specify)
                                            <asp:TextBox ID="CC_OTHER" runat="server" Columns="35" MaxLength="35"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Adm_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="D_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DD_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="PD_CC_OTH" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
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
                                                MaxLength="7" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  colspan="5">
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;D7.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                NUMBER OF PATIENTS BY PRIMARY DIAGNOSIS</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Please provide data for FY <asp:Label ID="SY21" runat="server"></asp:Label>
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
                                <u>Admissions:</u> Report the number of unduplicated new admissions in FY <asp:Label 
                                    ID="SY22" runat="server"></asp:Label>
                                . Count each patient only one time. This means patients with multiple admissions 
                                in
                                <asp:Label ID="SY23" runat="server"></asp:Label>
                                are included only once. <b>Do not include carryovers or re-admissions.</b></td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                The total admissions in this section should equal total admissions in Section C 
                                (Column H minus B).</td>
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
                                C (column I).
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
                                <u>Non-Death Discharges:</u>Total non-death discharges should equal total 
                                non-death discharges in Section C (column J)</td>
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
                                <u>Patient Days:</u> Include the total number of days services were provided for 
                                all patients who died or were discharged in
                                <asp:Label ID="SY24" runat="server"></asp:Label>
                                . </td>
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
                                <strong>Total Patient Days should be reported by location 
                                and level of care for all patients who died or were discharged during FY 
                                <asp:Label ID="SY25" runat="server"></asp:Label>
                                . 
                                Patient Days should equal total patient days reported in Question D6</strong></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="1" cellpadding="0" cellspacing="0" class="style32a">
                                    <tr>
                                        <td valign="top">
                                            Primary Diagnosis</td>
                                        <td valign="top" width="100px">
                                            Comments</td>
                                        <td valign="top">
                                            # of
                                            <asp:Label ID="SY26" runat="server"></asp:Label>
                                            Admissions (unduplicated)</td>
                                        <td valign="top">
                                            # of Deaths </td>
                                        <td valign="top">
                                            # of Non-Death Discharges </td>
                                        <td valign="top" width="100px">
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                ControlToValidate="SepsisAd" 
                                                ErrorMessage="Sepsis Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SepsisDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('SepsisDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                ControlToValidate="SepsisDeaths" 
                                                ErrorMessage="Sepsis Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SepsisLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('SepsisLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                ControlToValidate="SepsisLiveDis" 
                                                ErrorMessage="Sepsis Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SepsisPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('SepsisPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
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
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                 ControlToValidate="CancerAd" ErrorMessage="Cancer Admissions (or enter 0 if none)" 
                                                 Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="CancerDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('CancerDeaths');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                                 ControlToValidate="CancerDeaths" 
                                                 ErrorMessage="Cancer  Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CancerLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('CancerLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                                ControlToValidate="CancerLiveDis" 
                                                ErrorMessage="Cancer Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CancerPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('CancerPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                                ControlToValidate="CancerPDays" 
                                                ErrorMessage="Cancer Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            Diseases of the blood, blood forming&nbsp; organs, and some disorders of the immune 
                                            system<br /> (D50-D89)</td>
                                        <td  width="100px">
                                            Includes anemia, HIV.</td>
                                        <td >
                                            <asp:TextBox ID="HIVAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumActTotAd('HIVAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                                ControlToValidate="HIVAd" 
                                                ErrorMessage="Diseases of the blood Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td >
                                            <asp:TextBox ID="HIVDeaths" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumTotalPDeaths('HIVDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                                ControlToValidate="HIVDeaths" 
                                                ErrorMessage="Diseases of the blood Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td >
                                            <asp:TextBox ID="HIVLiveDis" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumTotalLiveDis('HIVLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                                ControlToValidate="HIVLiveDis" 
                                                ErrorMessage="Diseases of the blood Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td >
                                            <asp:TextBox ID="HIVPDays" runat="server" Columns="9" MaxLength="10" 
                                                onkeyup="SumTotalPDays('HIVPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
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
                                                ID="RequiredFieldValidator29" runat="server" ControlToValidate="EndoAd" 
                                                ErrorMessage="Endocrine Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="margin-left: 40px">
                                            <asp:TextBox ID="EndoDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('EndoDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                                                ControlToValidate="EndoDeaths" ErrorMessage="Endocrine Deaths (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EndoLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('EndoLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                                                ControlToValidate="EndoLiveDis" 
                                                ErrorMessage="Endocrine Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="EndoPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('EndoPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                                                ControlToValidate="NeuroAd" 
                                                ErrorMessage="Neurodevelopment Disorders Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NeuroDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('NeuroDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                                                ControlToValidate="NeuroDeaths" 
                                                ErrorMessage="Neurodevelopment Disorders Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="NeuroLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('NeuroLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                                                 ControlToValidate="NeuroLiveDis" 
                                                 ErrorMessage="Neurodevelopment Disorders Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NeuroPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('NeuroPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
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
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                                                 ControlToValidate="DemAd" ErrorMessage="Nervous System Admissions (or enter 0 if none)" 
                                                 Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="DementiaDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('DementiaDeaths');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                                                 ControlToValidate="DementiaDeaths" 
                                                 ErrorMessage="Nervous System Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DementiaLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('DementiaLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                                                ControlToValidate="DementiaLiveDis" 
                                                ErrorMessage="Nervous System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="DementiaPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('DementiaPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" 
                                                ControlToValidate="HrtAd" ErrorMessage="Circulatory System Admissions (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="HeartDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('HeartDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
                                                ControlToValidate="HeartDeaths" ErrorMessage="Circulatory System Deaths (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="HeartLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('HeartLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" 
                                                 ControlToValidate="HeartLiveDis" 
                                                 ErrorMessage="Circulatory System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="HeartPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('HeartPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator64" runat="server" 
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
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator65" runat="server" 
                                                 ControlToValidate="LungAd" 
                                                 ErrorMessage="Respiratory System Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="LungDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('LungDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" 
                                                ControlToValidate="LungDeaths" 
                                                ErrorMessage="Respiratory System Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LungLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('LungLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" 
                                                 ControlToValidate="LungLiveDis" 
                                                 ErrorMessage="Respiratory System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LungPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('LungPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator68" runat="server" 
                                                 ControlToValidate="LungPDays" 
                                                 ErrorMessage="Respiratory System Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Diesase of the digestive system<br /> (K00-K95)</td>
                                        <td width="100px">
                                            Includes liver disorders</td>
                                        <td>
                                            <asp:TextBox ID="LivAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumActTotAd('LivAd');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator69" runat="server" 
                                                ControlToValidate="LivAd" ErrorMessage="Digestive System Admissions (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="LiverDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('LiverDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator70" runat="server" 
                                                ControlToValidate="LiverDeaths" ErrorMessage="Digestive System Deaths (or enter 0 if none)" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LiverLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('LiverLiveDis');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator71" runat="server" 
                                                 ControlToValidate="LiverLiveDis" 
                                                 ErrorMessage="Digestive System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="LiverPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('LiverPDays');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator72" runat="server" 
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinAd">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SkinDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalPDeaths('SkinDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinDeaths">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SkinLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalLiveDis('SkinLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="SkinLiveDis">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="SkinPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="SumTotalPDays('SkinPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" 
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MuscleAd">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MuscleDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MuscleDeaths">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MuscleLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" 
                                                ErrorMessage="RequiredFieldValidator" ControlToValidate="MuscleLiveDis">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MusclePDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator95" runat="server" 
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator96" runat="server" 
                                                ControlToValidate="KidneyAd" 
                                                ErrorMessage="Genitourinary System Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="KidneyDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('KidneyDeaths');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator97" runat="server" 
                                                 ControlToValidate="KidneyDeaths" 
                                                 ErrorMessage="Genitourinary System Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="KidneyLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('KidneyLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator98" runat="server" 
                                                ControlToValidate="KidneyLiveDis" 
                                                ErrorMessage="Genitourinary System Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="KidneyPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('KidneyPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator99" runat="server" 
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
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator100" runat="server" 
                                                 ControlToValidate="InjpoiAd" 
                                                 ErrorMessage="Injury, poisoning Admissions (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InjpoiDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDeaths('InjpoiDeaths');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator101" runat="server" 
                                                ControlToValidate="InjpoiDeaths" 
                                                ErrorMessage="Injury, poisoning  Deaths (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InjpoiLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalLiveDis('InjpoiLiveDis');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator102" runat="server" 
                                                ControlToValidate="InjpoiLiveDis" 
                                                ErrorMessage="Injury, poisoning  Non-Death Discharges (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InjpoiPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumTotalPDays('InjpoiPDays');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator103" runat="server" 
                                                ControlToValidate="InjpoiPDays" 
                                                ErrorMessage="Injury, poisoning Patient days (or enter 0 if none)" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            Other&nbsp;<asp:TextBox ID="DiagOtherName" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox>
                                            &nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" 
                                                ClientValidationFunction="CheckOther" 
                                                ErrorMessage="If you have filled in data for 'Other Diagnosis', please be sure to provide the name of the other diagnosis">*</asp:CustomValidator>
                                        </td>
                                        <td width="100px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="OtherAd" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumActTotAd('OtherAd');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="OtherDeaths" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumTotalPDeaths('OtherDeaths');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="OtherLiveDis" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumTotalLiveDis('OtherLiveDis');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="OtherPDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumTotalPDays('OtherPDays');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Totals</b></td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="ActTotAd" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotalPDeaths" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotalLiveDis" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotalPDays" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:CustomValidator ID="CustomValidator5" runat="server" 
                                                ClientValidationFunction="totadm" 
                                                ErrorMessage="The total number of new admissions in D6 should equal the # of new admissions D7">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:Label ID="AgTotPatsServed0" runat="server" ForeColor="Aqua" 
                                                style="display: none;" />
                                            <asp:Label ID="TotalCarryovers0" runat="server" ForeColor="Aqua" 
                                                style="display: none;" />
                                            <asp:CustomValidator ID="CustomValidator6" runat="server" 
                                                ClientValidationFunction="totdeaths" 
                                                ErrorMessage="The total number of Deaths in D6 should equal the # of Deaths in D7">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:Label ID="AgTotDeaths" runat="server" ForeColor="Aqua" 
                                                style="display: none;"></asp:Label>
                                            <asp:CustomValidator ID="CustomValidator7" runat="server" 
                                                ClientValidationFunction="totdischarges" 
                                                ErrorMessage="The total number of Live Discharges in D6 should equal the # of Live Discharges in D7">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:Label ID="AgTotNonDeaths" runat="server" ForeColor="Aqua" 
                                                style="display: none;"></asp:Label>
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
                                        <td><b>Total</b></td>
                                        <td><asp:TextBox ID="txtTotalAdmitPY" runat="server" BackColor="#FFFFCC" 
                                            Columns="10" MaxLength="10" onkeydown="return false"/>
                                        </td>
                                        <td><asp:TextBox ID="txtTotalAdmitCY" runat="server" BackColor="#FFFFCC" 
                                            Columns="10" MaxLength="10" onkeydown="return false"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td align="left" class="style38" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <b style="text-align: center">SECTION E - PROCESSES OF CARE</b></td>
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;E1.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                VOLUNTEERS</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Please provide the following information for FY <asp:Label ID="SY27" 
                                    runat="server"></asp:Label>
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
                                <u>Volunteer Hours:</u> For those volunteers, who contributed hours in more than 
                                one volunteer service category, provide the number of hours for each category.</td>
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
                                Do <u>not</u> include volunteer medical director hours when entering responses 
                                in this section. Medical director’s volunteer hours should be entered in Section 
                                F: Productivity and Cost of Care. The table for Question F1 includes a category 
                                specifically for volunteer physicians.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="1" cellpadding="1" cellspacing="0" class="style32a">
                                    <tr>
                                        <td class="style37" valign="top" width="400px">
                                            <b>Volunteers</b></td>
                                        <td class="style36" valign="top">
                                            Number</td>
                                        <td class="style37" valign="top">
                                            <b>Hours</b></td>
                                        <td class="style37" valign="top">
                                            <b>Visits</b></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Direct Patient Care Volunteers*</b><br />Direct patient care volunteers are 
                                            defined as volunteers who spend time with patients and families</td>
                                        <td class="style35">
                                            <asp:TextBox ID="VolDirectNum" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumVolNum('VolDirectNum');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator15" runat="server" 
                                                ClientValidationFunction="CheckVol6" 
                                                ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator>
                                            <asp:CustomValidator ID="CustomValidator16" runat="server" 
                                                ClientValidationFunction="CheckVisit4" 
                                                ErrorMessage="For All Hospice Volunteers and Direct Patient Care Volunteers in section E1, if you have provided a number of volunteers, please also provide the number of visits.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VolDirectHours" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumVolHours('VolDirectHours');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator17" runat="server" 
                                                ClientValidationFunction="CheckVol1" 
                                                ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VolDirectVisits" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumVisits('VolDirectVisits');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator18" runat="server" 
                                                ClientValidationFunction="CheckVisit1" 
                                                ErrorMessage="For every row in section E1, if you have provided number of visits, please provide the number of volunteers.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Clinical Support Volunteers</b>
                                            <br />
                                            Clinical support volunteers are defined as volunteers who provide services, such 
                                            as clerical duties, answering phones, or organizing supplies, that support 
                                            patient care and clinical services<br /> <b>Note:</b> Direct Patient Care 
                                            Volunteer hours and Clinical Support Volunteer hours combined meet the Medicare 
                                            Condition of Participation (COP) requirement for volunteer time equal to 5% of 
                                            patient care hours</td>
                                        <td class="style35">
                                            <asp:TextBox ID="VolPCSupNum" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumVolNum('VolPCSupNum');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator19" runat="server" 
                                                ClientValidationFunction="CheckVol7" 
                                                ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VolPCSupHours" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumVolHours('VolPCSupHours');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator20" runat="server" 
                                                ClientValidationFunction="CheckVol2" 
                                                ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            NA</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>General Support Volunteers</b>
                                            <br />
                                            General support volunteers provide services, such as help with fundraising and 
                                            serving as members of the board of directors, which make an overall contribution 
                                            to the hospice.
                                            <br />
                                            <i>General Support Volunteer hours do not contribute to the 5% Medicare 
                                            requirement</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VolGenSupNum" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumVolNum('VolGenSupNum');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator12" runat="server" 
                                                ClientValidationFunction="CheckVol8" 
                                                ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VolGenSupHours" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumVolHours('VolGenSupHours');"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator21" runat="server" 
                                                ClientValidationFunction="CheckVol3" 
                                                ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            NA</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>All Hospice Volunteers*</b>
                                            <br />
                                            This includes all volunteers, including those not allowed under the Medicare 
                                            Conditions of Participation (General Support Volunteers) above.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="VolAllNum" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator5" runat="server" 
                                                ControlToValidate="VolAllNum" 
                                                ErrorMessage="Please provide all hospice volunteers" Operator="GreaterThan" 
                                                Text="*" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                                            <asp:CustomValidator ID="CustomValidator22" runat="server" 
                                                ClientValidationFunction="CheckVol5" 
                                                ErrorMessage="For every row in section E1, if you have provided a number of volunteers, please also provide the number of hours worked.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VolAllHours" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator23" runat="server" 
                                                ClientValidationFunction="CheckVol4" 
                                                ErrorMessage="For every row in section E1, if you have provided number of hours worked, please provide the number of volunteers.">*</asp:CustomValidator>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="VolAllVisits" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                            <br />
                                            <asp:CustomValidator ID="CustomValidator24" runat="server" 
                                                ClientValidationFunction="CheckVisit2" 
                                                ErrorMessage="For every row in section E1, if you have provided number of visits, please provide the number of volunteers.">*</asp:CustomValidator>
                                            <asp:CustomValidator ID="CustomValidator25" runat="server" 
                                                ClientValidationFunction="CheckVisit3" 
                                                ErrorMessage="For All Hospice Volunteers and Direct Patient Care Volunteers in section E1, if you have provided a number of volunteers, please also provide the number of visits.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                *Direct Patient Care, Clinical Support, and General Support are separate 
                                categories of volunteers. The number and hours in the three categories should 
                                total to All Hospice Volunteers.
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;E2.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                BEREAVEMENT SERVICES</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Please provide the following information for FY <asp:Label ID="SY28" 
                                    runat="server"></asp:Label>
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
                                <table border="1" cellpadding="1" cellspacing="0" class="style32a">
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
                                            <b>a. Total Number of Contacts by Visit</b><br /> Include any face-to-face 
                                            one-to-one contact with individuals, regardless of setting.
                                            <br />
                                            <i>Do NOT include support group or camp services.</i></td>
                                        <td>
                                            <asp:TextBox ID="BerContFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCont('BerContFam');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerContComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCont('BerContComm');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerContTotal" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>b. Total Number of Contacts by Phone Call</b></td>
                                        <td>
                                            <asp:TextBox ID="BerPhonFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumPhon('BerPhonFam');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerPhonComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumPhon('BerPhonComm');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerPhonTotal" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>c. Total Number of Mailings to the Bereaved</b></td>
                                        <td>
                                            <asp:TextBox ID="BerMailFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumMail('BerMailFam');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerMailComm" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumMail('BerMailComm');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerMailTotal" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="400px">
                                            <b>d. Total Number of Individuals who Received Bereavement Services*</b><br /> 
                                            Include all individuals enrolled for bereavement, including those served through 
                                            support groups and camps.</td>
                                        <td>
                                            <asp:TextBox ID="BerServIndFam" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumServInd('BerServIndFam');"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerServIndComm" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumServInd('BerServIndFam');"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="BerServIndTotal" runat="server" BackColor="#FFFFCC" 
                                                Columns="10" MaxLength="10" onkeydown="return false"></asp:TextBox>
                                            <br />
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator6" runat="server" 
                                                ControlToValidate="BerServIndTotal" 
                                                ErrorMessage="Please provide Number of Bereavement services" 
                                                Operator="GreaterThan" Text="*" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                                            <asp:CustomValidator ID="CustomValidator13" runat="server" 
                                                ClientValidationFunction="ValidationCheck" 
                                                ErrorMessage="For Section E2, please be sure to complete row d. for each column that contains data.">*</asp:CustomValidator>
                                            <asp:CustomValidator ID="CustomValidator14" runat="server" 
                                                ClientValidationFunction="ValidationCheck2" 
                                                ErrorMessage="For Section E2, please be sure to complete row d. for each column that contains data.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                * Total number of Individuals who received bereavement services (d) is not the 
                                sum of a through c
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;E3.</td>
                            <td bgcolor="#CCCCCC" class="style15">
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
                                        <td><asp:TextBox ID="txtDirectPatientStaffPY" CssClass="clsOCSNumPY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffHrsPY" CssClass="clsOCSHrsPY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffCY" CssClass="clsOCSNumCY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtDirectPatientStaffHrsCY" CssClass="clsOCSHrsCY" runat="server" Columns="5" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Clinical Support On-Call Staff</b>
                                        </td>
                                        <td><asp:TextBox ID="txtClinicalStaffPY" CssClass="clsOCSNumPY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtClinicalStaffHrsPY" CssClass="clsOCSHrsPY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtClinicalStaffCY" CssClass="clsOCSNumCY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtClinicalStaffHrsCY" CssClass="clsOCSHrsCY" runat="server" Columns="5" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>General Support On-Call Staff</b>
                                        </td>
                                        <td><asp:TextBox ID="txtGeneralStaffPY" CssClass="clsOCSNumPY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtGeneralStaffHrsPY" CssClass="clsOCSHrsPY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtGeneralStaffCY" CssClass="clsOCSNumCY" runat="server" Columns="5" /></td>
                                        <td><asp:TextBox ID="txtGeneralStaffHrsCY" CssClass="clsOCSHrsCY" runat="server" Columns="5" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Total On-Call Staff</b>
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffPY" runat="server" BackColor="#FFFFCC" 
                                                columns="5" MaxLength="10" onkeydown="return false" />                                                
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffHrsPY" runat="server" BackColor="#FFFFCC" 
                                                columns="5" MaxLength="10" onkeydown="return false"/>
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffCY" runat="server" BackColor="#FFFFCC" 
                                                columns="5" MaxLength="10" onkeydown="return false"/>
                                        </td>
                                        <td><asp:TextBox ID="txtTotalOnCallStaffHrsCY" runat="server" BackColor="#FFFFCC" 
                                                columns="5" MaxLength="10" onkeydown="return false" />
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;E4.</td>
                            <td bgcolor="#CCCCCC" class="style15">
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
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
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
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtPainMgtCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>2. Nursing Visits</td>
                                        <td>
                                            <asp:TextBox ID="txtNursingVisitPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtNursingVisitCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>3. Hospice Aide Services</td>
                                        <td>
                                            <asp:TextBox ID="txtHospiceAidePY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtHospiceAideCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>4. Medical Social Services</td>
                                        <td>
                                            <asp:TextBox ID="txtMedicalSocialPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtMedicalSocialCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>5. Spiritual Counseling</td>
                                        <td>
                                            <asp:TextBox ID="txtSpiritualPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtSpiritualCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>                                    
                                    <tr>
                                        <td>6. Bereavement Support</td>
                                        <td>
                                            <asp:TextBox ID="txtBereavementPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtBereavementCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>7. Medical Equipment and Supplies</td>
                                        <td>
                                            <asp:TextBox ID="txtMedEquipPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtMedEquipCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>8. Medication Delivery</td>
                                        <td>
                                            <asp:TextBox ID="txtMedDeliveryPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtMedDeliveryCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>9. Therapeutic Services</td>
                                        <td>
                                            <asp:TextBox ID="txtTherapeuticPY" CssClass="clsSvcsPY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                        <td>
                                            <asp:TextBox ID="txtTherapeuticCY" CssClass="clsSvcsCY" Columns="5" MaxLength="50"
                                                runat="server" /></td>
                                    </tr>
                                    <tr>
                                         <td><b>Total</b></td>
                                         <td><asp:TextBox ID="txtTotalOtherSevPY" runat="server" BackColor="#FFFFCC" 
                                                columns="5" MaxLength="10" onkeydown="return false" />
                                         </td>
                                         <td><asp:TextBox ID="txtTotalOtherSevCY" runat="server" BackColor="#FFFFCC" 
                                                columns="5" MaxLength="10" onkeydown="return false" />
                                         </td>
                                     </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td align="left" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <b style="text-align: center">SECTION F - PRODUCTIVITY AND COST OF CARE</b></td>
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
                                Please complete the following for FY <asp:Label ID="SY29" runat="server"></asp:Label>
                                . <b>(Note: Section F1 must be completed by both general and limited license 
                                hospices)</b></td>
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
                                Complete Tables F1a. and F1b. using the following definitions and calculation 
                                instructions:</td>
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
                                <b>Definitions</b>
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
                                <u>Direct Care:</u>Includes all activities involved in care delivery, including 
                                visits, telephone calls, charting, team meetings, travel for patient care, and 
                                arrangement or coordination of care. When a supervisor provides direct care, 
                                estimate the time involved in direct care, as distinct from supervision of other 
                                staff or program activities.</td>
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
                                <u>PRN Employees:</u>also called “per diem” employees, are called upon to work 
                                when necessary without a commitment to work a specific number of hours for your 
                                agency. They may be available all of the time or they may be only available for 
                                certain days or times. However, they are not the same as part-time employees, 
                                even though they may routinely work on the same day or number of hours each 
                                week. A part-time employee is expected to work a certain number of hours each 
                                week, but there is no expectation for number of hours for a PRN employee.</td>
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
                                <u>Separation:</u>a voluntary or involuntary termination of employment.</td>
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
                                <u>FTE:</u> One full time equivalent (FTE) is 2080 hours per year (40 hours per 
                                week times 52 weeks). Provide actual FTEs utilized, not the budgeted number of 
                                FTEs.</td>
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
                                <b>Calculations</b>
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
                                <u>Total FTEs:</u>Divide paid hours by 2080. Include vacation, sick leave, 
                                education leave, and all other time normally compensated by the agency. 
                                Categorize your FTEs as you do for the Medicare Hospice Cost Report. Include 
                                hourly, salaried, and contract staff. Include On-Call in direct clinical 
                                nursing.</td>
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
                                <u>Separations:</u>Do not include PRN employees in the calculation of total 
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
                                <b>Note:</b>Do not include inpatient staff when completing Section F, with the 
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;F1a.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                STAFFING BY DISCIPLINE (Do <u>not</u> include inpatient staff)</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="1" cellpadding="1" cellspacing="0" class="style32a">
                                    <tr>
                                        <td class="style37" valign="top">
                                            &nbsp;</td>
                                        <td class="style37" valign="top">
                                            Total Home Hospice FTEs</td>                                        
                                        <td class="style37" valign="top">Total Staffing Agency FTEs</td>
                                        <td class="style37" valign="top">
                                            Total Employees Including Staffing Agency Support Staff (No PRN) on last day of FY <asp:Label ID="SY30" runat="server"></asp:Label></td>
                                        <td class="style37" valign="top">
                                            Total PRN Employees</td>
                                        <td class="style37" valign="top">
                                            Total Separations (all causes)</td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Nursing – Direct Clinical</b>
                                            <br />
                                            Include RNs and LPNs. Include on-call and after hours care. Do not include 
                                            supervisors or other clinical administrators unless a portion of their time is 
                                            spent in direct care.<br /></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEDirNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEDirNursing');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                             <asp:TextBox ID="TotStaffingDirNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployDirNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployDirNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNDirNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotPRNDirNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepDirNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotSepDirNursing');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Nursing – Indirect Clinical</b><br /> Include intake staff, educators, 
                                            quality improvement, managers, and liaison nurses with clinical background, but 
                                            who do not provide direct care.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEIndNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEIndNursing');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                             <asp:TextBox ID="TotStaffingIndNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployIndNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployIndNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNIndNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotPRNIndNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepIndNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotSepIndNursing');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Nurse Practitioner</strong><br /> Include nurses with an advanced degree 
                                            who function and are licensed as a Nurse Practitioner.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEPractNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="allowDecimals('FTEPractNursing');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="TotStaffingPractNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotEmployPractNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotEmployPractNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNPractNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="allowonlynumbers('TotPRNPractNursing');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepPractNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10" onkeyup="allowonlynumbers('TotSepPractNursing');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Social Services</b><br /> Include medical social services staff as defined by 
                                            CMS for the cost report. <i>Do <u>not</u> include chaplains or bereavement 
                                            staff.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTESocial" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTESocial');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="TotStaffingSocial" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotEmploySocial" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmploySocial');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNSocial" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNSocial');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepSocial" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepSocial');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Hospice Aides</b>
                                            <br />
                                            Include both aides and homemakers</td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEHHA" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEHHA');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="TotStaffingHHA" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployHHA" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotEmployHHA');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNHHA" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNHHA');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepHHA" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepHHA');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Physicians – Paid</b><br /> Include medical directors and other physicians 
                                            providing direct care to patients and participating in clinical support.
                                            <br />
                                            <i>Exclude volunteer physicians.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEMD" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEMD');"></asp:TextBox>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="TotStaffingMD" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployMD" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotEmployMD');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNMD" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNMD');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepMD" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepMD');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Physicians – Volunteer</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEMDVol" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEMDVol');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingMDVol" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployMDVol" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployMDVol');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNMDVol" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNMDVol');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepMDVol" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepMDVol');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Chaplains</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEChap');"></asp:TextBox>
                                        </td>
                                        <td>
                                           <asp:TextBox ID="TotStaffingChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotEmployChap');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNChap');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepChap');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Other Clinical</b>
                                            <br />
                                            Include any paid staff in addition to those captured above who provide direct 
                                            care to patients or families. Include therapists, and dietitians.
                                            <br />
                                            <i>Do not include volunteers.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEOtherClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowDecimals('FTEOtherClinical');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingOtherClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployOtherClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" 
                                                onkeyup="allowonlynumbers('TotEmployOtherClinical');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNOtherClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotPRNOtherClinical');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepOtherClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotSepOtherClinical');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Bereavement</b>
                                            <br />
                                            Include all paid staff providing bereavement services, including pre-death grief 
                                            support. Do not include volunteers.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="FTEBereavement" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowDecimals('FTEBereavement');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingBereavement" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployBereavement" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployBereavement');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNBereavement" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotPRNBereavement');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepBereavement" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotSepBereavement');"></asp:TextBox>
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
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;F1b.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                GENERAL STAFFING (Do <u>not</u> include Inpatient Staff Time)</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="1" cellpadding="1" cellspacing="0" class="style32a">
                                    <tr>
                                        <td width="300px">
                                            &nbsp;</td>
                                        <td>
                                            <b>Total Home Hospice FTEs</b></td>
                                        <td><b>Total Staffing Agency FTEs</b></td>  
                                        <td>
                                            <b>Total Employees including Staffing Agency Support Staff (No PRN) on last day of FY
                                            <asp:Label ID="SY7" runat="server"></asp:Label></td>
                                        <td width="70px">
                                            <b>Total PRN Employees</b></td>
                                        <td width="70px">
                                            <b>Total Separations (all causes)</b></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Clinical</b>
                                            <br />
                                            Includes all direct care time.* This is the total of Direct Nursing, Social 
                                            Services, Hospice Aides, Physicians, Chaplains, and Other Clinical.<br /> <i>Do 
                                            not include bereavement services</i></td>
                                        <td>
                                            <asp:TextBox ID="FTEClinical" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTEClinical');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="NDDCause" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="I.&lt;BR&gt;Discharges" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                                        </td>
                                        <td>       
                                            <asp:TextBox ID="TotStaffingClinical" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10"></asp:TextBox><br /></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployClinical');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="NDDRefused" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="F.&lt;BR&gt;Refused Treatment" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />
                                        <asp:BoundField DataField="NDDOOA" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="G.&lt;BR&gt;Moved Out" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotPRNClinical');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="Age25" HeaderText="25-34" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />--%>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotSepClinical');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="RaceUnknown" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Unknown" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Non-Clinical</b><br /> Include all administrative and general staff or 
                                            contracted staff.<br /> <i>Indirect Nursing is NOT entered here. </i>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FTENonClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowDecimals('FTENonClinical');"></asp:TextBox>
                                        </td>    
                                        <td>
                                            <asp:TextBox ID="TotStaffingNonClinical" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployNonClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployNonClinical');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNNonClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotPRNNonClinical');"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepNonClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotSepNonClinical');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            <b>Total</b>
                                            <br />
                                            Include all staff time. <i>This is the total of Clinical plus Non-Clinical plus 
                                            Indirect Nursing plus Bereavement.</i></td>
                                        <td>
                                            <asp:TextBox ID="FTETotal" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowDecimals('FTETotal');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="NDDCause" HeaderStyle-VerticalAlign="Bottom" 
                                            HeaderText="I.&lt;BR&gt;Discharges" HtmlEncode="False" 
                                            ItemStyle-HorizontalAlign="right" />--%>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotStaffingTotal" runat="server" BackColor="#FFFFFF" Columns="10" 
                                            MaxLength="10"></asp:TextBox><br /></td>
                                        <td>
                                            <asp:TextBox ID="TotEmployTotal" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('TotEmployTotal');"></asp:TextBox>
                                            <br />
                                            <%--<tr>
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;C4.
                            </td>
                            <td bgcolor="#CCCCCC" class="style15">
                                OTHER SERVICES OFFERED BY YOUR HOSPICE</td>
                        </tr>--%>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotPRNTotal" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotPRNTotal');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="Age25" HeaderText="25-34" 
                                        HtmlEncode="False" ItemStyle-HorizontalAlign="right" 
                                        ItemStyle-VerticalAlign="Bottom" />--%>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TotSepTotal" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('TotSepTotal');"></asp:TextBox>
                                            <br />
                                            <%--<asp:BoundField DataField="RaceUnknown" HeaderStyle-VerticalAlign="Bottom" 
                                        HeaderText="Unknown" HtmlEncode="False" 
                                        ItemStyle-HorizontalAlign="right" />--%>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                *Direct care includes all activities involved in care delivery, including 
                                visits, telephone calls, charting, team meetings, travel necessary for patient 
                                care, and arrangement or coordination of care. When a supervisor provides direct 
                                care, estimate the time involved in direct care, as distinct from supervision of 
                                other staff or program direction activities
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
                            <td colspan="2" bgcolor="#CCCCCC" class="style15" valign="top">
                                &nbsp;F1b-1.&nbsp;STAFFING AND SUPERVISION</td>
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
                                        </td>
                                        <td><asp:DropDownList ID="dLstMedDirectorCY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Administrator</td>
                                        <td><asp:DropDownList ID="dLstAdminPY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                        </td>
                                        <td><asp:DropDownList ID="dLstAdminCY" runat="server">
                                                <asp:ListItem Text="Select" Value="" />
                                                <asp:ListItem Text="Organization Employee" Value="Organization Employee" />
                                                <asp:ListItem Text="Contract Employee" Value="Contract Employee" />
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                       
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;F1c.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                VISITS BY DISCIPLINE (Do <u>not</u> include inpatient staff)</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                Please provide the following information for FY <asp:Label ID="SY31" 
                                    runat="server"></asp:Label>
                                .
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
                                Count ALL visits, regardless of setting (hospital, nursing home, residential 
                                facility, etc.) <i>Do not count phone calls</i>.</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="1" cellpadding="1" cellspacing="0" class="style32a">
                                    <tr>
                                        <td class="style37" valign="top">
                                            &nbsp;</td>
                                        <td class="style36" valign="top">
                                            Total Visits</td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Nursing </b>
                                            <br />
                                            Include visits made by RNs and LPNs. Include call and after hours visits.<br /></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitsNursing" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('VisitsNursing');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="vVisitsNursing" runat="server" 
                                                ControlToValidate="VisitsNursing" ErrorMessage="VisitsNursing" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <strong>Nurse Practitioner</strong><br /> Include visits made by Nurses 
                                            Practitioners whey they are serving as attending physician or performing a visit 
                                            in compliance with the face-to-face encounter regulation</td>
                                        <td class="style35">
                                             <asp:TextBox ID="VisitsNursePract" runat="server" BackColor="#FFFFFF" Columns="10" 
                                             MaxLength="10" onkeyup="allowonlynumbers('VisitsNursePract');"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="vVisitsNursePract" runat="server" 
                                                 ControlToValidate="VisitsNursePract" ErrorMessage="Visits Nurse Practitioner">*</asp:RequiredFieldValidator>
</td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Social Services</b><br /> Include visits made by medical social services 
                                            staff as defined by CMS for the cost report. <i>Do not include chaplains or 
                                            bereavement staff.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitSocial" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('VisitSocial');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" 
                                                ControlToValidate="VisitSocial" ErrorMessage="VisitSocial" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Hospice Aides</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitAides" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('VisitAides');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" 
                                                ControlToValidate="VisitAides" ErrorMessage="VisitAides" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Physicians – Paid</b>
                                            <br />
                                            Include visits made by medical directors and other physicians providing direct 
                                            care to patient. Exclude volunteer physicians.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitMD" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('VisitMD');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator78" runat="server" 
                                                ControlToValidate="VisitMD" ErrorMessage="VisitMD" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Physicians – Volunteer</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitMDVol" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('VisitMDVol');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator79" runat="server" 
                                                ControlToValidate="VisitMDVol" ErrorMessage="VisitMDVol" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Chaplains</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="allowonlynumbers('VisitChap');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator80" runat="server" 
                                                ControlToValidate="VisitChap" ErrorMessage="VisitChap" Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Other Clinical</b>
                                            <br />
                                            Include any paid staff in addition to those captured above who make visits as 
                                            part of direct care to patients or families. Include therapists, and dietitians.
                                            <i>Do not include volunteers or bereavement staff.</i></td>
                                        <td class="style35">
                                            <asp:TextBox ID="VisitOtherClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="allowonlynumbers('VisitOtherClinical');"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator81" runat="server" 
                                                ControlToValidate="VisitOtherClinical" ErrorMessage="VisitOtherClinical" 
                                                Text="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;F2.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                CASELOADS (Do <u>not</u> include time inpatient staff)</td>
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
                                <b>(Note: This question must be completed by both general and limited license 
                                hospices).</b></td>
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
                                Please provide average caseloads (NOT RANGE) for the following positions.
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
                                *Caseload is the number of patients for which a staff member has responsibility 
                                or to which she/he is assigned at a time.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="0" cellpadding="0" cellspacing="0" class="style32a">
                                    <tr>
                                        <td width="60px">
                                            &nbsp;</td>
                                        <td width="300px">
                                            &nbsp;</td>
                                        <td>
                                            <b>Caseload*</b></td>
                                    </tr>
                                    <tr>
                                        <td width="60px">
                                            &nbsp;</td>
                                        <td width="300px">
                                            Primary Nurse, Nurse Case Manager</td>
                                        <td>
                                            <asp:TextBox ID="CaseloadNursing" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="LimitedLic('CaseloadNursing');"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator26" runat="server" 
                                                ClientValidationFunction="CaseloadsValue" 
                                                ErrorMessage="Please provide data for F2 for at least one category.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="60px">
                                            &nbsp;</td>
                                        <td width="300px">
                                            Social Worker</td>
                                        <td>
                                            <asp:TextBox ID="CaseLoadSocial" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="LimitedLic('CaseLoadSocial');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="60px">
                                            &nbsp;</td>
                                        <td width="300px">
                                            Hospice Aide</td>
                                        <td>
                                            <asp:TextBox ID="CaseLoadAides" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="LimitedLic('CaseLoadAides');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="60px">
                                            &nbsp;</td>
                                        <td width="300px">
                                            Chaplain</td>
                                        <td>
                                            <asp:TextBox ID="CaseLoadChap" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="LimitedLic('CaseLoadChap');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="60px">
                                            &nbsp;</td>
                                        <td width="300px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <b>Note:</b> Some disciplines, such as chaplains and social workers, may be 
                                responsible for contacting all patients and families, but visit only a 
                                proportion of them. In this situation, include ONLY those patients who receive 
                                visits in determining caseloads.</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;F3.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                ADMISSION MODEL</td>
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
                                Does your agency utilize dedicated admission staff for a majority of the initial 
                                admission visits?&nbsp;
                                <asp:DropDownList ID="AdmitNurses" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="vAdmitNurses" runat="server" 
                                    ControlToValidate="AdmitNurses" 
                                    ErrorMessage="Utilizes dedicated admission nurses for majority of initial visits" 
                                    Text="*"></asp:RequiredFieldValidator>
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
                            <td bgcolor="#CCCCCC" class="style15" valign="top" width="30px">
                                &nbsp;F4.</td>
                            <td bgcolor="#CCCCCC" class="style15">
                                PHYSICIAN INVOLVEMENT (<u>Include</u> time on inpatient units)</td>
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
                                Complete the table based on FY <asp:Label ID="SY32" runat="server"></asp:Label>
                                &nbsp;using the following definition and calculation instructions:
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
                                Definition: Direct care includes all activities involved in care deliver, 
                                including visits, telephone calls, charting, team meetings, travel for patient 
                                care, and arrangement or coordination of care.</td>
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
                                Calculation: Calculate the percentages based only on physician time devoted to 
                                hospice. If your hospice has more than one physician, consider all of their time 
                                combined as the base for the calculation. Percentage of Time column should add 
                                up to 100%.</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table border="1" cellpadding="1" cellspacing="0" class="style32a">
                                    <tr>
                                        <td class="auto-style1" valign="top">
                                            Area</td>
                                        <td class="style36" valign="top">
                                            Percentage of Time</td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Hospice Clinical</b>
                                            <br />
                                            Direct patient care provided to patients enrolled in hospice.<br /></td>
                                        <td class="style35">
                                            <asp:TextBox ID="MDHospClinical" runat="server" BackColor="#FFFFFF" 
                                                Columns="10" MaxLength="10" onkeyup="SumPercent('MDHospClinical');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Palliative Clinical</b><br /> Direct patient care provided to patients NOT 
                                            enrolled in hospice, but as part of services provided by hospice.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="MDPalClinical" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumPercent('MDPalClinical');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Non-Clinical</b><br />Administrative tasks, education, quality improvement, 
                                            research, committee work, etc.</td>
                                        <td class="style35">
                                            <asp:TextBox ID="MDNonClinical" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumPercent('MDNonClinical');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="560px">
                                            <b>Total</b></td>
                                        <td class="style35">
                                            <asp:TextBox ID="f4total" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                MaxLength="10" onkeydown="return false"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator27" runat="server" 
                                                ClientValidationFunction="total" 
                                                ErrorMessage="Please be sure that the sum of the percentages in section F4 adds to 100%.">*</asp:CustomValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    
                    
                    </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="lblH" runat="server" Text="SECTION H - INPATIENT FACILITY" 
                        Font-Bold="True" Font-Names="Arial" Font-Size="10pt"></asp:Label>
                   <asp:ListView ID="ListView_H" runat="server" DataSourceID="SqlDataSource1" > 
<LayoutTemplate> 
<div style="border:dotted 1px black; font-family: Arial; font-size: 9pt;"> 
<asp:PlaceHolder ID="itemPlaceholder" runat="server" />
</div>
</LayoutTemplate >
<ItemTemplate > 
H1. Facility:&nbsp; <%#Eval("InFacName1")%><br />
County:&nbsp; <%# Find_County(Eval("InFacCounty1"))%> <br /><br />

H2. Where is the inpatient facility sited?<br />
<%#Find_Sited(Eval("InFacSite1"))%>&nbsp; &nbsp; &nbsp; <%#Eval("InFacOther_text1")%> <br /><br />

H3. What level of care does the inpatient facility predominantly provide?<br />
<%#Find_Level(Eval("InFacLevel1"))%><br /><br />
H4. How many beds is your facility licensed for?
<table  border="0" cellpadding="0" cellspacing="0" >
                                   
                                    <tr>
                                        <td width="300px" class="style41">
                                            Licensed Beds</td>
                                        <td class="style41">
                                         <%#Eval("InFacBeds1")%>
                                           
                                        </td>
                                    </tr>
                                   
                                   
                                </table>
                                <br /><br />
                                H5. Patient Care Services<br />
Please provide the following numbers of patients cared for in your facility. 
                                <table border="0" cellpadding="0" cellspacing="0" >
                                    <tr>
                                        <td width="150px">
                                            
                                            Level of Care</td>
                                        <td width="70px" valign="top">
                                            FY <br />Total Admissions/<br /> Transfers In</td>
                                        <td  width="70px" valign="top">
                                            FY <br />Deaths</td>
                                        <td  width="70px" valign="top">
                                            FY <br />All Live Discharges and Transfers Out from your facility</td>
                                        <td  width="70px" valign="top">
                                            Patients Served
                                        </td >
                                        <td  width="70px" valign="top">
                                            Patient Days for patients who died or were discharged in FY <asp:Label ID="SY1" runat="server" value='<%#Find_FY()%>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td width="150px">
                                            General Inpatient</td>
                                        <td>
                                        <%#Eval("InFacAdmin1")%>
                                            
                                        </td>
                                        <td>
                                        <%#Eval("InFacGenDeaths1")%>
                                     
                                        </td>
                                        <td>
                                        <%#Eval("InFacGenLiveDis1")%>
                                           
                                        </td>
                                        <td>
                                        <%#Eval("InFacGenPatsServed1")%>
                                     
                                        </td>
                                        <td>
                                        <%#Eval("InFacPDays1")%>
                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="150px">
                                            Respite</td>
                                        <td>
                                        <%#Eval("InFacInptResAdmin1")%>
                                            
                                        </td>
                                        <td>
                                        <%#Eval("InFacInptResDeaths1")%>
                                         
                                        </td>
                                        <td>
                                        <%#Eval("InFacInptResLiveDis1")%>
                                           
                                        </td>
                                        <td>
                                        <%#Eval("InFacInptResPatsServed1")%>
                                      
                                                
                                        </td>
                                        <td>
                                        <%#Eval("InFacInptResPDays1")%>
                       
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="150px">
                                            Routine</td>
                                        <td>
                                        <%#Eval("InFacResAdmin1")%>
                                         
                                        </td>
                                        <td>
                                        <%#Eval("InFacResDeaths1")%>
              
                                        </td>
                                        <td>
                                        <%#Eval("InFacResLiveDis1")%>
              
                                        </td>
                                        <td>
                                        <%#Eval("InFacResPatsServed1")%>

                                        </td>
                                        <td>
                                        <%#Eval("InFacResPDays1")%>

                                        </td>
                                    </tr>
                                </table>
                                <br /><br />

    
H6. Did your program open during This Fiscal Year: <%#Find_Opened(Eval("InFacYear"))%> <br />
If Yes, Select Month: <%#Eval("InFacMonth1")%><br /><br />

H7. Facility Staffing by Discipline<br />
    <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td width="500px">
                Definition:<br />
                FTE: One full time equivalent (FTE) is 2080 hours per year (40 hours per week times 52 weeks). Provide actual FTEs utilized, not the budgeted number of FTEs.
            </td >
            <td width="100px" > &nbsp;
            </td>
        </tr>
        <tr>
            <td width="500px">
                Calculation:<br />
                Total FTEs: Divide paid hours by 2080. Include vacation, sick leave, education leave, and all other time normally compensated by the agency. Categorize your FTEs as you do for the Medicare Hospice Cost Report. Include hourly, salaried and contract staff.
            </td >
            <td width="100px" > &nbsp;
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td>
                &nbsp;
            </td>
            <td>Total Inpatient Facility Employee FTEs
            </td>
            <td>Total Inpatient Staffing Agency FTE</td>
            <td align="center">
                Total Inpatient Facility FTEs
            </td>
        </tr>
        <tr>
            <td>
                <b>Nursing</b><br />
                Include RNs and LPNs
                <br />
                <i>Do <u>not</u> include supervisors or other clinical administrators unless a portion
                    of their time is spent in direct care.</i>
            </td>
            <td align="center">
                <%#Eval("EmpNursing")%>
            </td>
            <td align="center">
                <%#Eval("StaffNursing")%>
            </td>
            <td align="center">
                <%#Eval("FTENursingIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Nursing Practitioner</b><br />
                Include RNs and LPNs
                <br />Include nurses with an advanced degree who function and are licensed as a Nurse Practitioner
            </td>
            <td align="center">
                <%#Eval("EmpNursingPract")%>
            </td>
            <td align="center">
                <%#Eval("StaffNursingPract")%>
            </td>
            <td align="center">
                <%#Eval("FTENursingPractIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Social Services</b>
                <br />
                Include medical social services staff as defined by CMS for the cost report.
                <br />
                <i>Do <u>not</u> include chaplains or bereavement staff</i>
            </td>
            <td align="center">
                <%#Eval("EmpSocialServ")%>
            </td>
            <td align="center">
                <%#Eval("StaffSocialServ")%>
            </td>
            <td align="center">
                <%#Eval("FTESocialIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Hospice Aides</b>
            </td>
            <td align="center">
                <%#Eval("EmpHHA")%>
            </td>
            <td align="center">
                <%#Eval("StaffHHA")%>
            </td>
            <td align="center">
                <%#Eval("FTEHHAIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Physicians – Paid</b><br />
                Include medical directors and other physicians providing direct care to patients
                and participating in clinical support. <i>Exclude volunteer physicians</i>
            </td>
            <td align="center">
                <%#Eval("EmpMD")%>
            </td>
            <td align="center">
                <%#Eval("StaffMD")%>
            </td>
            <td align="center">
                <%#Eval("FTEMDIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Physicians – Volunteer</b>
            </td>
            <td align="center">
                <%#Eval("EmpMDVol")%>
            </td>
            <td align="center">
                <%#Eval("StaffMDVol")%>
            </td>
            <td align="center">
                <%#Eval("FTEMDVolIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Chaplains</b>
            <td align="center">
                <%#Eval("EmpChap")%>
            </td>
            <td align="center">
                <%#Eval("StaffChap")%>
            </td>
            </td>
            <td align="center">
                <%#Eval("FTEChapIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Other Clinical</b>
                <br />
                Include any paid staff in addition to those captured above who provide direct care
                to patients or families. Include therapists, and dietitians.<br />
                <i>Do <u>not</u> include volunteers or bereavement staff.</i>
            </td>
            <td align="center">
                <%#Eval("EmpOtherClinical")%>
            </td>
            <td align="center">
                <%#Eval("StaffOtherClinical")%>
            </td>
            <td align="center">
                <%#Eval("FTEOtherClinicalIF1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Non-Clinical</b>
                <br />
                Include all administrative and general staff or contracted staff.
            </td>
            <td align="center">
                <%#Eval("EmpNonClinical")%>
            </td>
            <td align="center">
                <%#Eval("StaffNonClinical")%>
            </td>
            <td align="center">
                <%#Eval("FTENonClinicalIF1")%>
            </td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr>
            <td>
                <b>Total</b>
            </td>
            <td align="center">
                <%#Eval("EmpTotal")%>
            </td>
            <td align="center">
                <%#Eval("StaffTotal")%>
            </td>
            <td align="center">
                <%#Eval("FTETotal")%>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
</ItemTemplate>

<EmptyDataTemplate> 
Sorry, no data to display.
</EmptyDataTemplate>
</asp:ListView>
                   
                   
                   
                   </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="lblI" runat="server" Text="SECTION I - HOSPICE HOUSE" 
                        Font-Bold="True" Font-Names="Arial" Font-Size="10pt"></asp:Label>
                    <asp:ListView ID="ListView_I" runat="server" DataSourceID="SqlDataSource2" > 
<LayoutTemplate> 
<div style="border:dotted 1px black; font-family: Arial; font-size: 9pt;"> 
<asp:PlaceHolder ID="itemPlaceholder" runat="server" />
</div>
</LayoutTemplate >
<ItemTemplate > 
I1. Facility:&nbsp; <%#Eval("ResName1")%><br />
County:&nbsp; <%# Find_County(Eval("ResCounty1"))%> <br /><br />

I2. Where is the inpatient facility sited?<br />
<%#Find_Sited(Eval("ResSite1"))%>&nbsp; &nbsp; &nbsp; <%#Eval("ResOther_text1")%> <br /><br />

I3. How many beds does the residential facility have?&nbsp;&nbsp;<%#Eval("ResBeds1")%><br /><br />
I3a. Report the number of private rooms at the facility. Private Room (one bed ) &nbsp;&nbsp;<%#Eval("PrivateRoom")%><br /><br />
I3b. Report the number of semi-private rooms at the facility. Semi-Private Room (two beds)  &nbsp;&nbsp;<%#Eval("SemiPrivateRoom")%><br /><br />      
    
I4. Patient Care Services
<table  border="0" cellpadding="0" cellspacing="0" >
                                    
                                    <tr>
                                        <td width="425px" class="style41">
                                            Total Admissions</td>
                                        <td class="style41">
                                         <%#Eval("ResAdmin1")%>
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="425px" class="style41">
                                            Deaths</td>
                                        <td class="style41">
                                        <%#Eval("ResDeaths1")%>
                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="425px">
                                            All Live Discharges</td>
                                        <td>
                                        <%#Eval("ResLiveDis1")%>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td width="425px">
                                            Patients Served</td>
                                        <td>
                                        <%#Eval("ResPats1")%>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td width="425px">
                                            Patient Days for Patients who died or were discharged in FY <%=CurrentYear %></td>
                                        <td>
                                        <%#Eval("ResDays1")%>
                                        </td>
                                    </tr>
                                </table>
                                <br /><br />


I5. Did your program open during This Fiscal Year: <%#Find_Opened(Eval("ResFacYear"))%> <br />
If Yes, Select Month: <%#Eval("ResMonth1")%><br /><br />

I6. Facility Staffing by Discipline<br />
    <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td width="500px">
                Definition:<br />
                FTE: One full time equivalent (FTE) is 2080 hours per year (40 hours per week times 52 weeks). Provide actual FTEs utilized, not the budgeted number of FTEs.
            </td >
            <td width="100px" > &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Calculation:<br />
                Total FTEs: Divide paid hours by 2080. Include vacation, sick leave, education leave, and all other time normally compensated by the agency. Categorize your FTEs as you do for the Medicare Hospice Cost Report. Include hourly, salaried and contract staff.
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" >
        <tr>
            <td>
                &nbsp;
            </td>
            <td align="right">
                Total Hospice House Employee FTEs
            </td>
            <td align="right">
                Total Hospice House Staffing Agency FTEs
            </td>
            <td align="right">
                Total Hospice House FTEs
            </td>
        </tr>
        <tr>
            <td>
                <b>Nursing</b><br />
                Include RNs and LPNs
                <br />
                <i>Do <u>not</u> include supervisors or other clinical administrators unless a portion
                    of their time is spent in direct care.</i>
            </td>
            <td align="right">
                <%#Eval("ResEmpNurs")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffNurs")%>
            </td>
            <td align="right">
                <%#Eval("ResNursFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Nurse Practitioner</b><br />
                Include nurses with an advanced degree who function and are licensed as a Nurse Practitioner.
            </td>
            <td align="right">
                <%#Eval("ResEmpNursPract")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffNursPract")%>
            </td>
            <td align="right">
                <%#Eval("ResNursPractFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Social Services</b>
                <br />
                Include medical social services staff as defined by CMS for the cost report.
                <br />
                <i>Do <u>not</u> include chaplains or bereavement staff</i>
            </td>
            <td align="right">
                <%#Eval("ResEmpSS")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffSS")%>
            </td>
            <td align="right">
                <%#Eval("ResSSFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Hospice Aides</b>
            </td>
            <td align="right">
                <%#Eval("ResEmpHHA")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffHHA")%>
            </td>
            <td align="right">
                <%#Eval("ResHHAFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Physicians – Paid</b><br />
                Include medical directors and other physicians providing direct care to patients
                and participating in clinical support. <i>Exclude volunteer physicians</i>
            </td>
            <td align="right">
                <%#Eval("ResEmpPhy")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffPhy")%>
            </td>
            <td align="right">
                <%#Eval("ResPhyPFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Physicians – Volunteer</b>
            </td>
            <td align="right">
                <%#Eval("ResEmpPhyVol")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffPhyVol")%>
            </td>
            <td align="right">
                <%#Eval("ResPhyVFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Chaplains</b>
            </td>
            <td align="right">
                <%#Eval("ResEmpChap")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffChap")%>
            </td>
            <td align="right">
                <%#Eval("ResChapFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Other Clinical</b>
                <br />
                Include any paid staff in addition to those captured above who provide direct care
                to patients or families. Include therapists, and dietitians.<br />
                <i>Do <u>not</u> include volunteers or bereavement staff.</i>
            </td>
            <td align="right">
                <%#Eval("ResEmpOth")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffOth")%>
            </td>
            <td align="right">
                <%#Eval("ResOthFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Non-Clinical</b>
                <br />
                Include all administrative and general staff or contracted staff.
            </td>
            <td align="right">
                <%#Eval("ResEmpNon")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffNon")%>
            </td>
            <td align="right">
                <%#Eval("ResNonFTE1")%>
            </td>
        </tr>
        <tr>
            <td>
                <b>Total</b>
            </td>
            <td align="right">
                <%#Eval("ResEmpTotal")%>
            </td>
            <td align="right">
                <%#Eval("ResStaffTotal")%>
            </td>
            <td align="right">
                <%#Eval("ResFTETotal")%>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
</ItemTemplate>

<EmptyDataTemplate> 
Sorry, no data to display.
</EmptyDataTemplate>
</asp:ListView>



                   </td>
            </tr>
            <tr>
                <td bgcolor="#CCCCCC">
                    PART 1 - COMMENTS</td>
            </tr>
            <tr>
                <td>
                    Please enter any additional information you would like us to have regarding your 
                    data.
                    <br />
                                <asp:Label ID="comm1_1" runat="server"></asp:Label>
                            <br />
                    <br />
                    If you have any comments or suggestions for future state surveys, please call us 
                    or note them here.<br />
                                <asp:Label ID="comm2_1" runat="server"></asp:Label>
                            </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="2" align="center">
                                <b style="text-align: center">CERTIFICATION HOSPICE SURVEY PART 1</td>
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
                            <td class="style36">
                                </td>
                            <td class="style37">
                                To complete the online survey, you must Certify the information you provided by 
                                reading the following and clicking on the&nbsp; Certify Button</td>
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
                                I hereby certify the following:
                                <ul>
                                <li>I have authorization to complete the Maryland Health Care Commission Hospice Survey;</li>
                                <li>All information contained in this <span class="style35"><strong>Hospice Survey 
                                    Part 1</strong></span> is true, correct and complete to the best of my knowledge 
                                    and belief;</li>
                                <li>No information, data, report, statement, schedule or other filing required to be filed or filed hereunder contains any medical, individual or confidential information personally identifiable to a patient or consumer of health services, whether directly or indirectly;</li>
                                <li>I understand that the Hospice Survey is required to be filed with the Maryland Health Care Commission and is considered a public record which is available for public inspection, unless such disclosure conflicts with the Maryland Health Care Commission’s then existing data disclosure policy.</li>
                                    <li>I understand that the Hospice Survey is not complete until I complete and submit 
                                        Hospice Survey Part 2.</li>
                                </ul>
                                </td>
                            
                        </tr>
                      
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12" align="center">
                                Part 1
                                Date Certified and Submitted:
                                <asp:Label ID="lblCert" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td align="center" class="style12">
                                &nbsp;</td>
                        </tr>
                    </table></td>
            </tr>

        </table>
        <br />

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" Runat="Server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ connectionStrings: ConnectionString %>" 
SelectCommand="SELECT * FROM Inpatient WHERE UserName=@UserName ORDER BY InFacName1">
<selectparameters> 
<asp:ControlParameter ControlID="UserName" Name="UserName" PropertyName="Text" Type="String" />
</selectparameters> 

</asp:SqlDataSource>


<asp:SqlDataSource ID="SqlDataSource2" Runat="Server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ connectionStrings: ConnectionString %>" 
SelectCommand="SELECT * FROM Residential WHERE UserName=@UserName ORDER BY ResName1">
<selectparameters> 
<asp:ControlParameter ControlID="UserName" Name="UserName" PropertyName="Text" Type="String" />
</selectparameters> 

</asp:SqlDataSource>




                 <asp:Label ID="TAge01" runat="server" Style="display: none;" />
        <asp:Label ID="TAge1to4" runat="server" Style="display: none;" />
        <asp:Label ID="TAge5" runat="server" Style="display: none;" />
        <asp:Label ID="TAge15" runat="server" Style="display: none;" />
        <%--<tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                In the table below, please check the type of program(s) you operated or were 
                                planning in FY
                                <asp:Label ID="SY12" runat="server"></asp:Label>
                                .
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>--%>
        <asp:Label ID="TAge0to34" runat="server" Style="display: none;" />
        <asp:Label ID="TAge35" runat="server" Style="display: none;" />
        <asp:Label ID="TAge65" runat="server" Style="display: none;" />
        <asp:Label ID="TAge75" runat="server" Style="display: none;" />
        <asp:Label ID="TAge74" runat="server" Style="display: none;" />
        <asp:Label ID="TAge85" runat="server" Style="display: none;" />
        <asp:Label ID="TAgeTot" runat="server" Style="display: none;" />
        <asp:Label ID="TSexF" runat="server" Style="display: none;" />
        <asp:Label ID="TSexM" runat="server" Style="display: none;" />
        <asp:Label ID="TSexO" runat="server" Style="display: none;" />
        <asp:Label ID="TSexTot" runat="server" Style="display: none;" />
        <asp:Label ID="TEthHispanic" runat="server" visible="False" />
        <asp:Label ID="TEthNonHispanic" runat="server" visible="False" />
        <asp:Label ID="TEthTotal" runat="server" Style="display: none;" />
        <asp:Label ID="TRaceAmInd" runat="server" visible="False" />
        <asp:Label ID="TRaceBlack" runat="server" visible="False" />
        <asp:Label ID="TRaceAsian" runat="server" visible="False"  />
        <asp:Label ID="TRaceHawPacIs" runat="server" visible="False" />
        <asp:Label ID="TRaceWhite" runat="server" visible="False" />
        <asp:Label ID="TRaceMultiracial" runat="server" visible="False" />
        <asp:Label ID="TRaceOther" runat="server" visible="False" />
        <asp:Label ID="TRaceUnknown" runat="server" visible="False" />
        <asp:Label ID="TRaceTot" runat="server" Style="display: none;" />

        <asp:Label ID="TotalCarryoversC1a" runat="server" visible="false" ></asp:Label>
            <asp:Label ID="TotalUndupHomeAdmit" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="TotalHomeAdmit" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="TotalUndupInptAdmit" runat="server" visible="false" ></asp:Label>
            <asp:Label ID="TotalUndupResAdmit" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="TotalUndupNurseAdmit" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="TotalUndupAssistAdmit" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="xAgTotPatsServed" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="xAgTotDeaths" runat="server"  visible="false"></asp:Label>
            <asp:Label ID="xAgTotNonDeaths" runat="server"  visible="false"></asp:Label>

             <asp:Label ID="AgTotReAdmissions" runat="server" visible="False" ></asp:Label>
            <asp:Label ID="AgTotReAdmissionsPrior" runat="server"  visible="False"></asp:Label>
            <asp:Label ID="xTotReferrals" runat="server"  visible="False"></asp:Label>
            <asp:Label ID="TotNDDExProg" runat="server" visible="False" ></asp:Label>
            <asp:Label ID="TotNDDCurative" runat="server"  visible="False"></asp:Label>
            <asp:Label ID="TotNDDTrans" runat="server"  visible="False"></asp:Label>
        <%--<tr>
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
                                    <asp:ListItem Value="2">We are planning a program</asp:ListItem>
                                    <asp:ListItem Value="0">No (If no, skip the remaining questions in this section)</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="vOwnChange0" runat="server" 
                                    ControlToValidate="SerDelProgram" 
                                    ErrorMessage="Hospice service delivery program outside model of Medicare Hospice Benefit" 
                                    Text="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>--%>
            <asp:Label ID="TotNDDOther" runat="server"  visible="False"></asp:Label>
    </form>
</body>
</html>
