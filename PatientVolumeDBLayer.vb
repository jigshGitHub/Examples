Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Namespace Mhcc.Hospice
    Public Class PatientVolumeDBLayer
        Private dbOperationManager As DBOperationManager
        Private commandParams As DBCommandParams = New DBCommandParams()
        Public Sub New()
            dbOperationManager = New DBOperationManager()
        End Sub

        Public Function GetByUserName(userName As String) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = userName
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_ByUserName"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function
        Public Function GetC1AByQID(qid As Integer) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "QID"
            cmdParamStruct.value = qid
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_c1a_ByQID"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function
        Public Function GetC1AByUserName(userName As String) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = userName
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_c1a_ByUserName"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function

        Public Function GetC1BByUserName(userName As String) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = userName
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_c1b_ByUserName"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function
        Public Function GetC2ByUserName(userName As String) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = userName
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_c2_ByUserName"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function
        Public Function GetC1AByUserNameNCounty(userName As String, county As String) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = userName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "County"
            cmdParamStruct.value = county
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_c1a_ByUserNameNCounty"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function
        Public Function GetC1BByUserNameNCounty(userName As String, county As String) As SqlDataReader
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = userName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "County"
            cmdParamStruct.value = county
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "GetPatientVolume_c1b_ByUserNameNCounty"

            dbOperationManager.ExecuteReader(commandParams)
            Return dbOperationManager.SQLDataReader
        End Function
        Public Sub InsertPatientVolume_FromC1A(UserName As String, TotalCarryovers As Integer,
            TotalUndupHomeAdmit As Integer,
            TotalUndupInptAdmit As Integer,
            TotalUndupResAdmit As Integer,
            TotalUndupNurseAdmit As Integer,
            TotalUndupAssistAdmit As Integer,
            AgTotPatsServed As Integer,
            AgTotDeaths As Integer,
            AgTotNonDeaths As Integer)
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = UserName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalUndupHomeAdmit"
            cmdParamStruct.value = TotalUndupHomeAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalCarryovers"
            cmdParamStruct.value = TotalCarryovers
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalUndupInptAdmit"
            cmdParamStruct.value = TotalUndupInptAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalUndupResAdmit"
            cmdParamStruct.value = TotalUndupResAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalUndupNurseAdmit"
            cmdParamStruct.value = TotalUndupNurseAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalUndupAssistAdmit"
            cmdParamStruct.value = TotalUndupAssistAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "AgTotPatsServed"
            cmdParamStruct.value = AgTotPatsServed
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "AgTotDeaths"
            cmdParamStruct.value = AgTotDeaths
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "AgTotNonDeaths"
            cmdParamStruct.value = AgTotNonDeaths
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "InsertPatientVolume_FromC1A"

            dbOperationManager.ExecuteNonQuery(commandParams)
        End Sub

        Public Sub InsertPatientVolume_FromC1B(UserName As String,
            AgTotReAdmissions As Integer,
            AgTotReAdmissionsPrior As Integer,
            TotNDDExProg As Integer,
            TotNDDCurative As Integer,
            TotNDDTrans As Integer,
            TotNDDOther As Integer)
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = UserName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "AgTotReAdmissions"
            cmdParamStruct.value = AgTotReAdmissions
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "AgTotReAdmissionsPrior"
            cmdParamStruct.value = AgTotReAdmissionsPrior
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotNDDExProg"
            cmdParamStruct.value = TotNDDExProg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotNDDCurative"
            cmdParamStruct.value = TotNDDCurative
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotNDDTrans"
            cmdParamStruct.value = TotNDDTrans
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotNDDOther"
            cmdParamStruct.value = TotNDDOther
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "InsertPatientVolume_FromC1B"

            dbOperationManager.ExecuteNonQuery(commandParams)
        End Sub
        Public Sub InsertPatientVolume_c1a(UserName As String, County As String, txtcounty As String, Carryovers As Integer,
                UndupHomeAdmit As Integer, UndupInptAdmit As Integer, UndupResAdmit As Integer, UndupNurseAdmit As Integer,
                UndupAssistAdmit As Integer, Patients As Integer, Deaths As Integer, NonDeathDischarges As Integer)
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = UserName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "County"
            cmdParamStruct.value = County
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "txtcounty"
            cmdParamStruct.value = txtcounty
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "Carryovers"
            cmdParamStruct.value = Carryovers
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UndupHomeAdmit"
            cmdParamStruct.value = UndupHomeAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UndupInptAdmit"
            cmdParamStruct.value = UndupInptAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UndupResAdmit"
            cmdParamStruct.value = UndupResAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UndupNurseAdmit"
            cmdParamStruct.value = UndupNurseAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UndupAssistAdmit"
            cmdParamStruct.value = UndupAssistAdmit
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "Patients"
            cmdParamStruct.value = Patients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "Deaths"
            cmdParamStruct.value = Deaths
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "NonDeathDischarges"
            cmdParamStruct.value = NonDeathDischarges
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "InsertPatientVolume_c1a"

            dbOperationManager.ExecuteNonQuery(commandParams)
        End Sub

        Public Sub InsertPatientVolume_c1b(UserName As String, County As String, txtcounty As String,
                                        TotReAdmissions As Integer, TotReAdmissionsPrior As Integer, NDDExProg As Integer,
                                        NDDCurative As Integer, NDDTrans As Integer, NDDOther As Integer)
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = UserName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "County"
            cmdParamStruct.value = County
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "txtcounty"
            cmdParamStruct.value = txtcounty
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotReAdmissions"
            cmdParamStruct.value = TotReAdmissions
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotReAdmissionsPrior"
            cmdParamStruct.value = TotReAdmissionsPrior
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "NDDExProg"
            cmdParamStruct.value = NDDExProg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "NDDCurative"
            cmdParamStruct.value = NDDCurative
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "NDDTrans"
            cmdParamStruct.value = NDDTrans
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "NDDOther"
            cmdParamStruct.value = NDDOther
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "InsertPatientVolume_c1b"

            dbOperationManager.ExecuteNonQuery(commandParams)
        End Sub

        Public Sub InsertPatientVolume_c2(UserName As String, TotReferrals As Integer, RefSourceMD As Integer,
                                           RefSourceHosp As Integer, RefSourceNF As Integer, RefSourceALF As Integer,
                                           RefSourceHH As Integer, RefSourceSelf As Integer, RefSourceOther As Integer,
                                           ADC As Double, ALOS As Double, MLOS As Double, Died7 As Double, Died180 As Double,
                                           RefSourceOtherSpecify As String, PalCareProvider As String, IsSocialDetermin As String, IsHousing As String, HousingOrg As String, IsFood As String,
                                            IsFoodOrg As String, IsTransport As String, IsTransportOrg As String, IsUtilities As String, IsUtilitiesOrg As String, IsInterSafety As String,
                                            IsInterSafetyOrg As String, IsSocialIsolation As String, IsSocialIsolationOrg As String, IsLiteracy As String, IsLiteracyOrg As String, IsSocialNeedOther As String,
                                            SocialNeedOtherSpec As String, IsSocialNeedOtherOrg As String,
                                            IsClinical As String, ClinicalPatients As String, IsFamilyPref As String, FamilyPrefPatients As String, IsAdminBarrier As String,
                                            AdminBarrierPatients As String, IsDied As String, DiedPatients As String, IsFinancial As String, FinancialPatients As String,
                                            TotalForgonePatients As String, Died179 As String, NoInsurancePatients As String, OccupancyRate As String
                                        )
            commandParams = New DBCommandParams()
            Dim cmdParamStruct As CmdParamStruct

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "UserName"
            cmdParamStruct.value = UserName
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotReferrals"
            cmdParamStruct.value = TotReferrals
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceMD"
            cmdParamStruct.value = RefSourceMD
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceHosp"
            cmdParamStruct.value = RefSourceHosp
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceNF"
            cmdParamStruct.value = RefSourceNF
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceALF"
            cmdParamStruct.value = RefSourceALF
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceHH"
            cmdParamStruct.value = RefSourceHH
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceSelf"
            cmdParamStruct.value = RefSourceSelf
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceOther"
            cmdParamStruct.value = RefSourceOther
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "ADC"
            cmdParamStruct.value = ADC
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "ALOS"
            cmdParamStruct.value = ALOS
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "MLOS"
            cmdParamStruct.value = MLOS
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "Died7"
            cmdParamStruct.value = Died7
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "Died180"
            cmdParamStruct.value = Died180
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "RefSourceOtherSpecify"
            cmdParamStruct.value = RefSourceOtherSpecify
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "PalCareProvider"
            cmdParamStruct.value = PalCareProvider
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsSocialDetermin"
            cmdParamStruct.value = IsSocialDetermin
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsHousing"
            cmdParamStruct.value = IsHousing
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "HousingOrg"
            cmdParamStruct.value = HousingOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsFood"
            cmdParamStruct.value = IsFood
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsFoodOrg"
            cmdParamStruct.value = IsFoodOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsTransport"
            cmdParamStruct.value = IsTransport
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsTransportOrg"
            cmdParamStruct.value = IsTransportOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.value = IsUtilities
            cmdParamStruct.name = "IsUtilities"
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsUtilitiesOrg"
            cmdParamStruct.value = IsUtilitiesOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsInterSafety"
            cmdParamStruct.value = IsInterSafety
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsInterSafetyOrg"
            cmdParamStruct.value = IsInterSafetyOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsSocialIsolation"
            cmdParamStruct.value = IsSocialIsolation
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsSocialIsolationOrg"
            cmdParamStruct.value = IsSocialIsolationOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsLiteracy"
            cmdParamStruct.value = IsLiteracy
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsLiteracyOrg"
            cmdParamStruct.value = IsLiteracyOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsSocialNeedOther"
            cmdParamStruct.value = IsSocialNeedOther
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "SocialNeedOtherSpec"
            cmdParamStruct.value = SocialNeedOtherSpec
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsSocialNeedOtherOrg"
            cmdParamStruct.value = IsSocialNeedOtherOrg
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsClinical"
            cmdParamStruct.value = IsClinical
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "ClinicalPatients"
            cmdParamStruct.value = ClinicalPatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsFamilyPref"
            cmdParamStruct.value = IsFamilyPref
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "FamilyPrefPatients"
            cmdParamStruct.value = FamilyPrefPatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsAdminBarrier"
            cmdParamStruct.value = IsAdminBarrier
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "AdminBarrierPatients"
            cmdParamStruct.value = AdminBarrierPatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsDied"
            cmdParamStruct.value = IsDied
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "DiedPatients"
            cmdParamStruct.value = DiedPatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "IsFinancial"
            cmdParamStruct.value = IsFinancial
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "FinancialPatients"
            cmdParamStruct.value = FinancialPatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "TotalForgonePatients"
            cmdParamStruct.value = TotalForgonePatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "Died179"
            cmdParamStruct.value = Died179
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "NoInsurancePatients"
            cmdParamStruct.value = NoInsurancePatients
            commandParams.cmdParams.Add(cmdParamStruct)

            cmdParamStruct = New CmdParamStruct()
            cmdParamStruct.name = "OccupancyRate"
            cmdParamStruct.value = OccupancyRate
            commandParams.cmdParams.Add(cmdParamStruct)

            commandParams.CmdName = "InsertPatientVolume_c2"

            dbOperationManager.ExecuteNonQuery(commandParams)
        End Sub
        Public Sub UpdatePatientVolume(strSQL As String)
            dbOperationManager.ExecuteNonQuery(strSQL)
        End Sub
        Public Sub Delete(strSQL As String)
            dbOperationManager.ExecuteNonQuery(strSQL)
        End Sub
        Public Sub TerminateDBOperation()
            dbOperationManager.CloseAll()
        End Sub
    End Class
End Namespace