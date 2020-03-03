DROP TABLE PRICE_ADMIN.PRC_PROF_PRICING_RULE_OVRD IF EXISTS;    
drop sequence PRC_PROF_PRICING_RULE_OVRD_SEQ IF EXISTS;




CREATE TABLE PRICE_ADMIN.PRC_PROF_PRICING_RULE_OVRD
(
PRC_PROF_PRICING_RULE_OVRD_SEQ NUMERIC		NOT NULL,       
GFS_CUSTOMER_ID                VARCHAR2(9) 	NOT NULL,  
GFS_CUSTOMER_TYPE_CODE         NUMERIC		NOT NULL,        
PRICING_OVERRIDE_ID            NUMERIC		NOT NULL,        
EFFECTIVE_DATE                 DATE 			NOT NULL,          
EXPIRATION_DATE                DATE 			NOT NULL,          
CREATE_TMSTMP                  TIMESTAMP(6)	WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,          
CREATE_USER_ID                 VARCHAR2(100)	NOT NULL, 
LAST_UPDATE_TMSTMP             TIMESTAMP(6)	WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,        
LAST_UPDATE_USER_ID            VARCHAR2(100)	NOT NULL,
PRICING_OVERRIDE_IND           NUMERIC		NOT NULL,    
CONTRACT_PRICE_PROFILE_SEQ     NUMERIC,    	

  CONSTRAINT PRC_PROF_PRICING_RULE_OVRD_PK PRIMARY KEY (PRC_PROF_PRICING_RULE_OVRD_SEQ)
);

create sequence PRC_PROF_PRICING_RULE_OVRD_SEQ as integer start with 1000;

CREATE SYNONYM PUBLIC.PRC_PROF_PRICING_RULE_OVRD FOR PRICE_ADMIN.PRC_PROF_PRICING_RULE_OVRD;

