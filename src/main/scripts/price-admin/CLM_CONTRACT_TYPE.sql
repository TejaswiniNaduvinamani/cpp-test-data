DROP TABLE PRICE_ADMIN.CLM_CONTRACT_TYPE IF EXISTS;    
drop sequence CLM_CONTRACT_TYPE_SEQ IF EXISTS;

CREATE TABLE PRICE_ADMIN.CLM_CONTRACT_TYPE
(
	CLM_CONTRACT_TYPE_SEQ   NUMERIC NOT NULL,       
	CLM_CONTRACT_TYPE_NAME  VARCHAR2(100) NOT NULL,
	CLM_CONTRACT_TYPE_DESC  VARCHAR2(200) NOT NULL, 
	LAST_UPDATE_TMSTMP      TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,         
	LAST_UPDATE_USER_ID     VARCHAR2(100) NOT NULL,  
  
  CONSTRAINT CLM_CONTRACT_TYPE_PK PRIMARY KEY (CLM_CONTRACT_TYPE_SEQ)
);

create sequence CLM_CONTRACT_TYPE_SEQ as integer start with 1000;


CREATE SYNONYM PUBLIC.CLM_CONTRACT_TYPE FOR PRICE_ADMIN.CLM_CONTRACT_TYPE;