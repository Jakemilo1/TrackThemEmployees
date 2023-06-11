

## Description
This is a Node.js command-line application that allows the user to manage a company's employees using node, inquirer, and MySQL. The application is organized with functionality to view and manage the departments, roles, and employees in your company to organize and plan your business.

## Installation
1. Clone the repository to your local machine.
2. Run `npm install` to install all dependencies. 
3. Ensure that you have MySQL installed on your machine and that it's running.
4. Run the `schema.sql` file in your MySQL client to set up the database.
5. (Optional) Run the `seed.sql` file in your MySQL client to populate the database with dummy data.
6. Create a `.env` file in the root of the project and provide your MySQL credentials as follows:
   ```
   DB_USER=your_username
   DB_PASSWORD=your_password
   DB_NAME=your_database_name
   ```
7. Run the application with the command `node app.js`.

## Usage
Use the arrow keys to navigate through the options in the command line prompts. Choose from viewing, adding, or updating employee, role, or department details. 

## Contributing
Please feel free to fork/clone this repository if you wish to contribute!

## Tests
At present, there are no tests for this project.

## License
[MIT](https://choosealicense.com/licenses/mit/)

---
Please modify this template to suit the actual details of your project. Be sure to include any additional information that you think would be helpful to people who may use your application.