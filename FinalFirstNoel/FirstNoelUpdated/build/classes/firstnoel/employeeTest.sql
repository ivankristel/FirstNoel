DROP TABLE IF EXISTS employee;

CREATE TABLE IF NOT EXISTS employee(e_number INT PRIMARY KEY AUTO_INCREMENT, 
    e_name VARCHAR(25), e_gender VARCHAR(5), e_age VARCHAR(5)) ENGINE=InnoDB;

INSERT INTO employee(e_number, e_name, e_gender, e_age) VALUES(1, 'Julian Fabic', M, 20);

