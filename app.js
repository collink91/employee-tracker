const express = require("express");
const mysql = require ("mysql2")
const inquirer = require("inquirer")
const consoleTable = require ("console.table")

const PORT = process.env.PORT || 3001;

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
  });

  const db = connection.promise();

  const listOptions = [
    {
      type: "list",
      message: "What would you like to do?",
      choices: [
        { value: "view-employees", name: "View All Employees" },
        { value: "add-employee", name: "Add Employee" },
        { value: "update-employee", name: "Update Employee Role" },
        { value: "view-roles", name: "View All Roles" },
        { value: "add-role", name: "Add Role" },
        { value: "view-departments", name: "View All Departments" },
        { value: "add-department", name: "Add Department" },
      ],
      name: "options",
    },
  ];