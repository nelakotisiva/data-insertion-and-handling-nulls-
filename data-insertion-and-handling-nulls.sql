-- Create a sample database schema
CREATE TABLE Employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(255) UNIQUE,
    department TEXT,
    salary REAL DEFAULT 30000,
    hire_date DATE
);

-- 1. INSERT INTO: Adding data
INSERT INTO Employees (emp_id, name, email, department, salary, hire_date)
VALUES
(1, 'Alice Johnson', 'alice@example.com', 'HR', 50000, '2022-05-01'),
(2, 'Bob Smith', 'bob@example.com', 'Engineering', NULL, '2023-01-15'),  -- NULL salary
(3, 'Charlie Brown', NULL, 'Finance', 45000, NULL),                      -- NULL email and hire date
(4, 'Daisy Lee', 'daisy@example.com', NULL, DEFAULT, '2023-06-01');      -- NULL department, default salary

-- 2. UPDATE: Set values where needed
UPDATE Employees
SET salary = 55000
WHERE emp_id = 2;

UPDATE Employees
SET department = 'Finance'
WHERE emp_id = 4 AND department IS NULL;

-- 3. DELETE: Remove unwanted or test data
DELETE FROM Employees
WHERE email IS NULL;

-- View the final data
SELECT * FROM Employees;
