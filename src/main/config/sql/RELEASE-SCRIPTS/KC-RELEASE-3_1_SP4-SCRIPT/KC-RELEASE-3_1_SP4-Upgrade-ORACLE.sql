set define off
set sqlblanklines on
spool KC-RELEASE-3_1_SP4-Upgrade-ORACLE-Install.log
@ORACLE/TABLES/KC_TBL_COMM_SCHEDULE.sql
@ORACLE/DML/KC_DML_BS1_COEUS_SUB_MODULE.sql
@ORACLE/DML/KC_DML_BS1_COMM_SCHEDULE.sql
@ORACLE/DML/KC_DML_BS1_TRAINING_STIPEND_RATES.sql
commit;
exit
