select 
 country_region,
 province_state,
 DATE_TRUNC(date, WEEK) AS week,
  sum(confirmed) AS sum_confirmed,
  sum(deaths) AS sum_deaths
from {{ source('covid19_open_data', 'compatibility_view') }}
group by 1, 2, 3      
order by week asc