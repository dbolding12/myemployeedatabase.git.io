
INSERT INTO departments
    (name)
VALUES
    ('Accounting and Finance'),
    ('Executive'),
    ('Human Reesources'),
    ('Operations');

INSERT INTO roles
    (title, salary, department_id)
VALUES
    ('Chief Financial Officer', 300000, 2),
    ('Chief Executive Officer', 500000, 2),
    ('Cheif Human Resource Officer', 200000, 2),
    ('Treasurer', 100000, 1),
    ('Chief Operation Officer', 275000, 1),
    ('Project Maanger', 105000, 3),
    ('Director', 100000, 4),
    ('Accountant', 40000, 1);

INSERT INTO workers
    (first_name, last_name, role_id, manager_id)
VALUES
    ('David', 'Bolding', 1, NULL),
    ('Zoe', 'Bolding', 2, 1),
    ('Ashley', 'Bolding', 3, NULL),
    ('William', 'Bolding', 4, 3),
    ('Gladys', 'Bolding', 5, NULL),
    ('Jaylen', 'McCier', 6, 5),
    ('Javier', 'McCier', 7, NULL),
    ('Angela', 'Johnson', 8, 7);