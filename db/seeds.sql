-- Seed departments table
INSERT INTO departments (name) VALUES ('Sales');
INSERT INTO departments (name) VALUES ('HR');
INSERT INTO departments (name) VALUES ('Engineering');

-- Seed roles table, assuming the IDs for the departments 'Sales', 'HR', and 'Engineering' are 1, 2, and 3 respectively
INSERT INTO roles (title, salary, department_id) VALUES ('Sales Manager', 70000, 1);
INSERT INTO roles (title, salary, department_id) VALUES ('HR Associate', 50000, 2);
INSERT INTO roles (title, salary, department_id) VALUES ('Software Engineer', 90000, 3);

-- Seed employees table,for the roles 'Sales Manager', 'HR Associate', and 'Software Engineer'
-- For the manager_id, we're assuming that there are some existing employees who are managers. If not, these can be set to NULL
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('John', 'Doe', 1, NULL);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Jane', 'Doe', 2, 1);
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('Jim', 'Smith', 3, 1);

-- Update an employee's role
UPDATE employees SET role_id = 3 WHERE id = 1;

