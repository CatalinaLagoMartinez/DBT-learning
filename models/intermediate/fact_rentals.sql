
select rental.*,
       category.name as genre,
       payment.amount,
       payment.payment_date

    
from {{ ref('stg_rental') }} as rental 
left join {{ ref('stg_inventory') }} as inventory on rental.inventory_id=inventory.inventory_id
left join {{ ref('stg_film_category') }} as film_category on inventory.film_id=film_category.film_id
left join {{ ref('stg_category') }} as category on category.category_id=film_category.category_id
left join {{ ref('stg_payment') }} as payment on payment.rental_id=rental.rental_id