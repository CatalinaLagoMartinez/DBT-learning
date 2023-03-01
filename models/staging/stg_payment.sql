
with

source as (

    select * from {{ source('dvdrental','payment') }}

)

select * from source