create database data;

use data;

# 1. Show all columns and rows in the table.
     Select * from salaries;

# 2. Show only the EmployeeName and Jobtitle columns.
     Select EmployeeName,JobTitle from salaries;

# 3. Show the number of employees in the table.
     Select count(*) as no_of_emp from Salaries;

# 4. Show the unique job titles in the table.
     Select distinct JobTitle from salaries;

# 5. Show the job title and overtime pay for all employees with overtime pay greater than 50000.
     Select JobTitle,OvertimePay from salaries
     where OvertimePay > 50000;

# 6. Show the average base pay for all employees.
     Select avg(BasePay) as avg_base_pay from salaries;

# 7. Show the top 10 highest paid employees.
     Select EmployeeName,TotalPay from salaries
     order by TotalPay desc
     limit 10;

# 8. Show the average of BasePay, OvertimePay, and OtherPay for each employee.
     Select EmployeeName, (BasePay + OvertimePay + OtherPay)/3 as avg_of_bp_op_otherpay from salaries;

# 9. Show all employees who have the word "Manager" in their job title.
     Select EmployeeName,JobTitle from salaries
     where JobTitle like "%Manager%";

# 10. Show all employees with a job title not equal to "Manager".
	  Select EmployeeName,JobTitle from salaries
      where JobTitle <> "%Manager%";

# 11. Show all employees with a total pay between 50000 and 75000.
	  Select * from salaries
      where TotalPay >= 50000 and TotalPay <= 75000;
      
	  Select * from salaries
      where TotalPay between 50000 and 75000;

# 12. Show all employees with a base pay less than 50000 or a total pay greater than 100000.
	  Select * from salaries
      where BasePay < 50000 or TotalPay > 100000;

# 13. Show all employees with a total pay benefits value  between 125000 and 150000 and a job title containing the word "Director".
      Select * from salaries
      where (TotalPayBenefits between 125000 and 150000) and (JobTitle like "%Director%");

# 14. Show all employees ordered by their total pay benefits in descending order.
      Select * from salaries
      order by TotalPayBenefits desc;

# 15. Show all job titles with an average base pay of at least 100000 and order them by the average base pay in descending order.
      Select JobTitle,avg(BasePay) as avg_bp from salaries
      group by JobTitle
      having avg(BasePay) >= 100000
      order by avg_bp desc;

# 16. Update the base pay of all employees with the job title containing "Manager" by increasing it by 10%.
      Update salaries
      set BasePay = BasePay * 1.10
      where JobTitle like "%Manager%";
      
      Select * from salaries;

# 17. Delete all employees who have no OvertimePay.
      Delete from salaries
      where OvertimePay = 0;