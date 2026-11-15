//Q1
create database HospitalDB;
use hospitaldb;
 CREATE TABLE Patient (
    ->     PatientID INT PRIMARY KEY,
    ->     PatientName VARCHAR(50) NOT NULL,
    ->     Gender VARCHAR(10),
    ->     Age INT,
    ->     City VARCHAR(30),
    ->     Disease VARCHAR(50),
    ->     DoctorName VARCHAR(50),
    ->     TreatmentCost DECIMAL(10,2),
    ->     AdmissionDate DATE
    -> );
 INSERT INTO Patient
    -> (PatientID, PatientName, Gender, Age, City, Disease,
    ->  DoctorName, TreatmentCost, AdmissionDate)
    -> VALUES
    -> (101, 'Arun', 'Male', 25, 'Vavuniya', 'Fever', 'Dr. Kumar', 5000, '2026-01-05'),
    -> (102, 'Kaviya', 'Female', 32, 'Jaffna', 'Diabetes', 'Dr. Silva', 15000, '2026-01-08'),
    -> (103, 'Nimal', 'Male', 45, 'Mannar', 'Heart Disease', 'Dr. Kumar', 50000, '2026-01-10'),
    -> (104, 'Divya', 'Female', 28, 'Vavuniya', 'Fever', 'Dr. Ravi', 4000, '2026-01-12'),
    -> (105, 'Suresh', 'Male', 38, 'Jaffna', 'Diabetes', 'Dr. Silva', 12000, '2026-01-15'),
    -> (106, 'Tharshini', 'Female', 50, 'Mannar', 'Heart Disease', 'Dr. Kumar', 60000, '2026-01-18'),
    -> (107, 'Kamal', 'Male', 22, 'Vavuniya', 'Fever', 'Dr. Ravi', 3500, '2026-01-20'),
    -> (108, 'Anu', 'Female', 41, 'Jaffna', 'Diabetes', 'Dr. Silva', 18000, '2026-01-22'),
    -> (109, 'Siva', 'Male', 35, 'Mannar', 'Fever', 'Dr. Ravi', 4500, '2026-01-25'),
    -> (110, 'Rani', 'Female', 29, 'Vavuniya', 'Diabetes', 'Dr. Kumar', 14000, '2026-01-28'),
    -> (111, 'Ravi', 'Male', 55, 'Jaffna', 'Heart Disease', 'Dr. Silva', 55000, '2026-02-02'),
    -> (112, 'Amali', 'Female', 24, 'Mannar', 'Fever', 'Dr. Ravi', 3000, '2026-02-05');

 show tables;
//Q2
desc patient;

//Q3
select PatientName,Disease,TreatmentCost
from patient;

//q4
select *
from patient
where  City = 'Vavuniya';

//Q5
select PatientName,Age
from patient
where Gender = 'Female' and Age > 30 ;

//Q6
select *
from patient
where Disease = 'Diabetes' or Disease = 'Fever';

//Q7
select *
from patient
where City != 'Jaffna';

//Q8
select *
from patient
where TreatmentCost > 10000 and Age > 30;

//Q9
select *
from patient
group by TreatmentCost desc;

//Q10
select Max(TreatmentCost)
from Patient;

//Q11
select Sum(TreatmentCost)
as Total_Treatment_Cost
from patient;

//Q12
select AVG(TreatmentCost)
as Average_Treatment_Cost_Of_Diabetes
from patient
where Disease = 'Diabetes';

//Q13
select count(*)
as Number_Of_Patient
from patient;

//Q14
select sum(TreatmentCost)
as Total_Treatment_Cost_Of_Diseases
from patient
group by Disease;

//Q15
select City,count(*)
as Number_Of_Patient_Each_City
from patient
group by City;

//Q16
select Disease,AVG(TreatmentCost)
as Average_Treatment_Cost_Of_Diseases
from patient
where TreatmentCost > 5000
order by Average_Treatment_Cost_Of_Diseases desc;

//Q17
update patient
set TreatmentCost = '6000'
where PatientID = '101';

//Q18
 alter table Patient 
 add RoomNumber INT;

alter table Patient 
modify RoomNumber VARCHAR;

UPDATE Patient SET RoomNumber = PatientID - 100;
