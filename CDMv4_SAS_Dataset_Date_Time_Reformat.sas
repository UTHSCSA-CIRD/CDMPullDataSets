/*SAS Program*/
%let dpath=*DIRECTORY WHERE THE DATASETS ARE SAVED*;

libname pcordata "&dpath";

***************************************************************;
* DEMOGRAPHIC
***************************************************************;
data pcordata.DEMOGRAPHIC;
	set pcordata.DEMOGRAPHIC(
		rename = (
			BIRTH_TIME = _BIRTH_TIME
		)
	)
	;

	BIRTH_DATE = datepart(BIRTH_DATE);
    format BIRTH_DATE mmddyy10.;

	BIRTH_TIME = input(_BIRTH_TIME, hhmmss.);
	format BIRTH_TIME hhmm.;
	drop _BIRTH_TIME;
run;


***************************************************************;
* ENROLLMENT
***************************************************************;
data pcordata.ENROLLMENT;
	set pcordata.ENROLLMENT;

	ENR_START_DATE = datepart(ENR_START_DATE);
    format ENR_START_DATE mmddyy10.;

	ENR_END_DATE = datepart(ENR_END_DATE);
    format ENR_END_DATE mmddyy10.;

run;


***************************************************************;
* ENCOUNTER
***************************************************************;
data pcordata.ENCOUNTER;
	set pcordata.ENCOUNTER(
		rename = (
			ADMIT_TIME = _ADMIT_TIME
			DISCHARGE_TIME = _DISCHARGE_TIME
		)
	)
	;

	ADMIT_DATE = datepart(ADMIT_DATE);
    format ADMIT_DATE mmddyy10.;

	ADMIT_TIME = input(_ADMIT_TIME, hhmmss.);
	format ADMIT_TIME hhmm.;
	drop _ADMIT_TIME;

	DISCHARGE_DATE = datepart(DISCHARGE_DATE);
    format DISCHARGE_DATE mmddyy10.;

	DISCHARGE_TIME = input(_DISCHARGE_TIME, hhmmss.);
	format DISCHARGE_TIME hhmm.;
	drop _DISCHARGE_TIME;
run;


***************************************************************;
* DIAGNOSIS
***************************************************************;
data pcordata.DIAGNOSIS;
	set pcordata.DIAGNOSIS;

	ADMIT_DATE = datepart(ADMIT_DATE);
    format ADMIT_DATE mmddyy10.;
run;


***************************************************************;
* PROCEDURES
***************************************************************;
data pcordata.PROCEDURES;
	set pcordata.PROCEDURES;

	ADMIT_DATE = datepart(ADMIT_DATE);
    format ADMIT_DATE mmddyy10.;

	PX_DATE = datepart(PX_DATE);
    format PX_DATE mmddyy10.;
run;


***************************************************************;
* VITAL
***************************************************************;
data pcordata.VITAL;
	set pcordata.VITAL(
		rename = (
			MEASURE_TIME = _MEASURE_TIME
		)
	)
	;

	MEASURE_DATE = datepart(MEASURE_DATE);
    format MEASURE_DATE mmddyy10.;

	MEASURE_TIME = input(_MEASURE_TIME, hhmmss.);
	format MEASURE_TIME hhmm.;
	drop _MEASURE_TIME;
run;


***************************************************************;
* DISPENSING
***************************************************************;
data pcordata.DISPENSING;
	set pcordata.DISPENSING;

	DISPENSE_DATE = datepart(DISPENSE_DATE);
    format DISPENSE_DATE mmddyy10.;
run;


***************************************************************;
* LAB_RESULT_CM
***************************************************************;
data pcordata.LAB_RESULT_CM;
	set pcordata.LAB_RESULT_CM(
		rename = (
			RESULT_TIME = _RESULT_TIME
			SPECIMEN_TIME = _SPECIMEN_TIME
		)
	)
	;
	
	LAB_ORDER_DATE = datepart(LAB_ORDER_DATE);
    format LAB_ORDER_DATE mmddyy10.;

	RESULT_DATE = datepart(RESULT_DATE);
    format RESULT_DATE mmddyy10.;

	RESULT_TIME = input(_RESULT_TIME, hhmmss.);
	format RESULT_TIME hhmm.;
	drop _RESULT_TIME;

	SPECIMEN_DATE = datepart(SPECIMEN_DATE);
    format SPECIMEN_DATE mmddyy10.;
	
	SPECIMEN_TIME = input(_SPECIMEN_TIME, hhmmss.);
	format SPECIMEN_TIME hhmm.;
	drop _SPECIMEN_TIME;
	

