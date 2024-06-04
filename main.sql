CREATE SCHEMA IF NOT EXISTS dep_structure;

CREATE TABLE IF NOT EXISTS dep_structure.Departments
(
    DepartmentID       INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name               VARCHAR(150) unique NOT null
    --head               INTEGER UNIQUE references dep_structure.Employees(EmployeeID)
);

CREATE TABLE IF NOT EXISTS dep_structure.Employees
(
    EmployeeID         INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name               VARCHAR(50) NOT null,
    DepartmentID       INTEGER NOT null references dep_structure.Departments,
    bossID             INTEGER unique references dep_structure.Employees(EmployeeID)
    
);

--alter table dep_structure.Employee 
--add DepartmentID INTEGER UNIQUE references dep_structure.Department; --CIRCULAR FK!

/*CREATE TABLE IF NOT EXISTS dep_structure.DepartmentsHeads
(
    DepartmentID       INTEGER references dep_structure.Department,
    head               INTEGER references dep_structure.Employee(EmployeeID),
    primary key (EmployeeID, DepartmentID)
);*/