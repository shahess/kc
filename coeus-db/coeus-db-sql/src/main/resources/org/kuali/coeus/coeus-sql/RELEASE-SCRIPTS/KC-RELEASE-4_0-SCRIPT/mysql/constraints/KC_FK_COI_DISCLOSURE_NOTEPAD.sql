DELIMITER /
ALTER TABLE COI_DISCLOSURE_NOTEPAD ADD CONSTRAINT COI_DISCLOSURE_ID_FK FOREIGN KEY (COI_DISCLOSURE_ID_FK) REFERENCES COI_DISCLOSURE (COI_DISCLOSURE_ID)
/

DELIMITER ;
