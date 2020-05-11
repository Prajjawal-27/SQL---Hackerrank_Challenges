SELECT (months*salary)as earnings,count(employee_id)
from Employee
group by earnings
order by earnings DESC
limit 1;