run;

***************************************************************;
* CONDITION
***************************************************************;
data pcordata.CONDITION;
	set pcordata.CONDITION;

	REPORT_DATE = datepart(REPORT_DATE);
    format REPORT_DATE mmddyy10.;

	RESOLVE_DATE = datepart(RESOLVE_DATE);
    format RESOLVE_DATE mmddyy10.;

	ONSET_DATE = datepart(ONSET_DATE);
    format ONSET_DATE mmddyy10.;
run;


***************************************************************;
* PRO_CM
***************************************************************;
data pcordata.PRO_CM;
	set pcordata.PRO_CM(
		rename = (
			PRO_TIME = _PRO_TIME
		)
	)
	;

	PRO_DATE = datepart(PRO_DATE);
    format PRO_DATE mmddyy10.;

	PRO_TIME = input(_PRO_TIME, hhmmss.);
	format PRO_TIME hhmm.;
	drop _PRO_TIME;
run;


***************************************************************;
* PRESCRIBING
***************************************************************;
data pcordata.PRESCRIBING;
	set pcordata.PRESCRIBING(
		rename = (
			RX_ORDER_TIME = _RX_ORDER_TIME
		)
	)
	;

	RX_ORDER_DATE = datepart(RX_ORDER_DATE);
    format RX_ORDER_DATE mmddyy10.;

	RX_ORDER_TIME = input(_RX_ORDER_TIME, hhmmss.);
	format RX_ORDER_TIME hhmm.;
	drop _RX_ORDER_TIME;

	RX_START_DATE = datepart(RX_START_DATE);
    format RX_START_DATE mmddyy10.;

	RX_END_DATE = datepart(RX_END_DATE);
    format RX_END_DATE mmddyy10.;
run;


***************************************************************;
* PCORNET_TRIAL
***************************************************************;
data pcordata.PCORNET_TRIAL;
	set pcordata.PCORNET_TRIAL;

	TRIAL_ENROLL_DATE = datepart(TRIAL_ENROLL_DATE);
    format TRIAL_ENROLL_DATE mmddyy10.;

	TRIAL_END_DATE = datepart(TRIAL_END_DATE);
    format TRIAL_END_DATE mmddyy10.;

	TRIAL_WITHDRAW_DATE = datepart(TRIAL_WITHDRAW_DATE);
    format TRIAL_WITHDRAW_DATE mmddyy10.;
run;


***************************************************************;
* DEATH
***************************************************************;
data pcordata.DEATH;
	set pcordata.DEATH;

	DEATH_DATE = datepart(DEATH_DATE);
    format DEATH_DATE mmddyy10.;
run;


***************************************************************;
* DEATH_CAUSE
***************************************************************;
data pcordata.DEATH_CAUSE;
	set pcordata.DEATH_CAUSE;
run;

***************************************************************;
* MED_ADMIN
***************************************************************;
data pcordata.MED_ADMIN;
	set pcordata.MED_ADMIN(
		rename = (
			MEDADMIN_START_TIME = _MEDADMIN_START_TIME
			MEDADMIN_STOP_TIME = _MEDADMIN_STOP_TIME
		)
	)
	;

	MEDADMIN_START_DATE = datepart(MEDADMIN_START_DATE);
    format MEDADMIN_START_DATE mmddyy10.;
	
	MEDADMIN_START_TIME = input(_MEDADMIN_START_TIME, hhmmss.);
	format MEDADMIN_START_TIME hhmm.;
	drop _MEDADMIN_START_TIME;

	MEDADMIN_STOP_DATE = datepart(MEDADMIN_STOP_DATE);
    format MEDADMIN_STOP_DATE mmddyy10.;
	
	MEDADMIN_STOP_TIME = input(_MEDADMIN_STOP_TIME, hhmmss.);
	format MEDADMIN_STOP_TIME hhmm.;
	drop _MEDADMIN_STOP_TIME;

run;

***************************************************************;
* PROVIDER
***************************************************************;
data pcordata.PROVIDER;
	set pcordata.PROVIDER;
run;

