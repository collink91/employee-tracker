INSERT INTO departments (id, name)
VALUES (1, "Management"),
       (2, "Finance"),
       (3, "Engineering"),
       (4, "Sales"),
       (5, "Admin");


INSERT INTO roles (id, title, salary, department_id)
VALUES 
    --Management Level Roles 
        (1, "CEO", 1000000, 1),
       (2, "CFO", 800000, 1),
       (3, "COO", 800000, 1),
       (4, "Lead Engineer", 600000, 1),
       (5, "Human Resources", 300000, 1),
        (6, "Head of Sales", 500000, 1),
      --Non-Management Roles
       (7, "Accountant", 200000, 2),
       (8, "Engineer", 200000, 3),
       (9, "Sales Assistant", 80000, 4),
       (10, "Secretary", 125000, 5);

-- Sample managers

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Collin", "Kerr", 1, NULL),
       ("Matthew", "Grogan", 2, NULL),
       ("Stetson", "Bennett", 3, NULL),
       ("Nakobe", "Dean", 4, NULL);

-- Sample Employees 

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
       ("Jordan", "Davis", 9, 6),
       ("Kelee", "Ringo", 10, 1),
       ("James", "Cook", 8, 5);