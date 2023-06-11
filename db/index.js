// Required dependencies
const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");

// MySQL connection configuration
const connection = mysql.createConnection({
    host: "localhost",
    port: "301",
    user: "root",
    password: "1234",
    database: "employee_trackerDB"
});

// Connection and initiation of the program
connection.connect(err => {
    if (err) throw err;
    firstPrompt();
});

// Initial function to prompt the user
function firstPrompt() {
    inquirer.prompt([
        {
            type: 'list',
            name:'userChoice',
            message: 'What would you like to do?',
            choices: [
                'View All Employees',
                'View Employees By Department',
                'Add Employee',
                'Remove Employee',
                'Update Employee Role',
                'Add Role',
                'Add Department',
                'Exit'
            ]
        }
    ]).then(res => {
        switch(res.userChoice) {
            case 'View All Employees':
                viewAllEmployees();
                break;
            case 'View Employees By Department':
                viewEmployeesByDepartment();
                break;
            case 'Add Employee':
                addEmployee();
                break;
            case 'Remove Employee':
                removeEmployee();
                break;
            case 'Update Employee Role':
                updateEmployeeRole();
                break;
            case 'Add Role':
                addRole();
                break;
            case 'Add Department':
                addDepartment();
                break;
            case 'Exit':
                connection.end();
                break;
        }
    }).catch(err => {
        if(err) throw err;
    });
}
