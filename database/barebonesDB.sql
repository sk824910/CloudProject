BEGIN TRANSACTION;

/* Create a table called NAMES */
CREATE TABLE NAMES(Id integer PRIMARY KEY, Name text, Phone text);

/* Create few records in this table */
INSERT INTO NAMES VALUES(1,'Tom',"668-9373");
INSERT INTO NAMES VALUES(2,'Steve',"886-5265");
INSERT INTO NAMES VALUES(3,'Kevin',"430-1217");
COMMIT;



/* Display all the records from the table */
SELECT * FROM NAMES;