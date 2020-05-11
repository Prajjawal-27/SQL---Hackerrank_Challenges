select id, age, coins_needed, power 
from (  select id, age, coins_needed, power,
      min(coins_needed) over(partition by age, power order by coins_needed) as minimum_coins
      from wands w inner join wands_property w_p 
      on w.code=w_p.code where is_evil=0 ) as p 
where coins_needed - minimum_coins=0 
order by power desc, age desc;
