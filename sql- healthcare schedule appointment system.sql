create database project
use project
create table patient ( patient_id int primary key, patient_name varchar(20), Gender varchar(10),DOB date, phone_number varchar(20))
create table department (dept_id int primary key, dept_name varchar(20))
create table Doctor (doctor_id int primary key,doctor_name varchar(20),dept_id int, phone varchar(20),specialization varchar(200),foreign key (dept_id) references department(dept_id))
create table appointments( appoint_id int primary key, patient_id int, doctor_id int, appoint_date date, appoint_time time, foreign key (patient_id) references patient(patient_id), foreign key (doctor_id) references doctor(doctor_id))
create table schedules (schedule_id int primary  key, doctor_id int, available_date date , availabletime time, foreign key (doctor_id) references doctor(doctor_id))
create table payments ( payment_id int primary key,appoint_id int, amount decimal (10,2),payment_date date, payment_method varchar(50), foreign key (appoint_id) references appointments(appoint_id))
create table admin (admin_id int  primary key auto_increment, username varchar(30) unique, password  varchar(100))

INSERT INTO Patient VALUES
(1, 'Ravi Kumar', 'Male', '1990-05-12', '9876543210'),
(2, 'Anita Sharma', 'Female', '1992-07-18', '9876543211'),
(3, 'Suresh Reddy', 'Male', '1985-02-22', '9876543212'),
(4, 'Sneha Verma', 'Female', '1998-10-09', '9876543213'),
(5, 'Mohit Jain', 'Male', '1979-11-05', '9876543214'),
(6, 'Kavya Nair', 'Female', '1995-03-30', '9876543215'),
(7, 'Rajesh Singh', 'Male', '1983-08-14', '9876543216'),
(8, 'Pooja Mehta', 'Female', '1996-06-25', '9876543217'),
(9, 'Amitabh Roy', 'Male', '1991-01-17', '9876543218'),
(10, 'Divya Joshi', 'Female', '1993-09-13', '9876543219'),
(11, 'Nikhil Rao', 'Male', '1988-12-28', '9876543220'),
(12, 'Neha Kapoor', 'Female', '1999-04-10', '9876543221'),
(13, 'Aditya Chauhan', 'Male', '1994-07-02', '9876543222'),
(14, 'Meena Bhat', 'Female', '1987-05-15', '9876543223'),
(15, 'Karan Malhotra', 'Male', '1990-06-19', '9876543224'),
(16, 'Priya Desai', 'Female', '1997-03-03', '9876543225'),
(17, 'Sanjay Pillai', 'Male', '1982-11-11', '9876543226'),
(18, 'Ritu Khanna', 'Female', '1996-01-22', '9876543227'),
(19, 'Manoj Das', 'Male', '1993-08-08', '9876543228'),
(20, 'Ayesha Siddiqui', 'Female', '1992-12-05', '9876543229'),
(21, 'Rahul Dev', 'Male', '1989-09-27', '9876543230'),
(22, 'Tanvi Shah', 'Female', '1995-10-15', '9876543231'),
(23, 'Vivek Agarwal', 'Male', '1991-06-01', '9876543232'),
(24, 'Snehal Patil', 'Female', '1994-02-17', '9876543233'),
(25, 'Arjun Menon', 'Male', '1986-03-12', '9876543234');
select * from patient

INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'ENT'),
(4, 'Orthopedics'),
(5, 'Pediatrics'),
(6, 'Dermatology'),
(7, 'Oncology'),
(8, 'Radiology'),
(9, 'Gastroenterology'),
(10, 'Urology'),
(11, 'Psychiatry'),
(12, 'Endocrinology'),
(13, 'Pulmonology'),
(14, 'Nephrology'),
(15, 'Ophthalmology'),
(16, 'Gynecology'),
(17, 'Anesthesiology'),
(18, 'Rheumatology'),
(19, 'Allergy'),
(20, 'General Surgery'),
(21, 'Plastic Surgery'),
(22, 'Hematology'),
(23, 'Infectious Disease'),
(24, 'Sports Medicine'),
(25, 'Pathology');

