INSERT INTO departments (name) VALUES ('department_name');

INSERT INTO roles (title, salary, department_id) VALUES ('role_title', salary_value, department_id_value);


INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES ('first_name_value', 'last_name_value', role_id_value, manager_id_value);

UPDATE employees SET role_id = new_role_id WHERE id = employee_id;
