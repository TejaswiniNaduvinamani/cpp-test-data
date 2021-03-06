DROP TABLE PRICE_ADMIN.CPP_LANGUAGE_STATEMENT IF EXISTS;    
drop sequence CPP_LANGUAGE_STATEMENT_SEQ IF EXISTS;

CREATE TABLE PRICE_ADMIN.CPP_LANGUAGE_STATEMENT
(
CPP_LANGUAGE_STATEMENT_SEQ     NUMERIC   NOT NULL,       
LANGUAGE_TYPE_CODE             VARCHAR2(3) NOT NULL,     
PRICING_LANGUAGE_STATEMENT_TXT VARCHAR2(4000), 
LAST_UPDATE_USER_ID            VARCHAR2(100)  NOT NULL, 
LAST_UPDATE_TMSTMP      		TIMESTAMP(6) WITH TIME ZONE DEFAULT SYSTIMESTAMP NOT NULL,
  CONSTRAINT CPP_LANGUAGE_STATEMENT_PK PRIMARY KEY (CPP_LANGUAGE_STATEMENT_SEQ),
  CONSTRAINT CPP_LANGUAGE_STATEMENT_UK1 UNIQUE (LANGUAGE_TYPE_CODE,PRICING_LANGUAGE_STATEMENT_TXT)
);

create sequence CPP_LANGUAGE_STATEMENT_SEQ as integer start with 1000;


CREATE SYNONYM PUBLIC.CPP_LANGUAGE_STATEMENT FOR PRICE_ADMIN.CPP_LANGUAGE_STATEMENT;