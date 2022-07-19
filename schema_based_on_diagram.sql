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

-- Create treatments table
Create table treatments (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL
);

-- Create invoices table
Create table invoices (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  total_amount DECIMAL NOT NULL,
  generated_at timestamp NOT NULL,
  payed_at timestamp NOT NULL,
  medical_history_id INT,
  CONSTRAINT fk_medical_history
      FOREIGN KEY(medical_history_id) 
	    REFERENCES medical_histories(id)
);