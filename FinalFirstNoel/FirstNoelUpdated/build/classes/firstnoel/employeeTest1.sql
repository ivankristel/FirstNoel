CREATE DATABASE firstnoel;
use firstnoel;
GRANT ALL ON firstnoel.* TO 'lian'@'localhost';

DROP TABLE IF EXISTS employeeService,orderService,clientOrder,employee,client,service;

 

CREATE TABLE IF NOT EXISTS employee(e_number INT PRIMARY KEY AUTO_INCREMENT, e_name VARCHAR(25), e_status BOOLEAN,

e_gender VARCHAR(5), e_birthday DATE, e_address VARCHAR(75)) ENGINE=InnoDB;

 

CREATE TABLE IF NOT EXISTS client(c_number INT PRIMARY KEY AUTO_INCREMENT,

c_name VARCHAR(25), c_gender VARCHAR(5), c_birthday DATE, c_occupation VARCHAR(20), c_contactNumber1 VARCHAR(15), c_contactNumber2 VARCHAR(15), c_address VARCHAR(75)) ENGINE=InnoDB;

 

CREATE TABLE IF NOT EXISTS service(s_number INT PRIMARY KEY AUTO_INCREMENT, s_name VARCHAR(20), s_description VARCHAR(100)) ENGINE = InnoDB;

 

CREATE TABLE IF NOT EXISTS clientOrder (o_number INT PRIMARY KEY AUTO_INCREMENT, o_date DATE, o_time VARCHAR(20), clientID INT, FOREIGN KEY(clientID) REFERENCES client(c_number) ON DELETE CASCADE)ENGINE=InnoDB;

 

CREATE TABLE IF NOT EXISTS orderService (OrderNum INT, ServiceNum INT, EmployNum INT, FOREIGN KEY(OrderNum) References clientOrder(o_number), FOREIGN KEY(ServiceNum) REFERENCES service(s_number), FOREIGN KEY(EmployNum) REFERENCES employee(e_number) ON DELETE CASCADE)ENGINE=InnoDB;

 

CREATE TABLE IF NOT EXISTS employeeService (EmployNum INT, ServiceNum INT, FOREIGN KEY(EmployNum) REFERENCES employee(e_number), FOREIGN KEY(ServiceNum) REFERENCES service(s_number) ON DELETE CASCADE)ENGINE=InnoDB;