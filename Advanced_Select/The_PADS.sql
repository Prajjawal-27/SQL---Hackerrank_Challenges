select concat(Name,'(',(substring(Occupation,1,1)),')')
from OCCUPATIONS
ORDER BY name;

SELECT 'There are a total of' ,count(Occupation),concat(lower(Occupation),'s','.')
from OCCUPATIONS
GROUP BY Occupation
order by count(Occupation),Occupation;
