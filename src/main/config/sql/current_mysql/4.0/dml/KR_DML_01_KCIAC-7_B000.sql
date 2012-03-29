DELIMITER /
INSERT INTO KRIM_ROLE_ID_BS_S VALUES(NULL)
/
-- iacuc protocol creator
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
VALUES ('Y','IACUC Protocol Creator',(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),NOW(),'KC-IACUC',UUID(),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),'IACUC Protocol Creator',1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KR-SYS' AND NM = 'Initiate Document'),'KC-IACUC','Create IACUC Protocol','Create IACUC Protocol','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-SYS' AND NM = 'Document Type (Permission)'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_ID_BS_S VALUES(NULL)
/
-- iacuc protocol aggregator
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
VALUES ('Y','IACUC Protocol Aggregator',(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Unit'),NOW(),'KC-IACUC',UUID(),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),'IACUC Protocol Aggregator',1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Perform Document Action'),'KC-IACUC','Create IACUC Amendment','Create a new amendment for a IACUC protocol','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'documentAction'),'create_ammendment',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Perform Document Action'),'KC-IACUC','Create IACUC Renewal','Create a new renewal for a IACUC protocol','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'documentAction'),'create_renewal',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'Route Document'),'KC-IACUC','Submit IACUC protocol for Review','Submit a IACUC Protocol to IRB for review','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-SYS' AND NM = 'Document Type (Permission)'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Edit Document Section'),'KC-IACUC','Modify IACUC Protocol','Modify IACUC Protocol Document','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'sectionName'),'iacucProtocol',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Edit Document Section'),'KC-IACUC','Modify IACUC ProtocolPermissions','Assign Users to IACUC Protocol Roles','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'sectionName'),'protocol_permissions',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'View Document Section'),'KC-IACUC','View IACUC Protocol','View IACUC Protocol Document','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'sectionName'),'iacucProtocol',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Perform Document Action'),'KC-IACUC','Add IACUC Protocol Notes','Add IACUC Protocol Notes','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'documentAction'),'add_notes',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Modify All Documents'),'KC-IACUC','Modify Any IACUC Protocol','Modify Any IACUC Protocol Document','Y',UUID(),1)
/
INSERT INTO KRIM_ATTR_DATA_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ATTR_DATA_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Action'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'IacucProtocolDocument',UUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_PERM_ID_BS_S),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_ID_BS_S VALUES(NULL)
/
-- modify iacuc protocol
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
VALUES ('Y','Modify IACUC Protocols',(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),NOW(),'KC-IACUC',UUID(),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),'Modify IACUC Protocols',1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,VER_NBR,OBJ_ID)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Modify Any IACUC Protocol' AND NMSPC_CD='KC-IACUC'),'Y',1,UUID())
/
INSERT INTO KRIM_ROLE_ID_BS_S VALUES(NULL)
/
-- iacuc protocol viewer
INSERT INTO KRIM_ROLE_T (ACTV_IND,DESC_TXT,KIM_TYP_ID,LAST_UPDT_DT,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR)
VALUES ('Y','IACUC Protocol Viewer',(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Unit'),NOW(),'KC-IACUC',UUID(),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),'IACUC Protocol Viewer',1)
/
INSERT INTO KRIM_ROLE_PERM_ID_BS_S VALUES(NULL)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
VALUES ((SELECT (MAX(ID)) FROM KRIM_ROLE_PERM_ID_BS_S),(SELECT (MAX(ID)) FROM KRIM_ROLE_ID_BS_S),(SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View IACUC Protocol' AND NMSPC_CD='KC-IACUC'),'Y',UUID(),1)
/
DELIMITER ;
