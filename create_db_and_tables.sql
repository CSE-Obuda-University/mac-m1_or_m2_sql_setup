-- create db
CREATE DATABASE HR;
-- create regions table

CREATE TABLE regions (
  region_id INT PRIMARY KEY,
  region_name VARCHAR(50)
);

-- create countries table

CREATE TABLE countries (
  country_id VARCHAR(2) PRIMARY KEY,
  country_name VARCHAR(40),
  region_id INT,
  FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- create locations table

CREATE TABLE locations (
  location_id INT PRIMARY KEY,
  street_address VARCHAR(50),
  postal_code VARCHAR(12),
  city VARCHAR(30),
  state_province VARCHAR(25),
  country_id VARCHAR(2),
  FOREIGN KEY (country_id) REFERENCES countries(country_id)
);


-- create jobs table

CREATE TABLE jobs (
  job_id VARCHAR(10) PRIMARY KEY,
  job_title VARCHAR(35) NOT NULL,
  min_salary FLOAT,
  max_salary FLOAT
);

--  creeate departments table

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL,
  manager_id INT,
  location_id INT,
  FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- create employees table

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name CHAR(50),
  last_name CHAR(50),
  email CHAR(50),
  phone_number CHAR(20),
  hire_date DATE,
  job_id VARCHAR(10),
  salary FLOAT,
  commission_pct FLOAT,
  manager_id INT,
  department_id INT,
  FOREIGN KEY (job_id) REFERENCES jobs(job_id),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- create job_history table
CREATE TABLE job_history (
  employee_id INT,
  start_date DATE,
  end_date DATE,
  job_id VARCHAR(10),
  department_id INT,
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (job_id) REFERENCES jobs(job_id),
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