***************************************************************;
* OBS_CLIN
***************************************************************;
data pcordata.OBS_CLIN;
	set pcordata.OBS_CLIN(
		rename = (
			OBSCLIN_TIME = _OBSCLIN_TIME
		)
	)
	;

	OBSCLIN_DATE = datepart(OBSCLIN_DATE);
    format OBSCLIN_DATE mmddyy10.;
	
	OBSCLIN_TIME = input(_OBSCLIN_TIME, hhmmss.);
	format OBSCLIN_TIME hhmm.;
	drop _OBSCLIN_TIME;
run;

***************************************************************;
* OBS_GEN
***************************************************************;
data pcordata.OBS_GEN;
	set pcordata.OBS_GEN(
		rename = (
			OBSGEN_TIME = _OBSGEN_TIME
		)
	)
	;

	OBSGEN_DATE = datepart(OBSGEN_DATE);
    format OBSGEN_DATE mmddyy10.;
	
	OBSGEN_TIME = input(_OBSGEN_TIME, hhmmss.);
	format OBSGEN_TIME hhmm.;
	drop _OBSGEN_TIME;
run;

***************************************************************;
* HARVEST
***************************************************************;
data pcordata.HARVEST;
	set pcordata.HARVEST;

	REFRESH_DEMOGRAPHIC_DATE = datepart(REFRESH_DEMOGRAPHIC_DATE);
    format REFRESH_DEMOGRAPHIC_DATE mmddyy10.;

	REFRESH_ENROLLMENT_DATE = datepart(REFRESH_ENROLLMENT_DATE);
    format REFRESH_ENROLLMENT_DATE mmddyy10.;

	REFRESH_ENCOUNTER_DATE = datepart(REFRESH_ENCOUNTER_DATE);
    format REFRESH_ENCOUNTER_DATE mmddyy10.;

	REFRESH_DIAGNOSIS_DATE = datepart(REFRESH_DIAGNOSIS_DATE);
    format REFRESH_DIAGNOSIS_DATE mmddyy10.;

	REFRESH_PROCEDURES_DATE = datepart(REFRESH_PROCEDURES_DATE);
    format REFRESH_PROCEDURES_DATE mmddyy10.;

	REFRESH_VITAL_DATE = datepart(REFRESH_VITAL_DATE);
    format REFRESH_VITAL_DATE mmddyy10.;

	REFRESH_DISPENSING_DATE = datepart(REFRESH_DISPENSING_DATE);
    format REFRESH_DISPENSING_DATE mmddyy10.;

	REFRESH_LAB_RESULT_CM_DATE = datepart(REFRESH_LAB_RESULT_CM_DATE);
    format REFRESH_LAB_RESULT_CM_DATE mmddyy10.;

	REFRESH_CONDITION_DATE = datepart(REFRESH_CONDITION_DATE);
    format REFRESH_CONDITION_DATE mmddyy10.;

	REFRESH_PRO_CM_DATE = datepart(REFRESH_PRO_CM_DATE);
    format REFRESH_PRO_CM_DATE mmddyy10.;

	REFRESH_PRESCRIBING_DATE = datepart(REFRESH_PRESCRIBING_DATE);
    format REFRESH_PRESCRIBING_DATE mmddyy10.;

	REFRESH_PCORNET_TRIAL_DATE = datepart(REFRESH_PCORNET_TRIAL_DATE);
    format REFRESH_PCORNET_TRIAL_DATE mmddyy10.;

	REFRESH_DEATH_DATE = datepart(REFRESH_DEATH_DATE);
    format REFRESH_DEATH_DATE mmddyy10.;

	REFRESH_DEATH_CAUSE_DATE = datepart(REFRESH_DEATH_CAUSE_DATE);
    format REFRESH_DEATH_CAUSE_DATE mmddyy10.;

	REFRESH_MED_ADMIN_DATE = datepart(REFRESH_MED_ADMIN_DATE);
    format REFRESH_MED_ADMIN_DATE mmddyy10.;

	REFRESH_OBS_CLIN_DATE = datepart(REFRESH_OBS_CLIN_DATE);
    format REFRESH_OBS_CLIN_DATE mmddyy10.;

	REFRESH_PROVIDER_DATE = datepart(REFRESH_PROVIDER_DATE);
    format REFRESH_PROVIDER_DATE mmddyy10.;

	REFRESH_OBS_GEN_DATE = datepart(REFRESH_OBS_GEN_DATE);
    format REFRESH_OBS_GEN_DATE mmddyy10.;
run;
