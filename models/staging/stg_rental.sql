
with

source as (

    select * from {{ source('dvdrental','rental') }}

)

select * from source