select country_region,
       DATE_TRUNC(date, WEEK) AS week,
       sum(confirmed)         AS sum_confirmed,
       sum(deaths)            AS sum_deaths
from `bigquery-public-data.covid19_open_data.compatibility_view`
group by 1, 2
order by week asc