INSERT INTO Doctor (doctor_id, doctor_name, dept_id, phone, specialization) VALUES
(1, 'Dr. A. Sharma', 1, '9876500011', 'Cardiologist'),
(2, 'Dr. B. Mehta', 2, '9876500012', 'Neurologist'),
(3, 'Dr. C. Rao', 3, '9876500013', 'ENT Specialist'),
(4, 'Dr. D. Verma', 4, '9876500014', 'Orthopedic Surgeon'),
(5, 'Dr. E. Nair', 5, '9876500015', 'Pediatrician'),
(6, 'Dr. F. Reddy', 6, '9876500016', 'Dermatologist'),
(7, 'Dr. G. Desai', 7, '9876500017', 'Oncologist'),
(8, 'Dr. H. Kapoor', 8, '9876500018', 'Radiologist'),
(9, 'Dr. I. Pillai', 9, '9876500019', 'Gastroenterologist'),
(10, 'Dr. J. Sinha', 10, '9876500020', 'Urologist'),
(11, 'Dr. K. Joshi', 11, '9876500021', 'Psychiatrist'),
(12, 'Dr. L. Khan', 12, '9876500022', 'Endocrinologist'),
(13, 'Dr. M. Singh', 13, '9876500023', 'Pulmonologist'),
(14, 'Dr. N. Rani', 14, '9876500024', 'Nephrologist'),
(15, 'Dr. O. Das', 15, '9876500025', 'Ophthalmologist'),
(16, 'Dr. P. Jain', 16, '9876500026', 'Gynecologist'),
(17, 'Dr. Q. Ali', 17, '9876500027', 'Anesthesiologist'),
(18, 'Dr. R. Mukherjee', 18, '9876500028', 'Rheumatologist'),
(19, 'Dr. S. Shah', 19, '9876500029', 'Allergist'),
(20, 'Dr. T. Aggarwal', 20, '9876500030', 'General Surgeon'),
(21, 'Dr. U. Bhat', 21, '9876500031', 'Plastic Surgeon'),
(22, 'Dr. V. Thomas', 22, '9876500032', 'Hematologist'),
(23, 'Dr. W. Prasad', 23, '9876500033', 'Infectious Disease Specialist'),
(24, 'Dr. X. Fernandes', 24, '9876500034', 'Sports Medicine Specialist'),
(25, 'Dr. Y. George', 25, '9876500035', 'Pathologist');

INSERT INTO Appointments VALUES
(1, 1, 5, '2025-07-08', '10:00:00'),
(2, 2, 1, '2025-07-09', '11:30:00'),
(3, 3, 4, '2025-07-10', '09:15:00'),
(4, 4, 2, '2025-07-11', '14:00:00'),
(5, 5, 6, '2025-07-08', '15:45:00'),
(6, 6, 3, '2025-07-12', '10:30:00'),
(7, 7, 7, '2025-07-13', '13:00:00'),
(8, 8, 8, '2025-07-14', '09:00:00'),
(9, 9, 9, '2025-07-15', '11:15:00'),
(10, 10, 10, '2025-07-16', '16:00:00'),
(11, 11, 11, '2025-07-17', '12:30:00'),
(12, 12, 12, '2025-07-18', '10:00:00'),
(13, 13, 13, '2025-07-19', '14:45:00'),
(14, 14, 14, '2025-07-20', '11:00:00'),
(15, 15, 15, '2025-07-21', '09:30:00'),
(16, 16, 16, '2025-07-22', '13:15:00'),
(17, 17, 17, '2025-07-23', '10:15:00'),
(18, 18, 18, '2025-07-24', '12:45:00'),
(19, 19, 19, '2025-07-25', '15:00:00'),
(20, 20, 20, '2025-07-26', '11:45:00'),
(21, 21, 21, '2025-07-27', '10:30:00'),
(22, 22, 22, '2025-07-28', '09:45:00'),
(23, 23, 23, '2025-07-29', '13:30:00'),
(24, 24, 24, '2025-07-30', '16:15:00'),
(25, 25, 25, '2025-07-31', '10:00:00');

INSERT INTO Schedules (schedule_id, doctor_id, available_date, availabletime) VALUES
(1, 1, '2025-07-08', '10:00:00'),
(2, 2, '2025-07-08', '11:00:00'),
(3, 3, '2025-07-09', '09:30:00'),
(4, 4, '2025-07-09', '14:00:00'),
(5, 5, '2025-07-10', '10:30:00'),
(6, 6, '2025-07-10', '13:00:00'),
(7, 7, '2025-07-11', '09:00:00'),
(8, 8, '2025-07-11', '15:30:00'),
(9, 9, '2025-07-12', '10:15:00'),
(10, 10, '2025-07-12', '12:45:00'),
(11, 11, '2025-07-13', '11:00:00'),
(12, 12, '2025-07-13', '14:15:00'),
(13, 13, '2025-07-14', '09:45:00'),
(14, 14, '2025-07-14', '13:30:00'),
(15, 15, '2025-07-15', '10:00:00'),
(16, 16, '2025-07-15', '11:30:00'),
(17, 17, '2025-07-16', '09:30:00'),
(18, 18, '2025-07-16', '15:00:00'),
(19, 19, '2025-07-17', '10:45:00'),
(20, 20, '2025-07-17', '13:00:00'),
(21, 21, '2025-07-18', '09:00:00'),
(22, 22, '2025-07-18', '11:15:00'),
(23, 23, '2025-07-19', '10:30:00'),
(24, 24, '2025-07-19', '14:45:00'),
(25, 25, '2025-07-20', '10:00:00');

