 SELECT
    Name,SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
 FROM Faculty
/
