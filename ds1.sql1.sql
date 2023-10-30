SELECT * FROM mydb.ds_salaries;
use mydb;
SELECT MAX(salary)  FROM ds_salaries;
SELECT min(salary)  FROM ds_salaries;
SELECT avg(salary)  FROM ds_salaries;
/*2.select the employee with salary > 100000*/
SELECT * FROM  ds_salaries WHERE salary > 100000;
/*3.TOP 5 HIGHEST EARNING EMPLOYEES JOB TITLE*/
select * from  ds_salaries ORDER BY salary DESC LIMIT 5;
/*4.COUNT THE NUMBER OF EMPLOYEES WORKS IN DIFFERENT COMPANY SIZE*/
select company_size, COUNT(*)  FROM ds_salaries group by company_size;
/*5.COUNT THE NUMBER OF EMPLOYEES WORKS IN DIFFERENT COMPANY LOCATION*/
select company_location, COUNT(*)  FROM ds_salaries group by company_location;
/*6. DATA SCIENTIST ARE MOST FOUND IN WHICH EMPLOYEE RESIDENCE*/

SELECT employee_residence, COUNT(*) AS data_scientist_count
FROM ds_salaries
WHERE job_title = 'Data Scientist'
GROUP BY employee_residence
ORDER BY data_scientist_count DESC;

/*7.WHICH EMPLOYEMENT TYPE OF ANY JOB TITLE GET THE AVERAGE SALARY*/
SELECT job_title, employment_type, AVG(salary) AS average_salary FROM ds_salaries GROUP BY job_title, employment_type;
/*8.AVERAGE SALARY OF DATA SCIENTIST BY EXPEIENCE LEVEL*/
SELECT experience_level, AVG(salary) 
FROM ds_salaries
WHERE job_title = 'Data Scientist'
GROUP BY experience_level,job_title;

/*9.Number of data scientist */

SELECT job_title, COUNT(*) AS number_of_data_scientists
FROM ds_salaries
WHERE job_title = 'Data Scientist';

/*10.Number of data analyst */
SELECT job_title, COUNT(*) AS number_of_data_analyst
FROM ds_salaries
WHERE job_title = 'Data Analyst';





