
with

source as (

    select * from {{ source('dvdrental','film') }}

)

select * from source