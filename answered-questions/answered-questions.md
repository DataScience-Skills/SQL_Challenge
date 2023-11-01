# Analysis of Pewlett-Hackard Employee Database

## SQL Comments Syntax Reference:
-- SQL comment, single line

/* SQL comment,
 multi-line */

## 1. List employee numbers, last names, first names, sex, and salary.
- **ANSWER:**

|employee_number|last_name    |first_name    |sex  |salary|
|---------------|-------------|--------------|-----|------|
|10001          |"Facello"    |	"Georgi"   |"M"  |60117   |
|10005          |"Maliniak"   |	"Kyoichi"  |"M"  |78228   |
|10010          |"Piveteau"   |	"Duangkaew"|"F"  |72488   |
|...            |...          |...         |...  |...     |
|...            |...          |...         |...  |...     |
|...            |...          |...         |...  |...     |
|499985         |"Lukaszewicz"|"Gila"      |"M"  |40000   |
|499987	        |"Dusink"     |"Rimli"     |"F"  |52282   |
|499998	        |"Breugel"    |"Patricia"  |"M"  |40000   |


- **QUERY:**

<pre>
'''
SELECT employees.employee_number, last_name, first_name, sex, salary
FROM employees
JOIN salaries ON employees.employee_number = salaries.employee_number;
'''
</pre>

## 2. List employees' first names, last names, and hire dates, respecitvely, for the employees hired in 1986.
- **ANSWER:**

|first_name|last_name    |hire_date   |
|----------|-------------|------------|
|"Eran"	   |"Cusworth"   |"1986-11-14"|
|"Bojan"   |"Zallocco"	 |"1986-10-14"|
|"Nevi     |"Demizu"	 |"1986-05-18"|
|...       |...          |...         |
|...       |...          |...         |
|...       |...          |...         |
|"Yishay"  |"Maksimenko" |"1986-01-27"|
|"Yannik"  |"Ranai"      |"1986-04-06"|
|"Chenyi"  |"Orlowska"   |"1986-12-25"|

- **QUERY:**

<pre>
'''
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
'''
</pre>

## 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
- **ANSWER:**


- **QUERY:**

<pre>
'''
SELECT department_manager.department_number, departments.department_name, department_manager.employee_number, employees.last_name, employees.first_name
FROM department_manager
JOIN departments ON department_manager.department_number = departments.department_number
JOIN employees ON department_manager.employee_number = employees.employee_number;
'''
</pre>

## 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- **ANSWER:**


- **QUERY:**

<pre>
'''
SELECT department_employees.employee_number, employees.last_name, employees.first_name, departments.department_name
FROM department_employees
JOIN employees ON department_employees.employee_number = employees.employee_number
JOIN departments ON department_employees.department_number = departments.department_number;
'''
</pre>

## 5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- **ANSWER:**


- **QUERY:**

<pre>
'''
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
'''
</pre>

## 6. List each employee in the Sales department, including their employee number, last name, and first name.
- **ANSWER:**


- **QUERY:**

<pre>
'''
SELECT employees.employee_number, employees.last_name, employees.first_name
FROM employees
JOIN department_employees ON employees.employee_number = department_employees.employee_number
JOIN departments ON department_employees.department_number = departments.department_number
WHERE departments.department_name = 'Sales';
'''
</pre>

## 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- **ANSWER:**


- **QUERY:**

<pre>
'''
SELECT employees.employee_number, employees.last_name, employees.first_name, departments.department_name
FROM employees
JOIN department_employees ON employees.employee_number = department_employees.employee_number
JOIN departments ON department_employees.department_number = departments.department_number
WHERE departments.department_name IN ('Sales', 'Development');
'''
</pre>

## 8. List the frequency counts, in descending order, of all the employee last names (that is, show how many employees share each last name).
- **ANSWER:**


- **QUERY:**

<pre>
'''
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
'''
</pre>