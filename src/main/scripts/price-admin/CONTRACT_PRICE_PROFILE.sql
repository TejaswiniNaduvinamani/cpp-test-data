DROP TABLE PRICE_ADMIN.CONTRACT_PRICE_PROFILE IF EXISTS;    
drop sequence CONTRACT_PRICE_PROFILE_SEQ1 IF EXISTS;
drop sequence CONTRACT_PRICE_PROFILE_SEQ2 IF EXISTS;

CREATE TABLE PRICE_ADMIN.CONTRACT_PRICE_PROFILE
(
	CONTRACT_PRICE_PROFILE_SEQ NUMERIC NOT NULL,                      
	CONTRACT_PRICE_PROFILE_ID  NUMERIC NOT NULL,                     
	VERSION_NBR                NUMERIC DEFAULT 1 NOT NULL,                     
	PRC_EFFECTIVE_DATE         DATE   NOT NULL,                       
	PRC_EXPIRATION_DATE        DATE   NOT NULL,                      
	CREATE_USER_ID             VARCHAR2(100) NOT NULL,               
	LAST_UPDATE_USER_ID        VARCHAR2(100) NOT NULL,
	CREATE_TMSTMP              TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL, 
	LAST_UPDATE_TMSTMP         TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,  
	CLM_CONTRACT_TYPE_SEQ      NUMERIC,
	CLM_AGREEMENT_ID 		  VARCHAR2(100),
	PRICING_EXHIBIT_GUID 	  VARCHAR2(100),
	CONTRACT_PRC_PROF_STATUS_CODE NUMERIC DEFAULT 10 NOT NULL,
	EXPIRE_LOWER_LEVEL_IND NUMERIC,
	CLM_CONTRACT_START_DATE DATE, 
	CLM_CONTRACT_END_DATE DATE, 
	PARENT_CLM_AGREEMENT_ID VARCHAR2(100),
	PRICE_ACTIVATED_TMSTMP TIMESTAMP(6) WITH TIME ZONE,
  
  CONSTRAINT CONTRACT_PRICE_PROFILE_PK PRIMARY KEY (CONTRACT_PRICE_PROFILE_SEQ),
  CONSTRAINT CONTRACT_PRICE_PROFILE_UK1 UNIQUE  (CONTRACT_PRICE_PROFILE_ID,VERSION_NBR)
);

create sequence CONTRACT_PRICE_PROFILE_SEQ1 as integer start with 1000 ;
create sequence CONTRACT_PRICE_PROFILE_SEQ2 as integer start with 1000 ;


CREATE SYNONYM PUBLIC.CONTRACT_PRICE_PROFILE FOR PRICE_ADMIN.CONTRACT_PRICE_PROFILE;