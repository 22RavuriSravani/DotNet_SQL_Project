-- Create Database
CREATE DATABASE EmployeeProjectDB;
GO

-- Use the database
USE EmployeeProjectDB;
GO

-- Create Department table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100)
);
GO

-- Create Employee table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DepartmentID INT,
    Email NVARCHAR(100),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
GO

-- Insert into Departments
INSERT INTO Departments (DepartmentName)
VALUES ('Engineering'), ('HR'), ('Marketing');
GO

-- Insert into Employees
INSERT INTO Employees (FirstName, LastName, DepartmentID, Email)
VALUES 
('John', 'Doe', 1, 'john.doe@example.com'),
('Jane', 'Smith', 2, 'jane.smith@example.com'),
('Alice', 'Johnson', 3, 'alice.johnson@example.com');
GO



--Testing  By Commiting Again 