delimiter /
TRUNCATE TABLE PROTOCOL_ATTACHMENT_TYPE
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Informed Consent Document','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Recruitment Brochure','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Advertisement','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Protocol Narrative','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','Investigator Brochure','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6','Children''s Assent Form','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('7','HIPAA Research Authorization Form','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('8','HIPAA Waiver of Research Authorization Form','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('9','Other','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('10','Adverse Event','admin',NOW(),UUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE (TYPE_CD,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('11','Biography','admin',NOW(),UUID(),1)
/
delimiter ;
