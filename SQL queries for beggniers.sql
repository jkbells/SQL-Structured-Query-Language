
Setting environment for using XAMPP for Windows.
jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 411
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database emp;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| demo_cs            |
| emp                |
| employee           |
| guest_house        |
| information_schema |
| mysql              |
| p190053_jawad      |
| performance_schema |
| phpmyadmin         |
| spare_parts        |
| test               |
| themepark          |
| ticket             |
| trip               |
+--------------------+
14 rows in set (0.001 sec)

MariaDB [(none)]> use emp;
Database changed
MariaDB [emp]> create table emp(
    -> emp_id int not null,
    -> first_name varchar(20),
    -> last_name varchar(20),
    -> salary int,
    -> primary key(emp_id)
    -> );
Query OK, 0 rows affected (0.306 sec)

MariaDB [emp]> select * from emp;
Empty set (0.054 sec)

MariaDB [emp]> describe emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int(11)     | NO   | PRI | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| salary     | int(11)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.022 sec)

MariaDB [emp]> alter table emp add column contact int(10);
Query OK, 0 rows affected (0.202 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [emp]> describe emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int(11)     | NO   | PRI | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| salary     | int(11)     | YES  |     | NULL    |       |
| contact    | int(10)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.074 sec)

MariaDB [emp]> select * form emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'form emp' at line 1
MariaDB [emp]> select * from emp;
Empty set (0.000 sec)

MariaDB [emp]> alter table emp rename column contact to job_code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column contact to job_code' at line 1
MariaDB [emp]> alter table emp rename column contact to job_code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column contact to job_code' at line 1
MariaDB [emp]> alter table emp rename column contact to job_code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column contact to job_code' at line 1
MariaDB [emp]> alter table emp rename column contact to job_code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column contact to job_code' at line 1
MariaDB [emp]> describe emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int(11)     | NO   | PRI | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| salary     | int(11)     | YES  |     | NULL    |       |
| contact    | int(10)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.033 sec)

MariaDB [emp]> alter table emp rename column contact to job_code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column contact to job_code' at line 1
MariaDB [emp]> alter table emp rename column contact to job;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'column contact to job' at line 1
MariaDB [emp]> truncate table emp;
Query OK, 0 rows affected (0.489 sec)

MariaDB [emp]> describe emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int(11)     | NO   | PRI | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| salary     | int(11)     | YES  |     | NULL    |       |
| contact    | int(10)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.014 sec)

MariaDB [emp]> select * from emp;
Empty set (0.000 sec)

MariaDB [emp]> drop table emp;
Query OK, 0 rows affected (0.257 sec)

MariaDB [emp]> select * from emp;
ERROR 1146 (42S02): Table 'emp.emp' doesn't exist
MariaDB [emp]> describe emp;
ERROR 1146 (42S02): Table 'emp.emp' doesn't exist
MariaDB [emp]> create table emp(
    -> emp_id int not null,
    -> first_name varchar(20),
    -> last_name varchar(20),
    -> salary int,
    -> primary key(emp_id)
    -> );
Query OK, 0 rows affected (0.299 sec)

MariaDB [emp]> describe emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int(11)     | NO   | PRI | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| salary     | int(11)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.048 sec)

