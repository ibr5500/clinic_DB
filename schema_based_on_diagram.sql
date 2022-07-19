-- Create database:
create DATABASE clinic_DB;

-- Create patients table
Create table patients (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100) NOT NULL,
  date_of_birth date NOT NULL
);


