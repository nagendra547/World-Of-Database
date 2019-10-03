# Setup MYSQL database
brew install mysql

# Start the database
/usr/local/bin/mysql.server start

# Stop the db
/usr/local/bin/mysql.server stop

# Login 
mysql -u root -p
(No password)

# Database use
use mysql

# Login with database used as mysql in a single line
mysql -u root -p  mysql;

# Load Mysql Create table
source DDL.sql

# Insert data
source DML.sql


