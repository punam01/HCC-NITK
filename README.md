# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```
This README file provides an overview and instructions for the Health Care Center project, which is developed using Ruby on Rails. The project aims to create a web application that functions similarly to a hospital management system, facilitating the management of patient records, appointments, and other related tasks.
```
## Features
### The Health Care Center project includes the following key features:

1. User Authentication: Users can sign up, log in, and manage their accounts.
2. Role-based Access Control: Different user roles (e.g., admin, doctor, nurse) have different levels of access and permissions within the system.
3. Patient Management: Allows the creation, modification, and deletion of patient records, including personal information, medical history, and contact details.
4. Appointment Scheduling: Provides a calendar-based interface for scheduling and managing patient appointments.
5. Doctor and Staff Management: Enables the administration of doctors and staff members, including their profiles, specialties, and availability.
6. Billing and Invoicing: Supports generating bills and invoices for patient services.
7. Prescription Management: Allows doctors to create and manage prescriptions for patients.
8. Reporting and Analytics: Provides various reports and analytics related to patient statistics, appointments, and billing.

## Installation and Setup

### Set up MySQL server

1. Installing MySQL
```
$ sudo apt install mysql-server
$ sudo systemctl start mysql.service
```

2. Configuring MySQL
```
$ sudo mysql
$ ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
$ exit
```

3. Run Security Script
```
$ sudo mysql_secure_installation
```

4. Set up user
```
$ mysql -u root -p
$ CREATE USER '<your_username>'@'localhost' IDENTIFIED BY '<password_of_the_user>';
$ GRANT ALL PRIVILEGES ON * . * TO '<your_username>'@'localhost';
$ ALTER USER '<your_username>'@'localhost' IDENTIFIED WITH mysql_native_password BY '<password_of_the_user>';
$ FLUSH PRIVILEGES;
```

### To set up the Health Care Center project locally, follow these steps:

1. Clone the project repository from GitHub:
```bash
$ git clone https://github.com/your-username/HCC-NITK.git
```
2. Navigate to the project directory:
```bash
$ cd HCC-NITK
```
3. Set to required Ruby version:
- Check which ruby version you are currently on:
    ```
    $ ruby -v
   
    ```
- In case, it is different from the version used in the project (check in Gemfile), you need to switch to correct version:
    ```
    $ asdf local ruby 3.1.3
    ```
4. Install the required gems:
```bash
$ bundle install
```
5. Set up config <br>
Go to "./config/database.yml"
Change Username and Password to your MySQL username and password:
```
username: <user_name>
password: <password>
```
5. Set up the database by running the following commands:
```bash
$ rails db:create
$ rails db:migrate
```
6. Start the Rails server:
```bash
$ rails server
-- or --
$ rails s
```
7. Open your web browser and visit http://localhost:3000 to access the Health Care Center application.

## Contributing

If you wish to contribute to the Health Care Center project, please follow these guidelines:

1. Fork the repository on GitHub.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and push the branch to your fork.
4. Submit a pull request detailing your changes and describing their purpose.
