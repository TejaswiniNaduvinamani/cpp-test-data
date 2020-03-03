DROP TABLE PRICE_ADMIN.PRC_PROF_COST_RUN_SCHED_GROUP IF EXISTS;    
drop sequence PRC_PROF_COST_SCHEDULE_PKG_SEQ IF EXISTS;

CREATE TABLE PRICE_ADMIN.PRC_PROF_COST_RUN_SCHED_GROUP
(
  PRC_PROF_COST_SCHEDULE_PKG_SEQ		NUMERIC NOT NULL,
  SCHEDULE_GROUP_SEQ					NUMERIC NOT NULL,
  COST_RUN_FREQUENCY_CODE      		VARCHAR2(1 BYTE),
  CONTRACT_PRICE_PROFILE_SEQ			NUMERIC NOT NULL,
  
  CONSTRAINT PRC_PROF_COST_RUN_SCHED_GRP_PK PRIMARY KEY (PRC_PROF_COST_SCHEDULE_PKG_SEQ,SCHEDULE_GROUP_SEQ)
);

create sequence PRC_PROF_COST_SCHEDULE_PKG_SEQ as integer start with 1000 ;


CREATE SYNONYM PUBLIC.PRC_PROF_COST_RUN_SCHED_GROUP FOR PRICE_ADMIN.PRC_PROF_COST_RUN_SCHED_GROUP;