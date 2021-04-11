select e.name, el.location,e.age 
	from employees as e join employee_loc as el 
						on e.name=el.name where el.location='QianTangXian';
select c.name, sum(c.employees), e.year 
	from company as c join established as e 
						on c.name = e.name group by c.name having e.year ='1987';
select c.name, max(c.employees), e.year 
	from company as c join established as e 
						on c.name = e.name group by c.name;