
with

source as (

    select * from {{ source('dvdrental','category') }}

)

select * from source