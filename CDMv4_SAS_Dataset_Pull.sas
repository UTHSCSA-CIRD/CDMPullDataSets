***************************************************************;
* Clear SAS result buffer
***************************************************************;
ODS HTML CLOSE;
ODS HTML;
dm 'log;clear;';

/*SAS Program*/
%let path = *DIRECTORY TO SAVE DATASETS TO*;
libname pcordata "&path"; /* CREATING SAS LIBRARY FOR THE PATH */

proc sql;

connect to oracle(
	user="*YOUR USER*"
	pw="*YOUR PASSWORD*"
	path="(DESCRIPTION = 
			(ADDRESS = 
				(PROTOCOL = *YOUR PROTOCOL*)
      			(HOST = *YOUR HOST*)
      			(PORT = *YOUR PORT*))
    		(CONNECT_DATA = 
      			(SERVICE_NAME = *YOUR SERVICE NAME*)))"
);

create table pcordata.CONDITION as
	select * from connection to oracle
	(select * from PCORI_CDM.CONDITION);

create table pcordata.DEATH as
	select * from connection to oracle
	(select * from PCORI_CDM.DEATH);

create table pcordata.DEATH_CAUSE as
	select * from connection to oracle
	(select * from PCORI_CDM.DEATH_CAUSE);

create table pcordata.DEMOGRAPHIC as
	select * from connection to oracle
	(select * from PCORI_CDM.DEMOGRAPHIC);

create table pcordata.DIAGNOSIS as
	select * from connection to oracle
	(select * from PCORI_CDM.DIAGNOSIS);

create table pcordata.DISPENSING as
	select * from connection to oracle
	(select * from PCORI_CDM.DISPENSING);

create table pcordata.ENCOUNTER as
	select * from connection to oracle
	(select * from PCORI_CDM.ENCOUNTER);

create table pcordata.ENROLLMENT as
	select * from connection to oracle
	(select * from PCORI_CDM.ENROLLMENT);

create table pcordata.HARVEST as
	select * from connection to oracle
	(select * from PCORI_CDM.HARVEST);

create table pcordata.LAB_RESULT_CM as
	select * from connection to oracle
	(select * from PCORI_CDM.LAB_RESULT_CM);

create table pcordata.MED_ADMIN as
	select * from connection to oracle
	(select * from PCORI_CDM.MED_ADMIN);

create table pcordata.OBS_CLIN as
	select * from connection to oracle
	(select * from PCORI_CDM.OBS_CLIN);

create table pcordata.OBS_GEN as
	select * from connection to oracle
	(select * from PCORI_CDM.OBS_GEN);

create table pcordata.PCORNET_TRIAL as
	select * from connection to oracle
	(select * from PCORI_CDM.PCORNET_TRIAL);

create table pcordata.PRESCRIBING as
	select * from connection to oracle
	(select * from PCORI_CDM.PRESCRIBING);

create table pcordata.PROCEDURES as
	select * from connection to oracle
	(select * from PCORI_CDM.PROCEDURES);

create table pcordata.PROVIDER as
	select * from connection to oracle
	(select * from PCORI_CDM.PROVIDER);

create table pcordata.PRO_CM as
	select * from connection to oracle
	(select * from PCORI_CDM.PRO_CM);

create table pcordata.VITAL as
	select * from connection to oracle
	(select * from PCORI_CDM.VITAL);

disconnect from oracle;

quit;
