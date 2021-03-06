DELIMITER /
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'billingElement'),'Y','Y','admin',NOW(),UUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'costSharingBudget'),'N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'numberOfTrainees'),'N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'graduateStudentCount'),'Y','Y','admin',NOW(),UUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'tenured'),'N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'exportControls'),'N','Y','admin',NOW(),UUID(),1)
/
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,IS_REQUIRED,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('SAWD',(SELECT ID FROM CUSTOM_ATTRIBUTE WHERE NAME = 'inventions'),'N','Y','admin',NOW(),UUID(),1)
/

DELIMITER ;
