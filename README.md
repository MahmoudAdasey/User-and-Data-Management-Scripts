Overview

This repository contains two Bash scripts designed for managing user data and creating system user accounts based on input stored in a CSV file. The workflow includes collecting user information, saving it to a file, and generating user accounts with random passwords.

Script Details

1. data.sh

Purpose: Collects user information and saves it to a CSV file.

Functionality:

Prompts the user for a username and full name.

Stores the entered data in the employee.csv file after confirmation.

How It Works

The script prompts for the username and full name.

After data entry, it asks for confirmation (y/n).

If confirmed, the data is appended to employee.csv.

Outputs a success message.

Example Input/Output

Enter Your Username: johndoe
Enter Your Full-name: John Doe
please, confirm that you have entered the correct information. Is everything correct [y/n] y
Your data has been stored successfully

2. user.sh

Purpose: Reads user data from employee.csv, creates system user accounts, and generates random passwords.

Functionality:

Checks if the script is executed as root.

Validates the existence of employee.csv.

Creates system user accounts based on the data in employee.csv.

Generates random passwords for the new accounts and forces password change on the first login.

Logs the created usernames and passwords in out.txt.

How It Works

Validates if the script is run as root.

Reads the employee.csv file line by line.

For each line:

Creates a user account with the provided username and full name.

Generates a random password and sets it for the user.

Forces the user to change the password on the first login.

Logs the created user details in out.txt.

Outputs the progress and details for each created user.

Example Output

User created: johndoe
Full Name: John Doe
Random Password: aBcDeFg12345
---------------------------

Prerequisites

Root Privileges:

The user.sh script must be executed with root privileges.

Files:

Ensure the employee.csv file exists and contains valid user data in the format: username,full_name.

Dependencies:

openssl for generating random passwords.

Usage

Step 1: Collect User Data

Run the data.sh script to collect user information and store it in employee.csv:

./data.sh

Step 2: Create System Users

Run the user.sh script to create system users based on the data in employee.csv:

sudo ./user.sh

Error Handling

If data.sh detects incorrect input, it exits without saving data.

If user.sh is not run as root, it will terminate with an error message.

If employee.csv is missing, user.sh will terminate with an error message.

Files

employee.csv: Stores the collected user data in username,full_name format.

out.txt: Logs the created usernames and their randomly generated passwords.
