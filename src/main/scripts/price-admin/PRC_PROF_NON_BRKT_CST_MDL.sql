DROP TABLE PRICE_ADMIN.PRC_PROF_NON_BRKT_CST_MDL IF EXISTS;    
drop sequence PRC_PROF_NON_BRKT_CST_MDL_SEQ IF EXISTS;

CREATE TABLE PRICE_ADMIN.PRC_PROF_NON_BRKT_CST_MDL
(

	PRC_PROF_NON_BRKT_CST_MDL_SEQ NUMERIC NOT NULL,        
	GFS_CUSTOMER_ID               VARCHAR2(9) NOT NULL, 
	GFS_CUSTOMER_TYPE_CODE        NUMERIC NOT NULL,        
	ITEM_PRICE_LEVEL_CODE         NUMERIC NOT NULL,        
	ITEM_PRICE_ID                 VARCHAR2(50),  
	EFFECTIVE_DATE                DATE NOT NULL,          
	EXPIRATION_DATE               DATE NOT NULL,          
	CREATE_TMSTMP                 DATE DEFAULT SYSTIMESTAMP NOT NULL,          
	CREATE_USER_ID                VARCHAR2(100) NOT NULL, 
	LAST_UPDATE_TMSTMP            DATE DEFAULT SYSTIMESTAMP NOT NULL,         
	LAST_UPDATE_USER_ID           VARCHAR2(100) NOT NULL, 
	COST_MODEL_ID                 NUMERIC NOT NULL,    
	CONTRACT_PRICE_PROFILE_SEQ    NUMERIC,        

    CONSTRAINT PRC_PROF_NON_BRKT_CST_MDL_PK PRIMARY KEY (PRC_PROF_NON_BRKT_CST_MDL_SEQ)
);

create sequence PRC_PROF_NON_BRKT_CST_MDL_SEQ as integer start with 1000 ;
CREATE SYNONYM PUBLIC.PRC_PROF_NON_BRKT_CST_MDL FOR PRICE_ADMIN.PRC_PROF_NON_BRKT_CST_MDL;