CREATE OR REPLACE VIEW OSP$SUBMISSION_TYPE AS SELECT
  SUBMISSION_TYPE_CODE,
  DESCRIPTION,
  UPDATE_TIMESTAMP,
  UPDATE_USER
FROM SUBMISSION_TYPE;
