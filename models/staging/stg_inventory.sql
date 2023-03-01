
with

source as (

    select * from {{ source('dvdrental','inventory') }}

)

select * from source