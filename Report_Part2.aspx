<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Report_Part2.aspx.vb" Inherits="Report_Part2" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        
        .style23 {color: #FFFFFF}
                 
     
         
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
            width: 65px;
            height: 19px;
        }
         
        table { page-break-inside:auto }
        tr    { page-break-inside:avoid; page-break-after:auto }
        thead { display:table-header-group }
        /*tfoot { display:table-footer-group }*/
         
        </style>
</head>
<body  onkeypress="DisableEnter()" >
    <form id="form1" runat="server">        
        <table cellpadding="5" cellspacing="0" class="style1" align="center" 
                bgcolor="White">
            <tr>
                <td align="center" >Maryland Health Care Commission<br />
                    <span class="style39"><strong>HOSPICE SURVEY&nbsp; PART 2<br />
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
                           <td>User Name <span class="style23">
                               <asp:Label ID="UserName" runat="server" ForeColor="Black" /></span>
                            <br />
                            <asp:Label ID="lblFirstname" runat="server" ForeColor="Black" />&nbsp;<asp:Label ID="lblLastName" 
                                                       runat="server" ForeColor="Black" />
                           </td>
                        </tr>
                    </table>
              </td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td colspan="2" align="left" class="style38">
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
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
                            <td colspan="2" class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                F5.&nbsp;COSTS (PART II)</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="style11">
                                Please provide a summary of cost data you submitted in your FY <asp:Label ID="SY1"
                                    runat="server"></asp:Label> Medicare Cost Report. Enter the data for each 
                                line number (at left) from your Medicare Cost Report Worksheet and Column noted 
                                at the top of each column below. Freestanding, hospital-based and home 
                                health-based hospice cost reports request the same information, but have 
                                different worksheet, column and line references. This survey contains references 
                                for the Free-standing Hospice Cost Report. If your costs are submitted to CMS on 
                                a hospital or home health cost report and you are having difficulty identifying 
                                the appropriate spaces for your responses, please call Jeanne Marie Gawel at 
                                410-764-3337 with any questions concerning the Maryland Hospice survey. If she 
                                is unavailable, you may leave a message for her or email <asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl="mailto:jeanne-marie.gawel@maryland.gov">jeanne-marie.gawel@maryland.gov</asp:HyperLink>
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
                                            BackColor="White" onkeyup="SumCostsA('_3EmpBenefitsA10');"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            4. Administrative and General</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_6AGA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_4AGA10');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            5. Plant Operation and Maintenance</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_3PlantOpA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_5PlantOpA10');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            6. Laundry &amp; Linen Service</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_55LLServA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_6LLServA10');"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            7. Housekeeping</td>
                                        <td class="style36">                                            
                                            <asp:TextBox ID="_56hkeepingA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_7hkeepingA10');"></asp:TextBox>                                            
                                        </td>
                                    </tr>                                    
                                    <tr>
                                        <td width="250px">
                                            8. Dietary</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_57DietaryA10" runat="server" Columns="10" MaxLength="10" 
                                                BackColor="White" onkeyup="SumCostsA('_8DietaryA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_57DietaryB7" runat="server" Columns="10" MaxLength="10" 
                                            BorderColor="White" onkeyup="SumCostsB('_8DietaryB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="250px" class="style38">
                                            9. Nursing Administration</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_58NursAdmA10" runat="server" Columns="10" MaxLength="10" 
                                                BackColor="White" onkeyup="SumCostsA('_9NursAdmA10');"></asp:TextBox>
                                        </td>
                                        <td class="style39">
                                            <asp:TextBox ID="_58NursAdmB7" runat="server" Columns="10" MaxLength="10" 
                                            BackColor="White" onkeyup="SumCostsB('_9NursAdmB7');"></asp:TextBox>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            10. Routine Medical Supplies</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_59RMSA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_10RMSA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_59RMSAB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_10RMSAB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38" width="200px">
                                            11. Medical Records</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_60MedRecA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_11MedRecA10');"></asp:TextBox>
                                        </td>
                                        <td class="style39">
                                            <asp:TextBox ID="_60MedRecB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_11MedRecB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            12. Staff Transportation</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_61TransStaffA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_12TransStaffA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_61TransStaffB7" runat="server" Columns="10" MaxLength="10"
                                            Backcolor="White" onkeyup="SumCostsB('_12TransStaffB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            13.Volunteer Services Coordination</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_62VolServA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                    MaxLength="10" onkeyup="SumCostsA('_13VolServA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_62VolServB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_13VolServB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            14. Pharmarcy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_63PharmA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_14PharmA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_63PharmB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_14PharmB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            15. Physician Administrative Servies</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_64MDASA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_15MDASA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_64MDASB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_15MDASB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            16. Other General Services (specify) 
                                            <asp:TextBox ID="_65OAGServOther" runat="server" Width="200px"></asp:TextBox></td>
                                        <td class="style36">
                                            <asp:TextBox ID="_65OAGServA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_16OAGServA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_65OAGServB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_16OAGServB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            17. Patient/Residential Care Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_66PRCServsA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                                MaxLength="10" onkeyup="SumCostsA('_17PRCServsA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_66PRCServsB7" runat="server" Columns="10" 
                                            MaxLength="10" onkeyup="SumCostsB('_17PRCServsB7');"></asp:TextBox>
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
                                                MaxLength="10" onkeyup="SumCostsA('_25IPCareA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_67IPCareB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_25IPCareB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            26. Physician Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_15MDAA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_26MDAA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_15MDAB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_26MDAB17');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px" class="style42">
                                            27. Nurse Practitioner</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_67NursPractA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_27NursPractA10');"></asp:TextBox>
                                        </td>
                                        <td class="style43">
                                            <asp:TextBox ID="_67NursPractB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_27NursPractB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            28. Registered Nurse</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_68RegNursA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_28RegNursA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_68RegNursB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_28RegNursB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            29. LPN/LVN</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_69LPVNA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_29LPVNA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_69LPVNB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_29LPVNB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            30. Physical Therapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_17PTAA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_30PTAA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_17PTAB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_30PTAB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            31. Occupational Therapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_18OTA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_31OTAA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_18OTB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_31OTAB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            32. Speech/Language Pathology</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_19SLPA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_32SLPA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_19SLPB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_32SLPB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            33. Medical Social Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_20MedSSA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_33MedSSA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_20MedSSB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_33MedSSB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            34. Spiritual Counseling</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_21ChapA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_34ChapA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_21ChapB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_34ChapB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            35. Dietary Counseling</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_22DietA10" runat="server" Columns="10" 
                                            MaxLength="10" BackColor="White" onkeyup="SumCostsA('_35DietA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_22DietB7" runat="server" Columns="10" MaxLength="10" 
                                            BackColor="White" onkeyup="SumCostsB('_35DietB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            36. Counseling - Other</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_23OtherCounsA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_36OtherCounsA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_23OtherCounsB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_36OtherCounsB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            37. Hospice Aide and Homemaker Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_70HAHSA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_37HAHSA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_70HAHSB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_37HAHSB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            38. Durable Medical Equipment/Oxygen</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_30RxBioInfA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_38MEO2A10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_30RxBioInfB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_38MEO2B7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            39. Patient Transportation</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_32PtTransA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_39PtTransA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_32PtTransB7" runat="server" Columns="10" BackColor="White" 
                                            MaxLength="10" onkeyup="SumCostsB('_39PtTransB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            40. Imaging Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_33ImagA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_40ImagA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_33ImagB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_40ImagB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            41. Labs and Diagnostics</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_34LabDiagA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_41LabDiagA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_34LabDiagB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_41LabDiagB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            42. Medical Supplies - Non-routine</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_35MedSupA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_42MedSupA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_35MedSupB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_42MedSupB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            43. Outpatient Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_36OPA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_43OPA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_36OPB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_43OPAB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            44. Palliative Radiation Therapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_71PRTA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_44PRTA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_71PRTB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_44PRTB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            45. Palliative Chemotherapy</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_72PallChemoA10" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsA('_45PallChemoA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_72PallChemoB7" runat="server" Columns="10" BackColor="White"
                                            MaxLength="10" onkeyup="SumCostsB('_45PallChemoB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            46. Other Patient Care Services (specify) 
                                            <asp:TextBox ID="_73OPCSOther" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td class="style36">
                                            <asp:TextBox ID="_73OPCSA10" runat="server" Columns="10" 
                                            MaxLength="10" onkeyup="SumCostsA('_46OPCSA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_73OPCSB7" runat="server" Columns="10" 
                                            MaxLength="10" onkeyup="SumCostsB('_46OPCSB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            50. Continous Home Care</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_83ContHomeCareA10" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsA('_83ContHomeCareA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_83ContHomeCareB7" runat="server" Columns="10"
                                                MaxLength="10" onkeyup="SumCostsB('_83ContHomeCareB7');"></asp:TextBox>
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
                                        <td width="300px">
                                            <b>Non-Reimbursable Cost Centers</b></td>
                                        <td class="style36">
                                            &nbsp;</td>
                                        <td class="style35">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            60. Bereavement Program</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_50BereavA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_60BereavA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_50BereavB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_60BereavB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            61. Volunteer Program</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_51VolA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_61VolA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_51VolB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_61VolB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            62. Fundraising</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_52FundraisA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_62FundraisA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_52FundraisB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_62FundraisB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            63. Hospice/Palliative Medicine Fellows</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_74HPMFA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_63HPMFA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_74HPMFB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_63HPMFB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            64. Palliative Care Program</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_75PCPA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_64PCPA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_75PCPB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_64PCPB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            65. Other Physician Services</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_76MDASA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_65MDASA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_76MDASB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_65MDASB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="300px">
                                            66. Residential Care</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_77ResCareA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_66ResCareA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_77ResCareB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_66ResCareB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            67. Advertising</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_78Advert10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_67Advert10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_78AdvertB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_67AdvertB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            68. Telehealth/Telemonitoring</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_79THTMA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_68THTMA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_79THTMB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_68THTMB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            69. Thrift Store</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_80thriftStA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_69thriftStA10');"></asp:TextBox>
                                        </td>
                                        <td class="style35">
                                            <asp:TextBox ID="_80thriftStB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_69thriftStB7');"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            70. Nursing Facility Room &amp; Board</td>
                                        <td class="style36">
                                            <asp:TextBox ID="_81NursFacRmA10" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsA('_70NursFacRmA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_81NursFacRmB7" runat="server" Columns="10" BackColor="#FFFFFF"
                                            MaxLength="10" onkeyup="SumCostsB('_70NursFacRmB7');"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            71. Other Nonreimbursable (specify) 
                                            <asp:TextBox ID="_82NonReimbOther" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style36">
                                            <asp:TextBox ID="_82NonReimbOtherA10" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsA('_71NonReimbOtherA10');"></asp:TextBox></td>
                                        <td class="style35">
                                            <asp:TextBox ID="_82NonReimbOtherB7" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" onkeyup="SumCostsB('_71NonReimbOtherB7');"></asp:TextBox></td>
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
                            <td class="style15" colspan="2" width="30px" bgcolor="#CCCCCC" valign="top">
                                F5a&nbsp;
                                APPORTIONMENT STATISTICS</td>
                            </tr>
                        <tr>
                            <td colspan="2" class="style11">
                                <b>Part 2 Statistical Data</b></td></tr>                         
                        <tr>
                            <td colspan="2">
                                Please enter the numbers as submitted on your Medicare Cost Report Worksheet S-1, Column 6 on the lines noted</td>
                        </tr> 
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12">

                            </td>
                        </tr>   
                        <tr>
                            <td  colspan="2">
                                <table class="style32a">
                                    <tr>
                                        <td> <strong>Level of Care</strong></td>
                                        <td><strong>Total Days</strong></td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Line 30 - Continuous Home<br /> Care Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRptContHomeCare" runat="server" Columns="10" 
                                                MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="200px">
                                            Line 31 - Routine Home
                                            <br />
                                            Care Days</td>
                                        <td>
                                            <asp:TextBox ID="CostRptRouHomeCare" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
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
                                                Columns="10" MaxLength="10" Height="22px"></asp:TextBox>
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
                            <td class="style15" colspan="2" bgcolor="#CCCCCC" valign="top">
                                F6.&nbsp;PALLIATIVE CARE</td>
                        </tr>                                    
                        <tr>
                            <td colspan="2">Please enter the numbers below for your program for FY <%=CurrentYear %></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Total Palliative Care Visits &nbsp;<asp:TextBox ID="totPallCareVisits" runat="server" BackColor="#FFFFFF" 
                                    Columns="10" MaxLength="10"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="style15" colspan="2" bgcolor="#CCCCCC" valign="top">
                                F7.&nbsp;CONTRACT PER DIEM</td>
                        </tr>
                        <tr>
                            <td cplspan="2" class="style41">
                                Provide the total number of employees and the costs for per diem employees for Fiscal Years <%=PreviousYear %> and <%=CurrentYear %>.</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <th valign="top" style="width:40%">
                                            &nbsp;</th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Contractor Employees FY<%=PreviousYear %>FTEs</th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Cost for Contractor Employees For FY<%=PreviousYear %></th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Contractor Employees FY<%=CurrentYear %>FTEs</th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Cost for Contractor Employees For FY<%=CurrentYear %></th>
                
                                    </tr>
                                    <tr>
                                        <td><b>Nursing</b><br />
                                            Include RNs and LPNs
                                            Do not include supervisors or other clinical administrators unless a 
                                            portion of their time is spent in direct care.</td>
                                        <td><asp:TextBox ID="FTENursingPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostNursingPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTENursingCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostNursingCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Nursing Practitioner</b><br />
                                            Include nurses with an advanced degree who function and are 
                                            licensed as a Nurse Practitioner</td>
                                        <td><asp:TextBox ID="FTENursingPractPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostNursingPractPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTENursingPractCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostNursingPractCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Social Services</b><br />
                                            Include medical social services staff as defined by CMS for the cost report. 
                                            Do not include chaplains or bereavement staff</td>
                                        <td><asp:TextBox ID="FTESocialServPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostSocialServPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTESocialServCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostSocialServCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Hospice Aides</b></td>
                                        <td><asp:TextBox ID="FTEHospAidePY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostHospAidePY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEHospAideCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostHospAideCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Physicians - Paid</b><br />
                                            Include medical directors and other physicians providing direct care to patients 
                                            and participating in clinical support. Exclude volunteer physicians</td>
                                        <td><asp:TextBox ID="FTEMDPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostMDPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEMDCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostMDCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Physicians - Volunteer</b><br /></td>                                            
                                        <td><asp:TextBox ID="FTEMDVolPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostMDVolPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEMDVolCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostMDVolCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Chaplains</b><br /> </td>                                            
                                        <td><asp:TextBox ID="FTEChapPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostChapPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEChapCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostChapCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Other Clinical</b><br />
                                            Include any paid staff in addition to those captured above who provide direct care to patients or families. 
                                            Include therapists, and dietitians. Do not include volunteers or bereavement staff.</td>
                                        <td><asp:TextBox ID="FTEOtherPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostOtherPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEOtherCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostOtherCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Non-Clinical</b><br />
                                           Include all administrative and general staff or contracted staff.</td>
                                        <td><asp:TextBox ID="FTENonClinicPY" CssClass="cssFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostNonClinicPY" CssClass="cssFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTENonClinicCY" CssClass="cssFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostNonClinicCY" CssClass="cssFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Total</b></td>
                                        <td><asp:TextBox ID="FTETotalPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>
                                        <td><asp:TextBox ID="CostTotalPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>
                                        <td><asp:TextBox ID="FTETotalCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>
                                        <td><asp:TextBox ID="CostTotalCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>                                        
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
                            <td class="style15" colspan="2" bgcolor="#CCCCCC" valign="top">
                                F8.&nbsp;CONTRACT PER DIEM - SUPERVISION</td>
                        </tr>
                        <tr>
                            <td cplspan="2" class="style41">
                                Provide the total number of employees and the costs for per diem employees in a 
                                supervisory role for Fiscal Years <%=PreviousYear %> and <%=CurrentYear %>.
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                    <tr>
                                        <th valign="top" style="width:40%">
                                            &nbsp;</th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Contractor Employees FY<%=PreviousYear %>FTEs</th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Cost for Contractor Employees For FY<%=PreviousYear %></th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Contractor Employees FY<%=CurrentYear %>FTEs</th>
                                        <th valign="top" style="width:15%">
                                            Total Per Diem Cost for Contractor Employees For FY<%=CurrentYear %></th>        
                                    </tr>
                                    <tr>
                                        <td><b>Medical Director</b><br /></td>
                                        <td><asp:TextBox ID="FTEMedDirectorPY" CssClass="cssSupFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostMedDirectorPY" CssClass="cssSupFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEMedDirectorCY" CssClass="cssSupFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostMedDirectorCY" CssClass="cssSupFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Administrator</b><br /></td>
                                        <td><asp:TextBox ID="FTEAdminPY" CssClass="cssSupFTEPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostAdminPY" CssClass="cssSupFTECostPY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="FTEAdminCY" CssClass="cssSupFTECY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                        <td><asp:TextBox ID="CostAdminCY" CssClass="cssSupFTECostCY" runat="server" onkeydown="return false" columns="7" MaxLength="10" 
                                            BackColor="#FFFFFF" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Total</b></td>
                                        <td><asp:TextBox ID="FTESupervisionTotalPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>
                                        <td><asp:TextBox ID="CostSupervisionTotalPY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>
                                        <td><asp:TextBox ID="FTESupervisionTotalCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>
                                        <td><asp:TextBox ID="CostSupervisionTotalCY" runat="server" BackColor="#FFFFCC" onkeydown="return false" columns="7" /></td>                                        
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table align="center" cellpadding="0" cellspacing="0" class="style2">
                                    <tr>
                                        <td colspan="2" align="left">
                                            <b style="text-align: center">SECTION G - REVENUE AND PAYER MIX</b></td>
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
                                            Please complete the following for FY <asp:Label ID="SY4" runat="server"></asp:Label>.</td>
                                    </tr>
                                        <tr>
                                            <td class="style11">
                                                &nbsp;</td>
                                            <td class="style12">
                                                &nbsp;</td>
                                    </tr>
                                        <tr>
                                        <td class="style15" width="30px" bgcolor="#CCCCCC" valign="top">
                                            &nbsp;G1.</td>
                                        <td class="style15" bgcolor="#CCCCCC">
                                            LEVEL OF CARE AND PAY SOURCE (PART II)</td>
                                        </tr>
                                    <tr>
                                        <td colspan="2">
                                
                                            <b>Number of Patients Served:</b> Do 
                                            <u>not</u> count re-admissions within the same payment 
                                            source.</td>
                                    </tr>
                                        <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                             
                                                <asp:Label ID="license_type" runat="server" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            Please provide patient days for all patients served, including those in nursing facilities, during FY <asp:Label 
                                                ID="SY5" runat="server" ></asp:Label>. Patients who changed primary pay source during FY <asp:Label 
                                                ID="SY2" runat="server"
                                                ></asp:Label> should be reported with the number of days of care recorded for each pay source (count each day only once even if there is more than one pay source on any given day).</td>
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
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <table class="style32a" border="1" cellpadding="1" cellspacing="0">
                                                <tr>
                                                    <td valign="top" class="style37" colspan="2">
                                                        Hospice Payment Source</td>
                                                    <td valign="top">
                                                        <b>(1)<br /> Number of Patients Served</b></td>
                                                    <td class="style35" valign="top">
                                                        <b>(2)<br /> Days of Routine Home Care<br /> </b>
                                                        </td>
                                                    <td class="style40" valign="top">
                                                        (3)<br /> Days of Inpatient Care</td>
                                                    <td class="style40" valign="top">
                                                        (4)<br /> Days of Respite Care</td>
                                                    <td class="style40" valign="top">
                                                        (5)<br /> Days of Continuous Care</td>
                                                    <td class="style40" valign="top">
                                                        (6)<br /> Total Patient Care Days</td>
                                                </tr>
                                                <tr>
                                                    <td width="250px" colspan="2">
                                                        a. Hospice Medicare</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="HospMedicarePatients" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                                MaxLength="10" onkeyup="SumTotPayerPats('HospMedicarePatients');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator1" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('HospMedicareDays');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator13" runat="server" 
                                        ClientValidationFunction="CheckMedicareDays" ErrorMessage="Please enter number of patient days (Medicare).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator25" runat="server" 
                                        ClientValidationFunction="Summedicare" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style38" colspan="2">
                                                        b. Hospice General Medicaid</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="HospMedicaidPatients" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('HospMedicaidPatients');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator2" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('HospMedicaidDays');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator14" runat="server" 
                                        ClientValidationFunction="CheckMedicaidDays" ErrorMessage="Please enter number of patient days (General Medicaid).">*</asp:CustomValidator>--%><%--<asp:CustomValidator ID="CustomValidator26" runat="server" 
                                        ClientValidationFunction="Summedicaid" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="style38" width="200px" colspan="2">
                                                        c. Hospice Medicaid MCO</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="MediMCOPats" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('MediMCOPats');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator3" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('MediMCODays');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator15" runat="server" 
                                        ClientValidationFunction="CheckMediMCODays" ErrorMessage="Please enter number of patient days (Medicaid MCO).">*</asp:CustomValidator>--%><%--<asp:CustomValidator ID="CustomValidator27" runat="server" 
                                        ClientValidationFunction="SumMediMCODaysCheck" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%>  </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style38" colspan="2">
                                                        d. Total Managed Care or Private Insurance (do not include Blue Cross)</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ComServed" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator4" runat="server" 
                                        ClientValidationFunction="CheckComPats" ErrorMessage="Please enter number of patients served (Commercial Insurance).">*</asp:CustomValidator>
                                                        <asp:CustomValidator ID="CustomValidator44" runat="server" 
                                        ClientValidationFunction="SumcomManServed" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%></td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComRoutine" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator45" runat="server" 
                                        ClientValidationFunction="SumcomManRoutine" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                        </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComInpatient" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator46" runat="server" 
                                        ClientValidationFunction="SumcomManInpatient" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                        </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComRespite" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator47" runat="server" 
                                        ClientValidationFunction="SumcomManRespite" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                        </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComContinuous" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator48" runat="server" 
                                        ClientValidationFunction="SumcomManContinuous" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%>
                                                        </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="ComTot" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator16" runat="server" 
                                        ClientValidationFunction="CheckComDays" ErrorMessage="Please enter number of patient days (Commercial Insurance).">*</asp:CustomValidator>
                                                            <asp:CustomValidator ID="CustomValidator28" runat="server" 
                                        ClientValidationFunction="Sumcom" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator><asp:CustomValidator ID="CustomValidator49" runat="server" 
                                        ClientValidationFunction="SumcomManTot" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Commercial Insurance, for each column of section G1.">*</asp:CustomValidator>--%></td>
                                                </tr>
                                                <tr>
                                                    <td width="10px" >
                                                        </td>
                                                    <td width="200px">
                                                        d1. Commercial Non-Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ComNonMCOServed" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('ComNonMCOServed');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator5" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('ComNonMCOTot');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator17" runat="server" 
                                        ClientValidationFunction="CheckComNonMCODays" ErrorMessage="Please enter number of patient days (Non-MCO Commercial Insurance).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator29" runat="server" 
                                        ClientValidationFunction="SumcomNmco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%></td>
                                                </tr>
                                                <tr>
                                                    <td width="10px" >
                                                        </td>
                                                    <td width="200px">
                                                        d2. Commercial Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ComMCOServed" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('ComMCOServed');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator6" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('ComMCOTot');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator18" runat="server" 
                                        ClientValidationFunction="CheckComMCODays" ErrorMessage="Please enter number of patient days (MCO Commercial Insurance).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator30" runat="server" 
                                        ClientValidationFunction="SumcomMco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2">
                                                        e. Total Blue Cross</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="BlueServed" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator7" runat="server" 
                                        ClientValidationFunction="CheckBluePats" ErrorMessage="Please enter number of patients served (Blue Cross).">*</asp:CustomValidator>--%>
                                                <%--   <asp:CustomValidator ID="CustomValidator38" runat="server" 
                                        ClientValidationFunction="SumblueManServed" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%></td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueRoutine" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator39" runat="server" 
                                        ClientValidationFunction="SumblueManRoutine" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator>--%> 
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueInpatient" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator40" runat="server" 
                                        ClientValidationFunction="SumblueManInpatient" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueRespite" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator41" runat="server" 
                                        ClientValidationFunction="SumblueManRespite" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueContinuous" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /> <%--<asp:CustomValidator ID="CustomValidator42" runat="server" 
                                        ClientValidationFunction="SumblueManContinuous" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="BlueTot" runat="server" BackColor="#FFFFCC" Columns="10" 
                                                            MaxLength="10" onkeydown="return false"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator19" runat="server" 
                                        ClientValidationFunction="CheckBlueDays" ErrorMessage="Please enter number of patient days (Blue Cross).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator31" runat="server" 
                                        ClientValidationFunction="Sumblue" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator><asp:CustomValidator ID="CustomValidator43" runat="server" 
                                        ClientValidationFunction="SumblueManTot" ErrorMessage="Please be sure that the sum of Managed Care + Non-Managed Care matches the total entered for Total Blue Cross, for each column of section G1.">*</asp:CustomValidator> --%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="10px">
                                                        </td>
                                                    <td width="200px">
                                                        e1. Blue Cross Non-Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="BlueNonMCOServed" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('BlueNonMCOServed');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator8" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('BlueNonMCOTot');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator20" runat="server" 
                                        ClientValidationFunction="CheckBlueNonMCODays" ErrorMessage="Please enter number of patient days (Non-MCO Blue Cross).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator32" runat="server" 
                                        ClientValidationFunction="SumblueNmco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>  --%></td>
                                                </tr>
                                                <tr>
                                                    <td width="10px" >
                                                        </td>
                                                    <td width="200px">
                                                        e2. Blue Cross Managed Care Organization</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="BlueMCOServed" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('BlueMCOServed');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator9" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('BlueMCOTot');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator21" runat="server" 
                                        ClientValidationFunction="CheckBlueMCODays" ErrorMessage="Please enter number of patient days (MCO Blue Cross).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator33" runat="server" 
                                        ClientValidationFunction="SumblueMco" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style38" colspan="2">
                                                        f. Self Pay</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="SelfPayPatients" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('SelfPayPatients');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator10" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('SelfPayDays');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator22" runat="server" 
                                        ClientValidationFunction="CheckSelfDays" ErrorMessage="Please enter number of patient days (Self Pay).">*</asp:CustomValidator>
                                                        <asp:CustomValidator ID="CustomValidator34" runat="server" 
                                        ClientValidationFunction="Sumself" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator>--%></td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2">
                                                        g1. Uncompensated Care</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="UnChPats" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('UnChPats');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator11" runat="server" 
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
                                                            MaxLength="10" onkeyup="SumTotPayerDays('UnChDays');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator23" runat="server" 
                                        ClientValidationFunction="CheckUncompDays" ErrorMessage="Please enter number of patient days (Uncompenstated).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator35" runat="server" 
                                        ClientValidationFunction="SumUnChDaysCheck" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2" class="style42">
                                                        g2. Charity Care</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="ChyPats" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('ChyPats');"></asp:TextBox>
                                                    </td>
                                                    <td class="style43">
                                                        <asp:TextBox ID="ChyRoutine" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumRoutineDays('ChyRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style43">
                                                        <asp:TextBox ID="ChyInpat" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumInpatientDays('ChyInpat');"></asp:TextBox>
                                                    </td>
                                                    <td class="style43">
                                                        <asp:TextBox ID="ChyRespite" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumRespiteDays('ChyRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style43">
                                                        <asp:TextBox ID="ChyCont" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumContinuousDays('ChyCont');"></asp:TextBox>
                                                    </td>
                                                    <td class="style43">
                                                        <asp:TextBox ID="ChyDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerDays('ChyDays');"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" colspan="2">
                                                        h. Other*</td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="OtherPatients" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerPats('OtherPatients');"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator12" runat="server" 
                                        ClientValidationFunction="CheckOtherPats" ErrorMessage="Please enter number of patients served (Other).">*</asp:CustomValidator>--%>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherRoutine" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumRoutineDays('OtherRoutine');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherInpatient" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumInpatientDays('OtherInpatient');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherRespite" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumRespiteDays('OtherRespite');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherContinuous" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumContinuousDays('OtherContinuous');"></asp:TextBox>
                                                    </td>
                                                    <td class="style35">
                                                        <asp:TextBox ID="OtherDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="SumTotPayerDays('OtherDays');"></asp:TextBox><br /><%--<asp:CustomValidator ID="CustomValidator24" runat="server" 
                                        ClientValidationFunction="CheckOtherDays" ErrorMessage="Please enter number of patient days (Other).">*</asp:CustomValidator>
                                                    <asp:CustomValidator ID="CustomValidator36" runat="server" 
                                        ClientValidationFunction="Sumothpriv" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%> </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style37" colspan="2" bgcolor="#FFFFCC">
                                                        i. TOTALS
                                                        <asp:CustomValidator ID="vG1" runat="server" 
                                                            ClientValidationFunction="G1Complete" 
                                                
                                                            ErrorMessage="Section G1 - I1.TOTAL Number of Patients Served and I6.TOTAL Patient Care Days may not be zero.">*</asp:CustomValidator>
                                                        </td>
                                                    <td class="style36">
                                                        <asp:TextBox ID="TotHospPatients" runat="server" BackColor="#FFFFCC"  
                                                            onkeydown="return false" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelRoutine" runat="server" BackColor="#FFFFCC"  
                                                            onkeydown="return false" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelInpatient" runat="server" BackColor="#FFFFCC"  
                                                            onkeydown="return false" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelRespite" runat="server" BackColor="#FFFFCC"  
                                                            onkeydown="return false" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="LevelContinuous" runat="server" BackColor="#FFFFCC"  
                                                            onkeydown="return false" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td class="style39">
                                                        <asp:TextBox ID="TotHospDays" runat="server" BackColor="#FFFFCC"  
                                                            onkeydown="return false" Columns="10" 
                                                            MaxLength="10"></asp:TextBox>
                                                        <br /><%--<asp:CustomValidator ID="CustomValidator37" runat="server" 
                                        ClientValidationFunction="Sumtot" ErrorMessage="Please be sure that the sum of Routine, Inpatient, Respite, and Continuous Care Days matches the entered total for each payer.">*</asp:CustomValidator> --%>
                                                    </td>
                                                </tr>
                                                </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            *Other Payer Source may include but is not limited to Workers Comp, donations, etc.
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
                                            &nbsp;G2</td>
                                        <td class="style15" bgcolor="#CCCCCC">
                                            REVENUE (PART II)</td>
                                        </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            This question does not correspond to cost centers in the Cost Report, therefore 
                                            base responses on your accounting records, not your Cost Report submission. 
                                            Responses should reflect gross revenue for FY <asp:Label ID="SY3" runat="server"></asp:Label>.</td>
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
                                            <b>Hospice Service</b> </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <U>Revenue:</U> Payment for services. Include all Medicare per diem payments for all 
                                            levels of care, Medicaid, private insurance and private pay.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <U>Expenses:</U> Related to service delivery. Include reimbursable and non-reimbursable 
                                            (bereavement and volunteer) program services.</td>
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
                                            <B>Total Agency Fundraising</B></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <U>Revenue:</U> Include grants, fundraising including capital campaign funds, bequests, 
                                            memorial donations, United Way and other community support, as well as transfers 
                                            from your hospice foundation, if any.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <U>Expenses:</U> Include any expenses related to fundraising.</td>
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
                                            <b> Other</b></td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <U>Revenue:</U> Include revenue from palliative care, non-hospice patient care and 
                                            other community services, nursing home room and board and pass-through costs, as 
                                            well as interest or investment income.</td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <U>Expenses:</U> Related to palliative care, non-hospice patient care, and other 
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
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            &nbsp;</td>
                                    </tr>
                                    <%--<tr>
                                        <td class="style11">
                                            &nbsp;</td>
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
                                                    <td width="200px" class="style41">
                                                        Hospice Service</td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="HospServRev" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('HospServRev');"></asp:TextBox>
                                                    </td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="HospServExp" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('HospServExp');"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px" class="style41">
                                                        Total Agency Fundraising</td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="TotAgFundRev" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('TotAgFundRev');"></asp:TextBox>
                                                    </td>
                                                    <td class="style41">
                                                        <asp:TextBox ID="TotAgFundExp" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10" onkeyup="checkdouble('TotAgFundExp');"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px">
                                                        Other</td>
                                                    <td>
                                                        <asp:TextBox ID="OtherAgRev" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('OtherAgRev');"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="OtherAgExp" runat="server" BackColor="#FFFFFF" 
                                                            Columns="10" MaxLength="10" onkeyup="checkdouble('OtherAgExp');"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="200px">
                                                        Overhead Expenses (administrative and general)</td>
                                                    <td>
                                                        NA</td>
                                                    <td>
                                                        <asp:TextBox ID="OverheadExp" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('OverheadExp');"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                            </td>
                                    </tr> 
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            </td>
                                    </tr>                      
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            <table border="1" cellpadding="0" cellspacing="0" class="style32a">
                                                <tr>
                                                    <td width="300px">
                                                        <b> Total Revenue </b><br />(include earned revenues, fundraising allocation from endowment, 
                                                        and other fundraising)</td>
                                                    <td>
                                                        <asp:TextBox ID="LLRevenue" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('LLRevenue');"></asp:TextBox>
                                                        <br />
                                                        <asp:RequiredFieldValidator ID="vLL" runat="server" 
                ControlToValidate="LLRevenue" ErrorMessage="Please answer the Total Revenue question." Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="300px">
                                                        Total Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="LLExpenses" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                            MaxLength="10" onkeyup="checkdouble('LLExpenses');"></asp:TextBox><br />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="LLExpenses" ErrorMessage="Please answer the Total Expenses question." Text="*"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr> --%> 
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
                                                    <td>
                                                        <asp:TextBox ID="MedicareRevPY" CssClass="clsHospSvcRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="MedicareExpPY" CssClass="clsHospSvcExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="MedicareRevCY" CssClass="clsHospSvcRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="MedicareExpCY" CssClass="clsHospSvcExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Medicaid</td>
                                                    <td>
                                                        <asp:TextBox ID="MedicaidRevPY" CssClass="clsHospSvcRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="MedicaidExpPY" CssClass="clsHospSvcExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="MedicaidRevCY" CssClass="clsHospSvcRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="MedicaidExpCY" CssClass="clsHospSvcExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Commercial Insurance</td>
                                                    <td>
                                                        <asp:TextBox ID="InsRevPY" CssClass="clsHospSvcRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="InsExpPY" CssClass="clsHospSvcExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="InsRevCY" CssClass="clsHospSvcRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="InsExpCY" CssClass="clsHospSvcExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF"  />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Self Pay</td>
                                                    <td>
                                                        <asp:TextBox ID="SelfPayRevPY" CssClass="clsHospSvcRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="SelfPayExpPY" CssClass="clsHospSvcExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="SelfPayRevCY" CssClass="clsHospSvcRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="SelfPayExpCY" CssClass="clsHospSvcExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Hospice Service - Other Government</td>
                                                    <td>
                                                        <asp:TextBox ID="OthGovtRevPY" CssClass="clsHospSvcRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="OthGovtExpPY" CssClass="clsHospSvcExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="OthGovtRevCY" CssClass="clsHospSvcRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="OthGovtExpCY" CssClass="clsHospSvcExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Hospice Service Revenue and Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="TotalHospServRevPY" CssClass="clsRevPY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalHospServExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TotalHospServRevCY" CssClass="clsRevCY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalHospServExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Agency Fundraising Revenue and Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="TotalAgFundRevPY" CssClass="clsRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalAgFundExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TotalAgFundRevCY" CssClass="clsRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalAgFundExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Other Revenue and Expenses (exclude Charity Care)</td>
                                                    <td>
                                                        <asp:TextBox ID="TotalOtherRevPY" CssClass="clsRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalOtherExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TotalOtherRevCY" CssClass="clsRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalOtherExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Charity Care Revenue and Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="TotalCharityRevPY" CssClass="clsRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalCharityExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TotalCharityRevCY" CssClass="clsRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="TotalCharityExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Dollar Spent on Staff Education Expenses</td>
                                                    <td></td>                                                                                            
                                                    <td>
                                                        <asp:TextBox ID="TotalStaffEduExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td></td>                                                                                            
                                                    <td>
                                                        <asp:TextBox ID="TotalStaffEduExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Dollar Spent on Patients without Insurance</td>
                                                    <td></td>                                                                                            
                                                    <td>
                                                        <asp:TextBox ID="TotalNoInsExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td></td>                                                                                            
                                                    <td>
                                                        <asp:TextBox ID="TotalNoInsExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Overhead Expenses (administrative and general)</td>
                                                    <td></td>                                                                                            
                                                    <td>
                                                        <asp:TextBox ID="TotalOverExpPY" CssClass="clsExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td></td>                                                                                            
                                                    <td>
                                                        <asp:TextBox ID="TotalOverExpCY" CssClass="clsExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Revenue and Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="GrandTotalRevPY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>                                                                          
                                                    <td>
                                                        <asp:TextBox ID="GrandTotalExpPY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="GrandTotalRevCY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>                                                                          
                                                    <td>
                                                        <asp:TextBox ID="GrandTotalExpCY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
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
                                                    <td>
                                                        <asp:TextBox ID="FinCashPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinCashCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Revenue<br />
                                                        Include all revenues, including earned revenue, fundraising, 
                                                        and allocation from endowment or other fundraising.
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="FinTotalRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinTotalRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Expenses<br />Include all expenses.
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="FinTotalExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinTotalExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Bad Debts (Allowances and Adjustments)<br />Includes patients without insurance
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="FinBadDebtPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinBadDebtCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Net Income
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="FinNetIncomePY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinNetIncomeCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Debt Service Coverage Ratio
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="FinDebtCoverRatioPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinDebtCoverRatioCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Adjusted EBITDA<br />Earnings before income, taxes, depreciation, and amortization.
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="FinAdjEBITDAPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td> 
                                                    <td>
                                                        <asp:TextBox ID="FinAdjEBITDACY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
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
                                                    <td>
                                                        <asp:TextBox ID="PalMedicareRevPY" CssClass="clsPalCareRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalMedicareExpPY" CssClass="clsPalCareExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF"/>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="PalMedicareRevCY" CssClass="clsPalCareRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalMedicareExpCY" CssClass="clsPalCareExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Medicaid</td>
                                                    <td>
                                                        <asp:TextBox ID="PalMedicaidRevPY" CssClass="clsPalCareRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalMedicaidExpPY" CssClass="clsPalCareExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="PalMedicaidRevCY" CssClass="clsPalCareRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalMedicaidExpCY" CssClass="clsPalCareExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Commercial Insurance</td>
                                                    <td>
                                                        <asp:TextBox ID="PalInsRevPY" CssClass="clsPalCareRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalInsExpPY" CssClass="clsPalCareExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="PalInsRevCY" CssClass="clsPalCareRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalInsExpCY" CssClass="clsPalCareExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Self Pay</td>
                                                    <td>
                                                        <asp:TextBox ID="PalSelfPayRevPY" CssClass="clsPalCareRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalSelfPayExpPY" CssClass="clsPalCareExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="PalSelfPayRevCY" CssClass="clsPalCareRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalSelfPayExpCY" CssClass="clsPalCareExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Palliative Care - Other Government</td>
                                                    <td>
                                                        <asp:TextBox ID="PalOthGovtRevPY" CssClass="clsPalCareRevPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalOthGovtExpPY" CssClass="clsPalCareExpPY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="PalOthGovtRevCY" CssClass="clsPalCareRevCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>                                        
                                                    <td>
                                                        <asp:TextBox ID="PalOthGovtExpCY" CssClass="clsPalCareExpCY" runat="server" onkeydown="return false" columns="10" MaxLength="10" 
                                                            BackColor="#FFFFFF" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Palliative Care Revenue and Expenses</td>
                                                    <td>
                                                        <asp:TextBox ID="PalTotalHospServRevPY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>                                                                          
                                                    <td>
                                                        <asp:TextBox ID="PalTotalHospServExpPY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="PalTotalHospServRevCY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
                                                    </td>                                                                          
                                                    <td>
                                                        <asp:TextBox ID="PalTotalHospServExpCY" runat="server" onkeydown="return false" BackColor="#FFFFCC"  columns="10" />
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
                                            &nbsp;G3</td>
                                        <td class="style15" bgcolor="#CCCCCC">
                                            RECEIVABLES MANAGEMENT</td>
                                        </tr>
                                    <tr>
                                        <td colspan="2">
                                            Please provide the number of days your revenue is outstanding in accounts receivable. Multiply the total accounts receivable on the last day of your fiscal year by 365 and divide by your total Hospice Service Revenue.</td>
                                    </tr>  
                                    <tr>
                                        <td class="style11">
                                            &nbsp;</td>
                                        <td class="style12">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="style12">
                                            Average Days Revenue Outstanding (A/R Days):
                                            <asp:TextBox ID="ARDays" runat="server" BackColor="#FFFFFF" Columns="10" 
                                                MaxLength="10" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="vARDays" runat="server" 
                ControlToValidate="ARDays" ErrorMessage="Please answer the Average Days Revenue." Text="*"></asp:RequiredFieldValidator>

                                            <asp:RangeValidator ID="rARDays" runat="server" 
                                                ControlToValidate="ARDays" 
                                                ErrorMessage="G3. Average Days Revenue Outstanding may not be zero." 
                                                MaximumValue="1000000" MinimumValue=".01" Type="Double">*</asp:RangeValidator>

                                            <br />

                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblSectionH" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" >
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15" colspan="2" bgcolor="#CCCCCC" valign="top">
                                PART 2 - COMMENTS</td>
                        </tr>
                        <tr>
                            <td colspan="2" align="left">
                                Please enter any additional information you would like us to have regarding your 
                                data.<br />
                                <asp:Label ID="comm1_2" runat="server"></asp:Label>
                                <br />
                                If you have any comments or suggestions for future state surveys, please call us or note them here.
                                <br />
                                <asp:Label ID="comm2_2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <b style="text-align: center">CERTIFICATION HOSPICE SURVEY PART 2</b></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">                                
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
                            <td colspan="2" class="style12">
                                I hereby certify the following:
                                <ul>
                                <li>I have authorization to complete the Maryland Health Care Commission Hospice Survey;</li>
                                <li>All information contained in this <span class="style35"><strong>Hospice Survey 
                                    Part 2</strong></span> is true, correct and complete to the best of my knowledge 
                                    and belief;</li>
                                <li>No information, data, report, statement, schedule or other filing required to be filed or filed hereunder contains any medical, individual or confidential information personally identifiable to a patient or consumer of health services, whether directly or indirectly;</li>
                                <li>I understand that the Hospice Survey is required to be filed with the Maryland Health Care Commission and is considered a public record which is available for public inspection, unless such disclosure conflicts with the Maryland Health Care Commission’s then existing data disclosure policy.</li>
                                </ul>
                                </td>
                            
                        </tr>                      
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style12" align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Part 2
                                Date Certified and Submitted:
                                <asp:Label ID="lblCert" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>