MariaDB [emp]> select * from emp;
Empty set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary) values (1,'jawad','khan',1000);
Query OK, 1 row affected (0.090 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary) values (2,'fawad','khan',2000);
Query OK, 1 row affected (0.093 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
+--------+------------+-----------+--------+
2 rows in set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary) values (3,'raza','ahmed',3000);
Query OK, 1 row affected (0.069 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
+--------+------------+-----------+--------+
3 rows in set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary) values (4,'malik','usman',5000);
Query OK, 1 row affected (0.107 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> describe emp;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | int(11)     | NO   | PRI | NULL    |       |
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| salary     | int(11)     | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.008 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary) values (5,'matloob','khan',6000);
Query OK, 1 row affected (0.079 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
|      5 | matloob    | khan      |   6000 |
+--------+------------+-----------+--------+
5 rows in set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary) values (6,'jeff','bezoz',7000);
Query OK, 1 row affected (0.087 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
6 rows in set (0.000 sec)

MariaDB [emp]> update emp set last_name='cohen' where emp_id=101;
Query OK, 0 rows affected (0.000 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | khan      |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
6 rows in set (0.000 sec)

MariaDB [emp]> update emp set last_name='cohen' where emp_id=1;
Query OK, 1 row affected (0.089 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jawad      | cohen     |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
6 rows in set (0.000 sec)

MariaDB [emp]> update emp set first_name='jennifer' where emp_id=1;
Query OK, 1 row affected (0.057 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [emp]> select * form emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'form emp' at line 1
MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      1 | jennifer   | cohen     |   1000 |
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      4 | malik      | usman     |   5000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
6 rows in set (0.000 sec)

MariaDB [emp]> delete from emp where emp_id in (1,4);
Query OK, 2 rows affected (0.099 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.001 sec)

MariaDB [emp]> select * from emp where emp_id=1;
Empty set (0.000 sec)

MariaDB [emp]> select * from emp where emp_id=2;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> select * from emp where emp_id=3;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      3 | raza       | ahmed     |   3000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp where salary=3000;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      3 | raza       | ahmed     |   3000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> select * form emp where first_name = 'fawad' and salary = 2000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'form emp where first_name = 'fawad' and salary = 2000' at line 1
MariaDB [emp]> select * from emp where first_name = 'fawad' and salary = 2000;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp where first_name = 'fawad' or salary = 2000;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp where first_name = 'fawad' and salary != 2000;
Empty set (0.000 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.001 sec)

MariaDB [emp]> select * from emp where first_name ='fawad' and salary <=100000;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp where salary>100;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> select * from emp where first_name!='fawad';
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
3 rows in set (0.001 sec)

MariaDB [emp]> select * from emp where salary between 2000 and 7000;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> select * from emp where salary between 6000 and 7000;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
2 rows in set (0.000 sec)

MariaDB [emp]> select * from emp where first_name like 'fawad';
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
+--------+------------+-----------+--------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp where salary is null;
Empty set (0.030 sec)

MariaDB [emp]> select * from emp where salary in (1000,2000,6000);
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      5 | matloob    | khan      |   6000 |
+--------+------------+-----------+--------+
2 rows in set (0.000 sec)

MariaDB [emp]> select distinct (first_name) from emp;
+------------+
| first_name |
+------------+
| fawad      |
| raza       |
| matloob    |
| jeff       |
+------------+
4 rows in set (0.000 sec)

MariaDB [emp]> select * from emp where last_name like '1%';
Empty set (0.001 sec)

MariaDB [emp]> select * from emp where last_name like 'k%';
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      5 | matloob    | khan      |   6000 |
+--------+------------+-----------+--------+
2 rows in set (0.000 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.000 sec)

MariaDB [emp]> select max(salary) from emp;
+-------------+
| max(salary) |
+-------------+
|        7000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [emp]> select min(salary) from emp;
+-------------+
| min(salary) |
+-------------+
|        2000 |
+-------------+
1 row in set (0.016 sec)

MariaDB [emp]> select avg(salary) from emp;
+-------------+
| avg(salary) |
+-------------+
|   4500.0000 |
+-------------+
1 row in set (0.032 sec)

MariaDB [emp]> select count(*) from emp;
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.000 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+
| emp_id | first_name | last_name | salary |
+--------+------------+-----------+--------+
|      2 | fawad      | khan      |   2000 |
|      3 | raza       | ahmed     |   3000 |
|      5 | matloob    | khan      |   6000 |
|      6 | jeff       | bezoz     |   7000 |
+--------+------------+-----------+--------+
4 rows in set (0.001 sec)

MariaDB [emp]> alter table add column dept varchar(20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'add column dept varchar(20)' at line 1
MariaDB [emp]> alter table emp add column dept varchar(20);
Query OK, 0 rows affected (0.154 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+------+
| emp_id | first_name | last_name | salary | dept |
+--------+------------+-----------+--------+------+
|      2 | fawad      | khan      |   2000 | NULL |
|      3 | raza       | ahmed     |   3000 | NULL |
|      5 | matloob    | khan      |   6000 | NULL |
|      6 | jeff       | bezoz     |   7000 | NULL |
+--------+------------+-----------+--------+------+
4 rows in set (0.000 sec)

MariaDB [emp]> update table set dept='sales' where emp_id=1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table set dept='sales' where emp_id=1' at line 1
MariaDB [emp]> update table set dept='sales' where emp_id=1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table set dept='sales' where emp_id=1' at line 1
MariaDB [emp]> update emp set dept='sales' where emp_id=1;
Query OK, 0 rows affected (0.000 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+------+
| emp_id | first_name | last_name | salary | dept |
+--------+------------+-----------+--------+------+
|      2 | fawad      | khan      |   2000 | NULL |
|      3 | raza       | ahmed     |   3000 | NULL |
|      5 | matloob    | khan      |   6000 | NULL |
|      6 | jeff       | bezoz     |   7000 | NULL |
+--------+------------+-----------+--------+------+
4 rows in set (0.000 sec)

MariaDB [emp]> update emp set dept='sales' where emp_id=2;
Query OK, 1 row affected (0.057 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-------+
| emp_id | first_name | last_name | salary | dept  |
+--------+------------+-----------+--------+-------+
|      2 | fawad      | khan      |   2000 | sales |
|      3 | raza       | ahmed     |   3000 | NULL  |
|      5 | matloob    | khan      |   6000 | NULL  |
|      6 | jeff       | bezoz     |   7000 | NULL  |
+--------+------------+-----------+--------+-------+
4 rows in set (0.000 sec)

MariaDB [emp]> update emp set dept='tech' where emp_id=3;
Query OK, 1 row affected (0.075 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-------+
| emp_id | first_name | last_name | salary | dept  |
+--------+------------+-----------+--------+-------+
|      2 | fawad      | khan      |   2000 | sales |
|      3 | raza       | ahmed     |   3000 | tech  |
|      5 | matloob    | khan      |   6000 | NULL  |
|      6 | jeff       | bezoz     |   7000 | NULL  |
+--------+------------+-----------+--------+-------+
4 rows in set (0.000 sec)

MariaDB [emp]> update emp set dept='marketing' where emp_id=5;
Query OK, 1 row affected (0.068 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [emp]> update emp set dept='finance' where emp_id=6;
Query OK, 1 row affected (0.063 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      2 | fawad      | khan      |   2000 | sales     |
|      3 | raza       | ahmed     |   3000 | tech      |
|      5 | matloob    | khan      |   6000 | marketing |
|      6 | jeff       | bezoz     |   7000 | finance   |
+--------+------------+-----------+--------+-----------+
4 rows in set (0.000 sec)

MariaDB [emp]> select first_name, max(salary),dept from emp group by dept;
+------------+-------------+-----------+
| first_name | max(salary) | dept      |
+------------+-------------+-----------+
| jeff       |        7000 | finance   |
| matloob    |        6000 | marketing |
| fawad      |        2000 | sales     |
| raza       |        3000 | tech      |
+------------+-------------+-----------+
4 rows in set (0.000 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      2 | fawad      | khan      |   2000 | sales     |
|      3 | raza       | ahmed     |   3000 | tech      |
|      5 | matloob    | khan      |   6000 | marketing |
|      6 | jeff       | bezoz     |   7000 | finance   |
+--------+------------+-----------+--------+-----------+
4 rows in set (0.000 sec)

MariaDB [emp]> insert into emp where(emp_id,first_name,last_name,salary,dept) value(7,'ali,'raza',8000,sales);
    '>
    '> select * from emp;
    '>
    '> Bye

jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 578
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use emp;
Database changed
MariaDB [emp]> show databases;
+--------------------+
| Database           |
+--------------------+
| demo_cs            |
| emp                |
| employee           |
| guest_house        |
| information_schema |
| mysql              |
| p190053_jawad      |
| performance_schema |
| phpmyadmin         |
| spare_parts        |
| test               |
| themepark          |
| ticket             |
| trip               |
+--------------------+
14 rows in set (0.001 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      2 | fawad      | khan      |   2000 | sales     |
|      3 | raza       | ahmed     |   3000 | tech      |
|      5 | matloob    | khan      |   6000 | marketing |
|      6 | jeff       | bezoz     |   7000 | finance   |
+--------+------------+-----------+--------+-----------+
4 rows in set (0.000 sec)

MariaDB [emp]> insert into emp(emp_id,first_name,last_name,salary,dept) values (7,'ali','raza',8000,'sales');
Query OK, 1 row affected (0.059 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      2 | fawad      | khan      |   2000 | sales     |
|      3 | raza       | ahmed     |   3000 | tech      |
|      5 | matloob    | khan      |   6000 | marketing |
|      6 | jeff       | bezoz     |   7000 | finance   |
|      7 | ali        | raza      |   8000 | sales     |
+--------+------------+-----------+--------+-----------+
5 rows in set (0.000 sec)

MariaDB [emp]> select first_name, max(salary),dept from emp group by dept having count(dept)>=2;
+------------+-------------+-------+
| first_name | max(salary) | dept  |
+------------+-------------+-------+
| fawad      |        8000 | sales |
+------------+-------------+-------+
1 row in set (0.000 sec)

MariaDB [emp]> select first_name, max(salary),dept from emp group by dept having count(dept)>=1;
+------------+-------------+-----------+
| first_name | max(salary) | dept      |
+------------+-------------+-----------+
| jeff       |        7000 | finance   |
| matloob    |        6000 | marketing |
| fawad      |        8000 | sales     |
| raza       |        3000 | tech      |
+------------+-------------+-----------+
4 rows in set (0.000 sec)

MariaDB [emp]> select first_name, avg(salary),dept from emp group by dept having count(dept)>=2;
+------------+-------------+-------+
| first_name | avg(salary) | dept  |
+------------+-------------+-------+
| fawad      |   5000.0000 | sales |
+------------+-------------+-------+
1 row in set (0.016 sec)

MariaDB [emp]> select * from emp order by salary desc;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      7 | ali        | raza      |   8000 | sales     |
|      6 | jeff       | bezoz     |   7000 | finance   |
|      5 | matloob    | khan      |   6000 | marketing |
|      3 | raza       | ahmed     |   3000 | tech      |
|      2 | fawad      | khan      |   2000 | sales     |
+--------+------------+-----------+--------+-----------+
5 rows in set (0.000 sec)

MariaDB [emp]> create table product1(
    -> category_id int,
    -> product_name varchar(20)
    -> );
Query OK, 0 rows affected (0.239 sec)

MariaDB [emp]> select * from product1;
Empty set (0.002 sec)

MariaDB [emp]> insert into product1 values(1,'nokia');
Query OK, 1 row affected (0.076 sec)

MariaDB [emp]> select * from product1;
+-------------+--------------+
| category_id | product_name |
+-------------+--------------+
|           1 | nokia        |
+-------------+--------------+
1 row in set (0.000 sec)

MariaDB [emp]> insert into product1 values(2,'sumsung');
Query OK, 1 row affected (0.070 sec)

MariaDB [emp]> insert into product1 values(3,'hp');
Query OK, 1 row affected (0.068 sec)

MariaDB [emp]> insert into product1 values(6,'nikoon');
Query OK, 1 row affected (0.084 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      2 | fawad      | khan      |   2000 | sales     |
|      3 | raza       | ahmed     |   3000 | tech      |
|      5 | matloob    | khan      |   6000 | marketing |
|      6 | jeff       | bezoz     |   7000 | finance   |
|      7 | ali        | raza      |   8000 | sales     |
+--------+------------+-----------+--------+-----------+
5 rows in set (0.000 sec)

MariaDB [emp]> select * from product1;
+-------------+--------------+
| category_id | product_name |
+-------------+--------------+
|           1 | nokia        |
|           2 | sumsung      |
|           3 | hp           |
|           6 | nikoon       |
+-------------+--------------+
4 rows in set (0.000 sec)

MariaDB [emp]> create table product2(
    -> category_id int,
    -> product_name varchar(20)
    -> );
Query OK, 0 rows affected (0.509 sec)

MariaDB [emp]> select * from product2;
Empty set (0.002 sec)

MariaDB [emp]> insert into product2 values(1,'sumsung');
Query OK, 1 row affected (0.066 sec)

MariaDB [emp]> select * from product2;
+-------------+--------------+
| category_id | product_name |
+-------------+--------------+
|           1 | sumsung      |
+-------------+--------------+
1 row in set (0.000 sec)

MariaDB [emp]> insert into product2 values(2,'lg');
Query OK, 1 row affected (0.071 sec)

MariaDB [emp]> insert into product2 values(3,'hp');
Query OK, 1 row affected (0.050 sec)

MariaDB [emp]> insert into product2 values(5,'dell');
Query OK, 1 row affected (0.073 sec)

MariaDB [emp]> insert into product2 values(6,'apple');
Query OK, 1 row affected (0.206 sec)

MariaDB [emp]> insert into product2 values(10,'playstation');
Query OK, 1 row affected (0.086 sec)

MariaDB [emp]> select * from product2;
+-------------+--------------+
| category_id | product_name |
+-------------+--------------+
|           1 | sumsung      |
|           2 | lg           |
|           3 | hp           |
|           5 | dell         |
|           6 | apple        |
|          10 | playstation  |
+-------------+--------------+
6 rows in set (0.000 sec)

MariaDB [emp]> select product_name from product1 union select product_name from product2;
+--------------+
| product_name |
+--------------+
| nokia        |
| sumsung      |
| hp           |
| nikoon       |
| lg           |
| dell         |
| apple        |
| playstation  |
+--------------+
8 rows in set (0.000 sec)

MariaDB [emp]> select product_name from product1 union all select product_name from product2;
+--------------+
| product_name |
+--------------+
| nokia        |
| sumsung      |
| hp           |
| nikoon       |
| sumsung      |
| lg           |
| hp           |
| dell         |
| apple        |
| playstation  |
+--------------+
10 rows in set (0.000 sec)

MariaDB [emp]> create table department(
    -> dept_id int,
    -> dept varchar(20),
    -> dept_loc varchar(20)
    -> );
Query OK, 0 rows affected (0.271 sec)

MariaDB [emp]> insert into department values(1,'content','chicago');
Query OK, 1 row affected (0.070 sec)

MariaDB [emp]> select * from department;
+---------+---------+----------+
| dept_id | dept    | dept_loc |
+---------+---------+----------+
|       1 | content | chicago  |
+---------+---------+----------+
1 row in set (0.000 sec)

MariaDB [emp]> insert into department values(2,'support','new jersey');
Query OK, 1 row affected (0.074 sec)

MariaDB [emp]> insert into department values(3,'sales','boston');
Query OK, 1 row affected (0.075 sec)

MariaDB [emp]> select * from emp;
+--------+------------+-----------+--------+-----------+
| emp_id | first_name | last_name | salary | dept      |
+--------+------------+-----------+--------+-----------+
|      2 | fawad      | khan      |   2000 | sales     |
|      3 | raza       | ahmed     |   3000 | tech      |
|      5 | matloob    | khan      |   6000 | marketing |
|      6 | jeff       | bezoz     |   7000 | finance   |
|      7 | ali        | raza      |   8000 | sales     |
+--------+------------+-----------+--------+-----------+
5 rows in set (0.000 sec)

MariaDB [emp]> select * from department;
+---------+---------+------------+
| dept_id | dept    | dept_loc   |
+---------+---------+------------+
|       1 | content | chicago    |
|       2 | support | new jersey |
|       3 | sales   | boston     |
+---------+---------+------------+
3 rows in set (0.000 sec)

MariaDB [emp]> insert into department values(4,'hr','new york');
Query OK, 1 row affected (0.069 sec)

MariaDB [emp]> select * from department;
+---------+---------+------------+
| dept_id | dept    | dept_loc   |
+---------+---------+------------+
|       1 | content | chicago    |
|       2 | support | new jersey |
|       3 | sales   | boston     |
|       4 | hr      | new york   |
+---------+---------+------------+
4 rows in set (0.000 sec)

MariaDB [emp]> insert into department values(5,'operations','los vages');
Query OK, 1 row affected (0.059 sec)

MariaDB [emp]> select * from department;
+---------+------------+------------+
| dept_id | dept       | dept_loc   |
+---------+------------+------------+
|       1 | content    | chicago    |
|       2 | support    | new jersey |
|       3 | sales      | boston     |
|       4 | hr         | new york   |
|       5 | operations | los vages  |
+---------+------------+------------+
5 rows in set (0.001 sec)

MariaDB [emp]> select e.first_name,e.salary,d.dept,d.dept_loc from emp e inner join department d on e.dept=d.dept;
+------------+--------+-------+----------+
| first_name | salary | dept  | dept_loc |
+------------+--------+-------+----------+
| fawad      |   2000 | sales | boston   |
| ali        |   8000 | sales | boston   |
+------------+--------+-------+----------+
2 rows in set (0.000 sec)

MariaDB [emp]> select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e left join department d on e.dept=d.dept;
+------------+--------+-----------+-------+----------+
| first_name | salary | dept      | dept  | dept_loc |
+------------+--------+-----------+-------+----------+
| fawad      |   2000 | sales     | sales | boston   |
| ali        |   8000 | sales     | sales | boston   |
| raza       |   3000 | tech      | NULL  | NULL     |
| matloob    |   6000 | marketing | NULL  | NULL     |
| jeff       |   7000 | finance   | NULL  | NULL     |
+------------+--------+-----------+-------+----------+
5 rows in set (0.026 sec)

MariaDB [emp]> select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e right join department d on e.dept=d.dept;
+------------+--------+-------+------------+------------+
| first_name | salary | dept  | dept       | dept_loc   |
+------------+--------+-------+------------+------------+
| fawad      |   2000 | sales | sales      | boston     |
| ali        |   8000 | sales | sales      | boston     |
| NULL       |   NULL | NULL  | content    | chicago    |
| NULL       |   NULL | NULL  | support    | new jersey |
| NULL       |   NULL | NULL  | hr         | new york   |
| NULL       |   NULL | NULL  | operations | los vages  |
+------------+--------+-------+------------+------------+
6 rows in set (0.000 sec)

MariaDB [emp]> select * from department;
+---------+------------+------------+
| dept_id | dept       | dept_loc   |
+---------+------------+------------+
|       1 | content    | chicago    |
|       2 | support    | new jersey |
|       3 | sales      | boston     |
|       4 | hr         | new york   |
|       5 | operations | los vages  |
+---------+------------+------------+
5 rows in set (0.000 sec)

MariaDB [emp]> select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e left join department d on e.dept=d.dept union  select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e right join department d on e.dept=d.dept
    ->
    -> c
    -> bye
    -> exit
    -> Bye

jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 585
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use emp;
Database changed
MariaDB [emp]> select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e left join department d on e.dept=d.dept union select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e right join department d on e.dept=d.dept
    -> select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e left join department d on e.dept=d.dept union select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e right join department d on e.dept=d.dept;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e left join de...' at line 2
MariaDB [emp]> select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e left join department d on e.dept=d.dept union select e.first_name,e.salary,e.dept,d.dept,d.dept_loc from emp e right join department d on e.dept=d.dept;
+------------+--------+-----------+------------+------------+
| first_name | salary | dept      | dept       | dept_loc   |
+------------+--------+-----------+------------+------------+
| fawad      |   2000 | sales     | sales      | boston     |
| ali        |   8000 | sales     | sales      | boston     |
| raza       |   3000 | tech      | NULL       | NULL       |
| matloob    |   6000 | marketing | NULL       | NULL       |
| jeff       |   7000 | finance   | NULL       | NULL       |
| NULL       |   NULL | NULL      | content    | chicago    |
| NULL       |   NULL | NULL      | support    | new jersey |
| NULL       |   NULL | NULL      | hr         | new york   |
| NULL       |   NULL | NULL      | operations | los vages  |
+------------+--------+-----------+------------+------------+
9 rows in set (0.003 sec)

MariaDB [emp]> select * from emp cross join department;
+--------+------------+-----------+--------+-----------+---------+------------+------------+
| emp_id | first_name | last_name | salary | dept      | dept_id | dept       | dept_loc   |
+--------+------------+-----------+--------+-----------+---------+------------+------------+
|      2 | fawad      | khan      |   2000 | sales     |       1 | content    | chicago    |
|      3 | raza       | ahmed     |   3000 | tech      |       1 | content    | chicago    |
|      5 | matloob    | khan      |   6000 | marketing |       1 | content    | chicago    |
|      6 | jeff       | bezoz     |   7000 | finance   |       1 | content    | chicago    |
|      7 | ali        | raza      |   8000 | sales     |       1 | content    | chicago    |
|      2 | fawad      | khan      |   2000 | sales     |       2 | support    | new jersey |
|      3 | raza       | ahmed     |   3000 | tech      |       2 | support    | new jersey |
|      5 | matloob    | khan      |   6000 | marketing |       2 | support    | new jersey |
|      6 | jeff       | bezoz     |   7000 | finance   |       2 | support    | new jersey |
|      7 | ali        | raza      |   8000 | sales     |       2 | support    | new jersey |
|      2 | fawad      | khan      |   2000 | sales     |       3 | sales      | boston     |
|      3 | raza       | ahmed     |   3000 | tech      |       3 | sales      | boston     |
|      5 | matloob    | khan      |   6000 | marketing |       3 | sales      | boston     |
|      6 | jeff       | bezoz     |   7000 | finance   |       3 | sales      | boston     |
|      7 | ali        | raza      |   8000 | sales     |       3 | sales      | boston     |
|      2 | fawad      | khan      |   2000 | sales     |       4 | hr         | new york   |
|      3 | raza       | ahmed     |   3000 | tech      |       4 | hr         | new york   |
|      5 | matloob    | khan      |   6000 | marketing |       4 | hr         | new york   |
|      6 | jeff       | bezoz     |   7000 | finance   |       4 | hr         | new york   |
|      7 | ali        | raza      |   8000 | sales     |       4 | hr         | new york   |
|      2 | fawad      | khan      |   2000 | sales     |       5 | operations | los vages  |
|      3 | raza       | ahmed     |   3000 | tech      |       5 | operations | los vages  |
|      5 | matloob    | khan      |   6000 | marketing |       5 | operations | los vages  |
|      6 | jeff       | bezoz     |   7000 | finance   |       5 | operations | los vages  |
|      7 | ali        | raza      |   8000 | sales     |       5 | operations | los vages  |
+--------+------------+-----------+--------+-----------+---------+------------+------------+
25 rows in set (0.000 sec)

MariaDB [emp]> Bye

jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 586
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database world;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use world;
Database changed
MariaDB [world]> show databases;
+--------------------+
| Database           |
+--------------------+
| demo_cs            |
| emp                |
| employee           |
| guest_house        |
| information_schema |
| mysql              |
| p190053_jawad      |
| performance_schema |
| phpmyadmin         |
| spare_parts        |
| test               |
| themepark          |
| ticket             |
| trip               |
| world              |
+--------------------+
15 rows in set (0.001 sec)

MariaDB [world]> create table cricket_1(
    -> player_id text;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [world]> show tables;
+-----------------+
| Tables_in_world |
+-----------------+
| cricket_1       |
+-----------------+
1 row in set (0.001 sec)

MariaDB [world]> insert into cricket_1 values(pl1,'virat',50,10);
ERROR 1054 (42S22): Unknown column 'pl1' in 'field list'
MariaDB [world]> insert into cricket_1 where (player_id,player_name,runs,popularity) values (pl1,'virat',50,10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where (player_id,player_name,runs,popularity) values (pl1,'virat',50,10)' at line 1MariaDB [world]> select * from cricket_1;
Empty set (0.000 sec)

MariaDB [world]> insert into cricket_1(player_id,player_name,runs,popularity) values (pl1,'virat',50,10);
ERROR 1054 (42S22): Unknown column 'pl1' in 'field list'
MariaDB [world]> insert into cricket_1(player_id,player_name,runs,popularity) values (pL1,'virat',50,10);
ERROR 1054 (42S22): Unknown column 'pL1' in 'field list'
MariaDB [world]> create table cricket_2(
    -> player_id (text);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(text)' at line 2
MariaDB [world]> show tables;
+-----------------+
| Tables_in_world |
+-----------------+
| cricket_1       |
| cricket_2       |
+-----------------+
2 rows in set (0.001 sec)

MariaDB [world]> select * from cricket_1;
Empty set (0.000 sec)

MariaDB [world]> insert into cricket_1(player_id,player_name,Runs,popularity) values (pl1,'virat',50,10);
ERROR 1054 (42S22): Unknown column 'pl1' in 'field list'
MariaDB [world]> insert into cricket_1(player_id,player_name,Runs,popularity) values ('pl1','virat',50,10);
Query OK, 1 row affected (0.064 sec)

MariaDB [world]> select * from cricket_1;
+-----------+-------------+------+------------+
| player_id | player_name | Runs | popularity |
+-----------+-------------+------+------------+
| pl1       | virat       |   50 |         10 |
+-----------+-------------+------+------------+
1 row in set (0.000 sec)

MariaDB [world]> insert into cricket_1(player_id,player_name,Runs,popularity) values ('pl2','Rohit',41,7);
Query OK, 1 row affected (0.072 sec)

MariaDB [world]> insert into cricket_1(player_id,player_name,Runs,popularity) values ('pl3','jadeja',33,6);
Query OK, 1 row affected (0.061 sec)

MariaDB [world]> insert into cricket_1(player_id,player_name,Runs,popularity) values ('pl4','Dhoni',35,15);
Query OK, 1 row affected (0.050 sec)

MariaDB [world]> insert into cricket_1(player_id,player_name,Runs,popularity) values ('pl5','Dhawan',45,12);
Query OK, 1 row affected (0.062 sec)

MariaDB [world]> select * from cricket_1;
+-----------+-------------+------+------------+
| player_id | player_name | Runs | popularity |
+-----------+-------------+------+------------+
| pl1       | virat       |   50 |         10 |
| pl2       | Rohit       |   41 |          7 |
| pl3       | jadeja      |   33 |          6 |
| pl4       | Dhoni       |   35 |         15 |
| pl5       | Dhawan      |   45 |         12 |
+-----------+-------------+------+------------+
5 rows in set (0.000 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl1','virat',50,55);
Query OK, 1 row affected (0.069 sec)

MariaDB [world]> select * from cricket_2;
+-----------+-------------+------+----------+
| player_id | player_name | Runs | charisma |
+-----------+-------------+------+----------+
| pl1       | virat       |   50 |       55 |
+-----------+-------------+------+----------+
1 row in set (0.000 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl2','Rohit',41,30);
Query OK, 1 row affected (0.078 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl3','jadeja',33,24);
Query OK, 1 row affected (0.057 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl4','Dhoni',35,59);
Query OK, 1 row affected (0.069 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl13','yuraaj',33,50);
Query OK, 1 row affected (0.059 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl6','yadav',66,35);
Query OK, 1 row affected (0.059 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl14','Tendulkar',74,80);
Query OK, 1 row affected (0.082 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl8','Binny',44,32);
Query OK, 1 row affected (0.078 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl9','rayudu',63,39);
Query OK, 1 row affected (0.056 sec)

MariaDB [world]> insert into cricket_2(player_id,player_name,Runs,charisma) values ('pl15','Dravid',65,55);
Query OK, 1 row affected (0.059 sec)

MariaDB [world]> select * from cricket_2;
+-----------+-------------+------+----------+
| player_id | player_name | Runs | charisma |
+-----------+-------------+------+----------+
| pl1       | virat       |   50 |       55 |
| pl2       | Rohit       |   41 |       30 |
| pl3       | jadeja      |   33 |       24 |
| pl4       | Dhoni       |   35 |       59 |
| pl13      | yuraaj      |   33 |       50 |
| pl6       | yadav       |   66 |       35 |
| pl14      | Tendulkar   |   74 |       80 |
| pl8       | Binny       |   44 |       32 |
| pl9       | rayudu      |   63 |       39 |
| pl15      | Dravid      |   65 |       55 |
+-----------+-------------+------+----------+
10 rows in set (0.000 sec)

MariaDB [world]> select * from cricket_1 union select * from cricket_2;
+-----------+-------------+------+------------+
| player_id | player_name | Runs | popularity |
+-----------+-------------+------+------------+
| pl1       | virat       |   50 |         10 |
| pl2       | Rohit       |   41 |          7 |
| pl3       | jadeja      |   33 |          6 |
| pl4       | Dhoni       |   35 |         15 |
| pl5       | Dhawan      |   45 |         12 |
| pl1       | virat       |   50 |         55 |
| pl2       | Rohit       |   41 |         30 |
| pl3       | jadeja      |   33 |         24 |
| pl4       | Dhoni       |   35 |         59 |
| pl13      | yuraaj      |   33 |         50 |
| pl6       | yadav       |   66 |         35 |
| pl14      | Tendulkar   |   74 |         80 |
| pl8       | Binny       |   44 |         32 |
| pl9       | rayudu      |   63 |         39 |
| pl15      | Dravid      |   65 |         55 |
+-----------+-------------+------+------------+
15 rows in set (0.064 sec)

MariaDB [world]> select player_name from cricket_1 union select player_name from cricket_2;
+-------------+
| player_name |
+-------------+
| virat       |
| Rohit       |
| jadeja      |
| Dhoni       |
| Dhawan      |
| yuraaj      |
| yadav       |
| Tendulkar   |
| Binny       |
| rayudu      |
| Dravid      |
+-------------+
11 rows in set (0.047 sec)

MariaDB [world]> select player_name,popularity from cricket_1 where popularity > (select avg(popularity) from crickert1); select avg(popularity) from cricket1;
ERROR 1146 (42S02): Table 'world.crickert1' doesn't exist
ERROR 1146 (42S02): Table 'world.cricket1' doesn't exist
MariaDB [world]> select avg(popularity) from cricket_1;
+-----------------+
| avg(popularity) |
+-----------------+
|         10.0000 |
+-----------------+
1 row in set (0.000 sec)

MariaDB [world]> select player_name,popularity from cricket_1 where popularity > (select avg(popularity) from cricket1);
ERROR 1146 (42S02): Table 'world.cricket1' doesn't exist
MariaDB [world]> select player_name,popularity from cricket_1 where popularity > (select avg(popularity) from cricket_1);
+-------------+------------+
| player_name | popularity |
+-------------+------------+
| Dhoni       |         15 |
| Dhawan      |         12 |
+-------------+------------+
2 rows in set (0.001 sec)

MariaDB [world]> select player_name,player_id from cricket_1 where cricket_1.player_id in(select player_id in cricket_2);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'cricket_2)' at line 1
MariaDB [world]> select player_name,player_id from cricket_1 where cricket_1.player_id in(select player_id from cricket_2);
+-------------+-----------+
| player_name | player_id |
+-------------+-----------+
| virat       | pl1       |
| Rohit       | pl2       |
| jadeja      | pl3       |
| Dhoni       | pl4       |
+-------------+-----------+
4 rows in set (0.029 sec)

MariaDB [world]> select player_id, player_name, runs from cricket_1 where runs > (select avg(runs) from cricket_1);
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    821
Current database: world

+-----------+-------------+------+
| player_id | player_name | runs |
+-----------+-------------+------+
| pl1       | virat       |   50 |
| pl2       | Rohit       |   41 |
| pl5       | Dhawan      |   45 |
+-----------+-------------+------+
3 rows in set (0.004 sec)

MariaDB [world]> select avg(runs) from cricket_1;
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    8
Current database: world

+-----------+
| avg(runs) |
+-----------+
|   40.8000 |
+-----------+
1 row in set (0.215 sec)

MariaDB [world]> Bye

jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| demo_cs            |
| emp                |
| employee           |
| guest_house        |
| information_schema |
| mysql              |
| p190053_jawad      |
| performance_schema |
| phpmyadmin         |
| spare_parts        |
| test               |
| themepark          |
| ticket             |
| trip               |
| world              |
+--------------------+
15 rows in set (0.307 sec)

MariaDB [(none)]> use world;
Database changed
MariaDB [world]> select avg(runs) from cricket_1;
+-----------+
| avg(runs) |
+-----------+
|   40.8000 |
+-----------+
1 row in set (0.000 sec)

MariaDB [world]> Bye

jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database bank;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> use bank;
Database changed
MariaDB [bank]> create table bank_details(
    -> product char(10),
    -> quantity int,
    -> price real,
    -> purchase_cost decimal(6,2)
    -> price real,Bye

jawad@DESKTOP-U23J2E2 c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 11
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| bank               |
| demo_cs            |
| emp                |
| employee           |
| guest_house        |
| information_schema |
| mysql              |
| p190053_jawad      |
| performance_schema |
| phpmyadmin         |
| spare_parts        |
| test               |
| themepark          |
| ticket             |
| trip               |
| world              |
+--------------------+
16 rows in set (0.001 sec)

MariaDB [(none)]> use bank;
Database changed
MariaDB [bank]> create table bank_details(
    -> product char(10),
    -> quantity int,
    -> price real,
    -> purchase_cost decimal(6,2),
    -> estimated_sale_price float
    -> );
Query OK, 0 rows affected (0.348 sec)

MariaDB [bank]> select * from bank;
ERROR 1146 (42S02): Table 'bank.bank' doesn't exist
MariaDB [bank]> describe bank_details;
+----------------------+--------------+------+-----+---------+-------+
| Field                | Type         | Null | Key | Default | Extra |
+----------------------+--------------+------+-----+---------+-------+
| product              | char(10)     | YES  |     | NULL    |       |
| quantity             | int(11)      | YES  |     | NULL    |       |
| price                | double       | YES  |     | NULL    |       |
| purchase_cost        | decimal(6,2) | YES  |     | NULL    |       |
| estimated_sale_price | float        | YES  |     | NULL    |       |
+----------------------+--------------+------+-----+---------+-------+
5 rows in set (0.010 sec)

MariaDB [bank]> select * from bank_details;
Empty set (0.000 sec)

MariaDB [bank]> insert into bank_details values('paycard',3,330,8008,9009);
Query OK, 1 row affected (0.113 sec)

MariaDB [bank]> insert into bank_details values('paypoints',4,200,8000,6800);
Query OK, 1 row affected (0.103 sec)

MariaDB [bank]> select * from bank_details;
+-----------+----------+-------+---------------+----------------------+
| product   | quantity | price | purchase_cost | estimated_sale_price |
+-----------+----------+-------+---------------+----------------------+
| paycard   |        3 |   330 |       8008.00 |                 9009 |
| paypoints |        4 |   200 |       8000.00 |                 6800 |
+-----------+----------+-------+---------------+----------------------+
2 rows in set (0.000 sec)

MariaDB [bank]> alter table bank_details add column geo_location varchar(20);
Query OK, 0 rows affected (0.108 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [bank]> describe bank_details;
+----------------------+--------------+------+-----+---------+-------+
| Field                | Type         | Null | Key | Default | Extra |
+----------------------+--------------+------+-----+---------+-------+
| product              | char(10)     | YES  |     | NULL    |       |
| quantity             | int(11)      | YES  |     | NULL    |       |
| price                | double       | YES  |     | NULL    |       |
| purchase_cost        | decimal(6,2) | YES  |     | NULL    |       |
| estimated_sale_price | float        | YES  |     | NULL    |       |
| geo_location         | varchar(20)  | YES  |     | NULL    |       |
+----------------------+--------------+------+-----+---------+-------+
6 rows in set (0.010 sec)

MariaDB [bank]> select geo_location from bank_details where product='paycard';
+--------------+
| geo_location |
+--------------+
| NULL         |
+--------------+
1 row in set (0.000 sec)

MariaDB [bank]> select * from bank_details;
+-----------+----------+-------+---------------+----------------------+--------------+
| product   | quantity | price | purchase_cost | estimated_sale_price | geo_location |
+-----------+----------+-------+---------------+----------------------+--------------+
| paycard   |        3 |   330 |       8008.00 |                 9009 | NULL         |
| paypoints |        4 |   200 |       8000.00 |                 6800 | NULL         |
+-----------+----------+-------+---------------+----------------------+--------------+
2 rows in set (0.001 sec)

MariaDB [bank]> select char_length(product)where product='paycard';
ERROR 1054 (42S22): Unknown column 'product' in 'field list'
MariaDB [bank]> select char_length(product)from bank_details where product='paycard';
+----------------------+
| char_length(product) |
+----------------------+
|                    7 |
+----------------------+
1 row in set (0.001 sec)

MariaDB [bank]> alter table bank_details modify product varchar(10);
Query OK, 2 rows affected (1.089 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [bank]> describe bank_details;
+----------------------+--------------+------+-----+---------+-------+
| Field                | Type         | Null | Key | Default | Extra |
+----------------------+--------------+------+-----+---------+-------+
| product              | varchar(10)  | YES  |     | NULL    |       |
| quantity             | int(11)      | YES  |     | NULL    |       |
| price                | double       | YES  |     | NULL    |       |
| purchase_cost        | decimal(6,2) | YES  |     | NULL    |       |
| estimated_sale_price | float        | YES  |     | NULL    |       |
| geo_location         | varchar(20)  | YES  |     | NULL    |       |
+----------------------+--------------+------+-----+---------+-------+
6 rows in set (0.012 sec)

MariaDB [bank]> select * from emp;
ERROR 1146 (42S02): Table 'bank.emp' doesn't exist
MariaDB [bank]> select * from bank_details;
+-----------+----------+-------+---------------+----------------------+--------------+
| product   | quantity | price | purchase_cost | estimated_sale_price | geo_location |
+-----------+----------+-------+---------------+----------------------+--------------+
| paycard   |        3 |   330 |       8008.00 |                 9009 | NULL         |
| paypoints |        4 |   200 |       8000.00 |                 6800 | NULL         |
+-----------+----------+-------+---------------+----------------------+--------------+
2 rows in set (0.000 sec)

MariaDB [bank]> create table bank_holidays(
    -> holiday date,
    -> start_time datetime,
    -> end_time timestamp,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 5
MariaDB [bank]> create table bank_holidays(
    -> holiday date,
    -> start_time datetime,
    -> end_time timestamp
    -> );
Query OK, 0 rows affected (0.198 sec)

MariaDB [bank]> select * from bank_holidays;
Empty set (0.002 sec)

MariaDB [bank]> describe bank_holidays;
+------------+-----------+------+-----+---------------------+-------------------------------+
| Field      | Type      | Null | Key | Default             | Extra                         |
+------------+-----------+------+-----+---------------------+-------------------------------+
| holiday    | date      | YES  |     | NULL                |                               |
| start_time | datetime  | YES  |     | NULL                |                               |
| end_time   | timestamp | NO   |     | current_timestamp() | on update current_timestamp() |
+------------+-----------+------+-----+---------------------+-------------------------------+
3 rows in set (0.029 sec)

MariaDB [bank]> insert into bank bank_holidays values(
    -> current_date(),
    -> current_date(),
    -> current_date()
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'bank_holidays values(
current_date(),
current_date(),
current_date()
)' at line 1
MariaDB [bank]> insert into bank_holidays values(
    -> current_date(),
    -> current_date(),
    -> current_date()
    -> );
Query OK, 1 row affected (0.093 sec)

MariaDB [bank]> select * from bank_holidays;
+------------+---------------------+---------------------+
| holiday    | start_time          | end_time            |
+------------+---------------------+---------------------+
| 2022-05-25 | 2022-05-25 00:00:00 | 2022-05-25 00:00:00 |
+------------+---------------------+---------------------+
1 row in set (0.000 sec)

MariaDB [bank]> update bank_details set holiday = date_add(holiday,interval 1 day);
ERROR 1054 (42S22): Unknown column 'holiday' in 'field list'
MariaDB [bank]> update bank_details set holiday = date_add(holiday,interval 1 day);
ERROR 1054 (42S22): Unknown column 'holiday' in 'field list'
MariaDB [bank]> update bank_holidays set holiday = date_add(holiday,interval 1 day);
Query OK, 1 row affected (0.104 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bank]> select * from bank_details;
+-----------+----------+-------+---------------+----------------------+--------------+
| product   | quantity | price | purchase_cost | estimated_sale_price | geo_location |
+-----------+----------+-------+---------------+----------------------+--------------+
| paycard   |        3 |   330 |       8008.00 |                 9009 | NULL         |
| paypoints |        4 |   200 |       8000.00 |                 6800 | NULL         |
+-----------+----------+-------+---------------+----------------------+--------------+
2 rows in set (0.000 sec)

MariaDB [bank]> select product as new_product from bank_details;
+-------------+
| new_product |
+-------------+
| paycard     |
| paypoints   |
+-------------+
2 rows in set (0.001 sec)

MariaDB [bank]> select * from bank_details;
+-----------+----------+-------+---------------+----------------------+--------------+
| product   | quantity | price | purchase_cost | estimated_sale_price | geo_location |
+-----------+----------+-------+---------------+----------------------+--------------+
| paycard   |        3 |   330 |       8008.00 |                 9009 | NULL         |
| paypoints |        4 |   200 |       8000.00 |                 6800 | NULL         |
+-----------+----------+-------+---------------+----------------------+--------------+
2 rows in set (0.000 sec)

MariaDB [bank]> select * from bank_details;
+-----------+----------+-------+---------------+----------------------+--------------+
| product   | quantity | price | purchase_cost | estimated_sale_price | geo_location |
+-----------+----------+-------+---------------+----------------------+--------------+
| paycard   |        3 |   330 |       8008.00 |                 9009 | NULL         |
| paypoints |        4 |   200 |       8000.00 |                 6800 | NULL         |
+-----------+----------+-------+---------------+----------------------+--------------+
2 rows in set (0.000 sec)

MariaDB [bank]> select * from bank_details limit 1;
+---------+----------+-------+---------------+----------------------+--------------+
| product | quantity | price | purchase_cost | estimated_sale_price | geo_location |
+---------+----------+-------+---------------+----------------------+--------------+
| paycard |        3 |   330 |       8008.00 |                 9009 | NULL         |
+---------+----------+-------+---------------+----------------------+--------------+
1 row in set (0.000 sec)

MariaDB [bank]> select substr(Geo_location, 1, 5) from 'bank_details';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''bank_details'' at line 1
MariaDB [bank]>