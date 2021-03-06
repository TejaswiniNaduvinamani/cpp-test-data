DROP TABLE PRICE_ADMIN.COST_MODEL_MAP IF EXISTS;    

CREATE TABLE PRICE_ADMIN.COST_MODEL_MAP
(

	COST_MODEL_MAP_SEQ     NUMERIC 	NOT NULL,                       
	TRANSFER_FEE_IND       NUMERIC NOT NULL,                    
	LABEL_ASSESMENT_IND    NUMERIC NOT NULL,                  
	AUDIT_PRICING_IND      NUMERIC NOT NULL,                    
	PRICE_VERIFICATION_IND NUMERIC NOT NULL,                   
	COST_MODEL_ID          NUMERIC NOT NULL,                  
	CREATE_USER_ID         VARCHAR2(100) NOT NULL,               
	CREATE_USER_TMSTMP     TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL, 
	LAST_UPDATE_USER_ID    VARCHAR2(100) NOT NULL,               
	LAST_UPDATE_TMSTMP     TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL, 
	
    CONSTRAINT COST_MODEL_MAP_PK PRIMARY KEY (COST_MODEL_MAP_SEQ),
    CONSTRAINT COST_MODEL_MAP_UK1 UNIQUE (TRANSFER_FEE_IND,LABEL_ASSESMENT_IND,AUDIT_PRICING_IND,PRICE_VERIFICATION_IND)
);

CREATE SYNONYM PUBLIC.COST_MODEL_MAP FOR PRICE_ADMIN.COST_MODEL_MAP;