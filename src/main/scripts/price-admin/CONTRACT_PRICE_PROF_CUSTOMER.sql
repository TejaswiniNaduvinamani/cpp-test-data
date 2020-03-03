DROP TABLE PRICE_ADMIN.CONTRACT_PRICE_PROF_CUSTOMER IF EXISTS;    
drop sequence CONTRACT_PRC_PROF_CUSTOMER_SEQ IF EXISTS;

CREATE TABLE PRICE_ADMIN.CONTRACT_PRICE_PROF_CUSTOMER
(
	CPP_CUSTOMER_SEQ            NUMERIC  		NOT NULL,       
	CONTRACT_PRICE_PROFILE_SEQ  NUMERIC  		NOT NULL,     
	GFS_CUSTOMER_ID             VARCHAR2(9)  	NOT NULL, 
	GFS_CUSTOMER_TYPE_CODE      NUMERIC    		NOT NULL,    
	CREATE_USER_ID              VARCHAR2(100) 	NOT NULL, 
	CREATE_TMSTMP              TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,          
	DEFAULT_CUSTOMER_IND       	NUMERIC     		NOT NULL, 
  
  CONSTRAINT CONTRACT_PRC_PROF_CUSTOMER_PK PRIMARY KEY (CPP_CUSTOMER_SEQ),
  CONSTRAINT CONTRACT_PRC_PROF_CUSTOMER_UK1 UNIQUE  (CONTRACT_PRICE_PROFILE_SEQ,GFS_CUSTOMER_ID,GFS_CUSTOMER_TYPE_CODE)
);

create sequence CONTRACT_PRC_PROF_CUSTOMER_SEQ as integer start with 1000 ;


CREATE SYNONYM PUBLIC.CONTRACT_PRICE_PROF_CUSTOMER FOR PRICE_ADMIN.CONTRACT_PRICE_PROF_CUSTOMER;