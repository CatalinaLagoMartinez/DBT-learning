--What are the top and least rented genres and what are their total sales?
select genre, 
       count(distinct rental_id) as rentals,
       sum(amount) as total_sales

from {{ ref('fact_rentals')}}

group by 1 
order by 2 desc