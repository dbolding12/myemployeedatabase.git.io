const mysql = require("mysql");
const axios = require("axios");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  host: "localhost",

  port: 3306,

  user: "root",

  password: "Dbabzb08",
  database: "employees"
});

connection.connect(function(err) {
    if (err) throw err;
    runSearch();
  });

  function runSearch() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What Data would you like to View or select Leave to exit?",
            choices: [
                "View Departments",
                "View Roles",
                "View Employees",
                "Update Employees",
                "Leave"
              ]
        })
        .then(function (answer) {
            switch (answer.action) {
                case "View Departments":
                    viewDepartments();
                    break;

                case "View Roles":
                    viewRoles();
                    break;

                case "View Employees":
                    viewEmployees();
                    break;

                case "Update Employees":
                    updateEmployees();

                case "Leave":
                    connection.end();
                    break
            }
        })
}

function viewDepartments() {
    let query = "select * from departments";
    connection.query(query, function (err, res) {
        if (err) throw err;

        console.table(res)
        runSearch();
    })
}

function viewEmployees() {
    let query = 
    "select first_name, last_name, title, salary from workers left join roles on workers.role_id=roles.id";
  
    connection.query(query, function (err, res) {
        if (err) throw err;

        console.table(res)
        runSearch();
    })
}

function viewRoles() {
    let query = "select * from roles";
    connection.query(query, function (err, res) {
        if (err) throw err;

        console.table(res)
        runSearch();
    })
}


const updateEmployees = () => {

    function updateEmployees() {
        inquirer
            .prompt({
                name: "action",
                type: "list",
                message: "Pick a Employee to Update or select Leave to exit?",
                choices: [
                    "Zoe Bolding",
                    "Ashley Bolding",
                    "David Bolding",
                    "Trey Bolding",
                    "Leave"
                  ]
            })
           
    }
    updateEmployees();  
}