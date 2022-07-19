-- Create database:
create DATABASE clinic_DB;

-- Create patients table
Create table patients (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100) NOT NULL,
  date_of_birth date NOT NULL
);

-- Create medical_histories table
CREATE TABLE medical_histories (
	id INT PRIMARY KEY NOT NULL,
	admitted_at TIMESTAMP,
	patient_id INT, 
    CONSTRAINT fk_patient
  	FOREIGN KEY(patient_id)
  		REFERENCES patients(id),
		status VARCHAR
);


