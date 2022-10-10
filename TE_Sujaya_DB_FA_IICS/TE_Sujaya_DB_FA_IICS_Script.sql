-----To view the table values-----
SELECT * from DFA_IICS_CinemaTicket_Data;

-----To view the table values for Aggregate Table-----

SELECT * from DFA_IICS_CINEMATICKE_SALES_AGGREGATE;

-----To view the table values for Single DB Replication-----

SELECT * FROM RST_IICSSUJ_DFA_COVIDHEALTHCARE_DATA;


-----SOURCE TABLE FOR Scd type1-----
CREATE TABLE DFA_INSURANCE_CLAIM_HEALTHCARE_SCDtype1_SOURCE
(
 PID varchar(50),
 AGE varchar(50),
 GENDER varchar(255),
 CASTE_NAME varchar(255),
 CATEGORY_CODE varchar(255),
 CATEGORY_NAME varchar(255),
 SURGERY_CODE varchar(255),
 SURGERY varchar(255),
 VILLAGE varchar(255),
 MANDAL_NAME varchar(255),
 DISTRICT_NAME varchar(255),
 PREAUTH_DATE varchar(50),
 PREAUTH_AMT varchar(50),
 CLAIM_DATE varchar(50),
 CLAIM_AMOUNT varchar(50),
 HOSP_NAME varchar(255),
 HOSP_TYPE varchar(50),
 HOSP_DISTRICT varchar(255),
 SURGERY_DATE varchar(50),
 DISCHARGE_DATE varchar(50),
 MORTALITY  varchar(255),
 MORTALITY_DATE varchar(50),
 SRC_REGISTRATION varchar(255)
 );


-----TARGET TABLE for Scd type1-----

CREATE TABLE DFA_INSURANCE_CLAIM_HEALTHCARE_SCDtype1_TGT
(
 PKEY INT,
 PID varchar(50),
 AGE varchar(50),
 GENDER varchar(255),
 CASTE_NAME varchar(255),
 DISTRICT_NAME varchar(255),
 CHECK_SUM Varchar(255)
 );


-----To view the records in table----
SELECT * FROM DFA_IICS_INSURANCE_CLAIM_HEALTHCARE_SCDtype1_TGT;

-----UPDATE Source table for Scd type1-----
update DFA_INSURANCE_CLAIM_HEALTHCARE_SCDtype1_SOURCE
set CASTE_NAME='BC'
where pid=10;



-----SOURCE TABLE FOR Scd type2-----

CREATE TABLE DFA_INSURANCE_CLAIM_HEALTHCARE_SCDtype2_SOURCE
(
 PID varchar(50),
 AGE varchar(50),
 GENDER varchar(255),
 CASTE_NAME varchar(255),
 CATEGORY_CODE varchar(255),
 CATEGORY_NAME varchar(255),
 SURGERY_CODE varchar(255),
 SURGERY varchar(255),
 VILLAGE varchar(255),
 MANDAL_NAME varchar(255),
 DISTRICT_NAME varchar(255),
 PREAUTH_DATE varchar(50),
 PREAUTH_AMT varchar(50),
 CLAIM_DATE varchar(50),
 CLAIM_AMOUNT varchar(50),
 HOSP_NAME varchar(255),
 HOSP_TYPE varchar(50),
 HOSP_DISTRICT varchar(255),
 SURGERY_DATE varchar(50),
 DISCHARGE_DATE varchar(50),
 MORTALITY  varchar(255),
 MORTALITY_DATE varchar(50),
 SRC_REGISTRATION varchar(255),
 );

----------TARGET TABLE for Scd type2-----
CREATE TABLE DFA_IICS_INSURANCE_CLAIM_HEALTHCARE_SCDtype2_TGT
(
 PKEY varchar(50),
 PID varchar(50),
 AGE varchar(50),
 GENDER varchar(255),
 CASTE_NAME varchar(255),
 DISTRICT_NAME varchar(255),
 CHECK_SUM varchar(50),
 SDATE DATE,
 EDATE DATE
 );
-----To view the records in table-----
SELECT * FROM DFA_IICS_INSURANCE_CLAIM_HEALTHCARE_SCDtype2_TGT;

-----UPDATE Source table for Scd type2-----
UPDATE DFA_INSURANCE_CLAIM_HEALTHCARE_SCDtype2_SOURCE
SET AGE=72
WHERE PID=10;