INSERT INTO Payments (payment_id, appoint_id, amount, payment_date, payment_method) VALUES
(1, 1, 500.00, '2025-07-08', 'Cash'),
(2, 2, 700.00, '2025-07-09', 'Credit Card'),
(3, 3, 600.00, '2025-07-10', 'UPI'),
(4, 4, 750.00, '2025-07-11', 'Cash'),
(5, 5, 550.00, '2025-07-08', 'Debit Card'),
(6, 6, 800.00, '2025-07-12', 'Net Banking'),
(7, 7, 650.00, '2025-07-13', 'Credit Card'),
(8, 8, 700.00, '2025-07-14', 'UPI'),
(9, 9, 620.00, '2025-07-15', 'Cash'),
(10, 10, 900.00, '2025-07-16', 'Credit Card'),
(11, 11, 720.00, '2025-07-17', 'UPI'),
(12, 12, 500.00, '2025-07-18', 'Cash'),
(13, 13, 670.00, '2025-07-19', 'Credit Card'),
(14, 14, 600.00, '2025-07-20', 'Debit Card'),
(15, 15, 700.00, '2025-07-21', 'UPI'),
(16, 16, 800.00, '2025-07-22', 'Cash'),
(17, 17, 900.00, '2025-07-23', 'Credit Card'),
(18, 18, 550.00, '2025-07-24', 'UPI'),
(19, 19, 500.00, '2025-07-25', 'Net Banking'),
(20, 20, 650.00, '2025-07-26', 'Debit Card'),
(21, 21, 720.00, '2025-07-27', 'Cash'),
(22, 22, 600.00, '2025-07-28', 'UPI'),
(23, 23, 580.00, '2025-07-29', 'Credit Card'),
(24, 24, 750.00, '2025-07-30', 'Cash'),
(25, 25, 880.00, '2025-07-31', 'UPI');


alter table doctor add experience int

alter table doctor drop column experience

update patient set phone_number=9836671234 where patient_id=6

delete from payments where payment_id=25

update payments set payment_method="cash-paid" where payment_method ="cash"

SELECT a.appoint_id, a.appoint_date, a.appoint_time, b.patient_name, c.doctor_name FROM Appointments a INNER JOIN Patient b ON a.patient_id = b.patient_id
INNER JOIN Doctor c ON a.doctor_id = c.doctor_id
WHERE a.appoint_date = CURDATE();

SELECT a.dept_name, COUNT(d.doctor_id) AS total_doctors FROM Department a LEFT JOIN Doctor d ON a.dept_id = d.dept_id GROUP BY a.dept_name;

SELECT p.patient_id, p.patient_name, COUNT(DISTINCT a.doctor_id) AS doctors_visited FROM Appointments a JOIN Patient p ON a.patient_id = p.patient_id
GROUP BY p.patient_id, p.patient_name
HAVING COUNT(DISTINCT a.doctor_id) <2;

SELECT payment_id, appoint_id, amount, payment_method, payment_date FROM Payments WHERE payment_method = 'UPI' AND amount > 500 ORDER BY amount DESC;

SELECT COUNT(*) AS total_patients FROM Patient;

SELECT patient_name, phone_number FROM Patient WHERE DOB > '1990-01-01';

SELECT doctor_name, specialization FROM Doctor limit 5

SELECT patient_id, patient_name FROM Patient WHERE patient_name like 'A%'

SELECT doctor_id, doctor_name, specialization FROM Doctor where  specialization is not null;

SELECT DISTINCT d.doctor_id, d.doctor_name from  Doctor d inner join  Appointments a ON d.doctor_id = a.doctor_id;

SELECT a.payment_id, p.patient_name, a.amount, a.payment_method, a.payment_date from Payments a inner join  Appointments b ON a.appoint_id = b.appoint_id
inner join  Patient p ON b.patient_id = p.patient_id;

SELECT patient_id, UPPER(patient_name) AS uppercase_name FROM Patient;

SELECT doctor_id, doctor_name, LENGTH(doctor_name) AS name_length FROM Doctor;

SELECT AVG(amount) AS average_payment FROM Payments;

create view Doctor_Appointment_Count as select d.doctor_name, COUNT(a.appoint_id) AS total_appointments from Doctor d
left join  Appointments a ON d.doctor_id = a.doctor_id group by d.doctor_name;

SELECT appoint_date, COUNT(*) AS total from Appointments GROUP BY appoint_date ORDER BY total desc limit 10

SELECT payment_id, amount, amount * 1.18 AS amount_with_gst FROM Payments;

SELECT payment_id, amount,
CASE
    WHEN amount > 1000 THEN 'High'
    WHEN amount BETWEEN 500 AND 1000 THEN 'Medium'
    ELSE 'Low'
END AS payment_level
FROM Payments;









