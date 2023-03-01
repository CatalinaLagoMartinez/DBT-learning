
with

source as (

    select * from {{ source('dvdrental','film_category') }}

)

select * from source