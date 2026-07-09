USE [Hospice2025]
GO

/****** Object: SqlProcedure [dbo].[InsertPatientVolume_c2] Script Date: 7/8/2026 12:57:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE [dbo].[InsertPatientVolume_c2];


GO



CREATE procedure [dbo].[InsertPatientVolume_c2](
@UserName Varchar(20), @TotReferrals INT, @RefSourceMD INT, @RefSourceHosp INT, @RefSourceNF INT, @RefSourceALF INT, @RefSourceHH INT
, @RefSourceSelf INT, @RefSourceOther INT,  @ADC Decimal, @ALOS Decimal, @MLOS Decimal, @Died7 Decimal, @Died180 Decimal
,@RefSourceOtherSpecify varchar(500)
,@PalCareProvider INT
,@IsSocialDetermin	bit
,@IsHousing	bit
,@HousingOrg	Varchar(250)
,@IsFood	bit
,@IsFoodOrg	Varchar(250)
,@IsTransport	bit
,@IsTransportOrg	Varchar(250)
,@IsUtilities	bit
,@IsUtilitiesOrg	Varchar(250)
,@IsInterSafety	bit
,@IsInterSafetyOrg	Varchar(250)
,@IsSocialIsolation	bit
,@IsSocialIsolationOrg	Varchar(250)
,@IsLiteracy	bit
,@IsLiteracyOrg	Varchar(250)
,@IsSocialNeedOther	bit
,@SocialNeedOtherSpec Varchar(250)
,@IsSocialNeedOtherOrg	Varchar(250)
,@IsClinical	bit
,@ClinicalPatients	INT
,@IsFamilyPref	bit
,@FamilyPrefPatients	INT
,@IsAdminBarrier	bit
,@AdminBarrierPatients	INT
,@IsDied	bit
,@DiedPatients	INT
,@IsFinancial	bit
,@FinancialPatients	INT
,@TotalForgonePatients	INT
,@Died179	INT NULL
,@NoInsurancePatients	INT NULL
,@OccupancyRate	Decimal(18,2) 
)
As

INSERT INTO PatientVolume_c2 (UserName, TotReferrals, RefSourceMD, RefSourceHosp, RefSourceNF, RefSourceALF,RefSourceHH
, RefSourceSelf, RefSourceOther, ADC, ALOS, MLOS, Died7, Died180
,RefSourceOtherSpecify
,PalCareProvider
,IsSocialDetermin
,IsHousing
,HousingOrg
,IsFood
,IsFoodOrg
,IsTransport
,IsTransportOrg
,IsUtilities
,IsUtilitiesOrg
,IsInterSafety
,IsInterSafetyOrg
,IsSocialIsolation
,IsSocialIsolationOrg
,IsLiteracy
,IsLiteracyOrg
,IsSocialNeedOther
,SocialNeedOtherSpec
,IsSocialNeedOtherOrg
,IsClinical
,ClinicalPatients
,IsFamilyPref
,FamilyPrefPatients
,IsAdminBarrier
,AdminBarrierPatients
,IsDied
,DiedPatients
,IsFinancial
,FinancialPatients
,TotalForgonePatients
,Died179
,NoInsurancePatients
,OccupancyRate)
VALUES(@UserName, @TotReferrals, @RefSourceMD, @RefSourceHosp, @RefSourceNF, @RefSourceALF, @RefSourceHH
, @RefSourceSelf, @RefSourceOther, @ADC, @ALOS, @MLOS, @Died7, @Died180
,@RefSourceOtherSpecify
,@PalCareProvider
,@IsSocialDetermin
,@IsHousing
,@HousingOrg
,@IsFood
,@IsFoodOrg
,@IsTransport
,@IsTransportOrg
,@IsUtilities
,@IsUtilitiesOrg
,@IsInterSafety
,@IsInterSafetyOrg
,@IsSocialIsolation
,@IsSocialIsolationOrg
,@IsLiteracy
,@IsLiteracyOrg
,@IsSocialNeedOther
,@SocialNeedOtherSpec
,@IsSocialNeedOtherOrg
,@IsClinical
,@ClinicalPatients
,@IsFamilyPref
,@FamilyPrefPatients
,@IsAdminBarrier
,@AdminBarrierPatients
,@IsDied
,@DiedPatients
,@IsFinancial
,@FinancialPatients
,@TotalForgonePatients
,@Died179
,@NoInsurancePatients
,@OccupancyRate);
