-- 1
SELECT * FROM `departments`;
-- 2
SELECT `name` FROM `departments`
ORDER BY `department_id`;
-- 3
SELECT `first_name`,`last_name`, `salary` FROM `employees`
ORDER BY `employee_id`;
-- 4
SELECT `first_name`,`middle_name`,`last_name` FROM `employees`
ORDER BY `employee_id`;
-- 5
SELECT  concat(`first_name`,'.',`last_name`,'@softuni.bg') AS 'full_email_address' FROM `employees`
ORDER BY `employee_id`;
-- 6
SELECT DISTINCT `salary` from `employees`
ORDER BY `employee_id`;
-- 7 
SELECT * from `employees`
WHERE `job_title` = 'Sales Representative'
ORDER BY `employee_id`;
-- 8 
SELECT `first_name`,`last_name`, `job_title` FROM `employees`
WHERE `salary` BETWEEN 20000 AND 30000
ORDER BY `employee_id`;
-- 9
SELECT  concat(`first_name`,' ',`middle_name`, ' ',`last_name`) AS 'Full Name' FROM `employees`
WHERE `salary` = 25000 
OR `salary` = 14000
OR `salary` = 12500
OR `salary` = 23600 
ORDER BY `employee_id`;
-- 10
SELECT `first_name`,`last_name` FROM `employees`
WHERE `manager_id` is NULL
ORDER BY `employee_id`;
-- 11
SELECT `first_name`,`last_name`, `salary` FROM `employees`
WHERE `salary`>50000
ORDER BY `salary` desc;
-- 12
SELECT `first_name`,`last_name` FROM `employees`
ORDER BY `salary` desc limit 5;
-- 13
SELECT `first_name`,`last_name` FROM `employees`
WHERE `department_id` != 4;
-- 14
SELECT * FROM `employees`
ORDER BY `salary` desc, `first_name`,`last_name` desc,`middle_name`; 
-- 15
CREATE VIEW `v_employees_salaries` AS
SELECT `first_name`, `last_name`, `salary`
FROM `employees`;
-- 16
CREATE VIEW `v_employees_job_titles` AS 
SELECT CONCAT_WS(' ',`first_name`,`middle_name`,`last_name`)  AS 'Full Name', `job_title`
FROM `employees`;
-- 17
SELECT DISTINCT `job_title` from `employees`
ORDER BY `job_title`;
-- 18
SELECT * from `projects`
ORDER BY `start_date`,`name`,`project_id` LIMIT 10;
-- 19
SELECT `first_name`, `last_name`, `hire_date` FROM `employees`
ORDER BY `hire_date` desc LIMIT 7;
-- 20
UPDATE `employees` 
SET `salary` = `salary` * 1.12
WHERE  `department_id` = 1
OR `department_id` = 2 
OR `department_id` = 4 
OR `department_id` = 11;
SELECT `salary` FROM `employees`;
-- 21
SELECT `peak_name` FROM `peaks`
order by `peak_name`;
-- 22
SELECT `country_name`, `population` FROM `countries`
WHERE `continent_code` = 'EU'
ORDER BY `population` desc, `country_name` LIMIT 30;
-- 23
SELECT `country_name`, `country_code`, 
If(`currency_code` = 'EUR','Euro','Not Euro') AS `currency` FROM `countries`
ORDER BY `country_name`;
-- 24
SELECT `name` FROM `characters`
ORDER BY `name`;


