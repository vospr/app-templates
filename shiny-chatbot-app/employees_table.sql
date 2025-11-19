-- Databricks SQL script to create and populate the employees table for the Employee Directory Chatbot.
-- Adjust catalog and schema qualifiers below as needed (defaults assume current catalog/schema).

CREATE TABLE IF NOT EXISTS employees (
  id INT GENERATED ALWAYS AS IDENTITY,
  name STRING,
  department STRING,
  role STRING,
  start_date DATE
);

TRUNCATE TABLE employees;

INSERT INTO employees (name, department, role, start_date) VALUES
  ('Alice', 'Data Analytics', 'Engineer', DATE '2022-01-15'),
  ('Bob', 'Data Science', 'Analyst', DATE '2023-03-10'),
  ('Carol', 'IT', 'Support', DATE '2021-07-22');

