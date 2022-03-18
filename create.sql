# Table creation

CREATE TABLE PARTICIPANT (
  PMB INTEGER NOT NULL,
  FirstName VARCHAR(12) NOT NULL,
  LastName VARCHAR(12) NOT NULL,
  Class VARCHAR(22) NOT NULL,
  Dependents VARCHAR(5),
  PRIMARY KEY(PMB)
  );
  
CREATE TABLE O_INTERACTIONS (
  INTNumber VARCHAR(10) NOT NULL,
  INT_type VARCHAR(20) NOT NULL,
  P_LabelName VARCHAR(25) NOT NULL,
  Co_LabelName VARCHAR(25),
  INT_date DATE NOT NULL,
  INT_Description VARCHAR(300),
  PRIMARY KEY (INTNumber)
  );
  
CREATE TABLE INTERACTIONS(
  INTNumber VARCHAR(10) NOT NULL,
  INT_type VARCHAR(20) NOT NULL,
  PMB INTEGER NOT NULL,
  Co_PMB VARCHAR(5),
  P_FName VARCHAR(12) NOT NULL,
  P_LName VARCHAR(12) NOT NULL,
  Co_FName VARCHAR(12),
  Co_LName VARCHAR(12),
  INT_date DATE NOT NULL,
  INT_Description VARCHAR(300),
  PRIMARY KEY (INTNumber)
  );
  
  
INSERT INTO PARTICIPANT (PMB, FirstName, LastName, Class, Dependents)
VALUES
  (1234, 'JUAN', 'CARLOS', 'DV', NULL),
  (1235, 'JON', 'SMITHY', 'DV', '1235A'),
  (1236, 'DILLY', 'DILLY', 'CJ', NULL),
  (1237, 'RANCH', 'DRESSING', 'TFK', NULL),  
  (1238, 'SHANG', 'CHI', 'STK', NULL)
;
  

  
INSERT INTO INTERACTIONS (INTNumber, INT_type, PMB, Co_PMB, P_FName, P_LName, CO_FName, CO_LName, INT_date, INT_Description)
VALUES
  ('INT01', 'Reinstate', 1234, NULL, 'JUAN', 'CARLOS', NULL, NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT02', 'Reinstate', 1235, '1235A', 'JON', 'SMITHY', 'DON', 'SMITHY', '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT03', 'Reinstate', 1236, NULL, 'DILLY', 'DILLY', NULL, NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT04', 'Reinstate', 1237, NULL, 'RANCH', 'DRESSING', NULL, NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT05', 'Reinstate', 1238, NULL, 'SHANG', 'CHI', NULL, NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen')
;


  
INSERT INTO O_INTERACTIONS (INTNumber, INT_type, P_LabelName, CO_LabelName, INT_date, INT_Description)
VALUES
  ('INT06', 'Reinstate', 'JUAN CARLOS 01234', NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT07', 'Reinstate', 'JOHN SMITHY 01235', 'DON SMITHY 01235A', '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT08', 'Reinstate', 'DILLY DILLY 01236', NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT09', 'Reinstate', 'RANCH DRESSING 01237', NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen'),
  ('INT10', 'Reinstate', 'SHANG CHI 01238', NULL, '2000-01-01', 'ich bin der Teufel und ich habe sauerkraut in meinem Lederhosen')
  ;
