# SQL - PSQL Database - Design, Setup, and Querying

## Background
In this exericse, you take on the role of a data engineer at Pewlett Hackard, exploring and analyzing employee data from the 1980s and 1990s. You are using the tool [PgAdmin4](https://www.pgadmin.org/) to build, and manage a database as well as manually import CSV files and run queries to retrieve the following information:
[requested-information.md](https://github.com/robert-z-lehr/Example-SQL-Database/blob/main/requested-information/requested-information.md)

## Workflow
- [0] Fix errors as they arise and use version control
- [1] Find data (e.g. - CSV files)
- [2] Create project directory folders
- [3] Gain access to necessary tools, remoately installed locally ([VSCode](https://code.visualstudio.com/), [PgAdmin4](https://www.pgadmin.org/download/), [PSQL](https://www.postgresql.org/download/), [QuickDBD](https://www.quickdatabasediagrams.com/), [GitHub](https://github.com/))
- [4] Use [QuickDBD](https://app.quickdatabasediagrams.com/#/) to generate database design
- [5] Build database in [PgAdmin4](https://www.pgadmin.org/download/) according to database design
    - [i] Launch PgAdmin4
    - [ii] Set ip Master Password
    - [iii] Add New Server (Right click on Servers > Register > Server...)
    - [iv] In the "General" tab, enter a name for the server
    - [v] In the "Connection" tab, enter Host: "localhost", Port: "5432", username: "postgres", pswd: your psql password
    - [vi] Save and Connect
    - [vii] Click > "Servers" v "Databases" -> Right-click > "Create" > "Database..."
    - [viii] Enter database name and other optional details and click "Save"
    - [ix] Click your database > Schemas > public > Tables > Right-click Tables > Create > Table > Name table and other optional details > click "Save"
- [6] Import data to database 
- [7] Execute queries to return desired information from database
- [8] Write project contextual information and workflow in README.md
- [9] Write answeres to exeucted queries in answered-question.md

![Database Design](https://github.com/robert-z-lehr/Example-SQL-Database/raw/main/database-design/QuickDBD-export.png)

## Tools
- [VSCode](https://code.visualstudio.com/)
- [PSQL](https://www.postgresql.org/)
- [PgAdmin4](https://www.pgadmin.org/)
- [QuickDBD](https://www.quickdatabasediagrams.com/)

