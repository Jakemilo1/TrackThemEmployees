-- Select all departments
SELECT 
    id, 
    name 
FROM departments;

-- Select all roles and their corresponding department names
SELECT 
    roles.id, 
    roles.title, 
    departments.name AS department, 
    roles.salary
FROM roles
INNER JOIN departments 
    ON roles.department_id = departments.id;

-- Select all employees, their role and department details, and manager name
SELECT 
    employees.id, 
    employees.first_name, 
    employees.last_name, 
    roles.title, 
    departments.name AS department, 
    roles.salary, 
    CONCAT(managers.first_name, ' ', managers.last_name) AS manager
FROM employees
INNER JOIN roles 
    ON employees.role_id = roles.id
INNER JOIN departments 
    ON roles.department_id = departments.id
LEFT JOIN employees managers 
    ON employees.manager_id = managers.id;

-- Insert new department
INSERT INTO departments 
    (name) 
VALUES 
    ('department_name');

-- Insert new role
INSERT INTO roles 
    (title, salary, department_id) 
VALUES 
    ('role_title', salary_value, department_id_value);

-- Insert new employee
INSERT INTO employees 
    (first_name, last_name, role_id, manager_id) 
VALUES 
    ('first_name_value', 'last_name_value', role_id_value, manager_id_value);

-- Update employee role
UPDATE employees 
SET 
    role_id = new_role_id 
WHERE 
    id = employee_id;


