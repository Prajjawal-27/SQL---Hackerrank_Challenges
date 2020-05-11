set @drow = 0, @prow =0,@arow = 0, @srow = 0;
select min(Doctor),min(Professor),min(Singer),min(Actor)
from (
    select case when Occupation = 'Doctor' then (@drow:=@drow+1)
            when Occupation = 'Professor' then (@prow:=@prow +1)
           when Occupation = 'Singer' then (@srow:=@srow+ 1)
           when Occupation = 'Actor' then (@arow:=@arow +1) end as row_no,
     case when Occupation = 'Doctor' Then Name else null end as Doctor,
     case when Occupation = 'Professor' Then Name else null end as Professor,
    case when Occupation = 'Singer' Then Name else null   end as Singer,
    case when Occupation = 'Actor' Then Name  else null end as Actor
     from OCCUPATIONS
     order by Name
) as temp 
 group by row_no;
