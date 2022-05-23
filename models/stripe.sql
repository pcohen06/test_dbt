with
stripe_ca as 
(select * from {{ source('airbyte_stripe_ca','raw_disputes') }}),

stripe_us as 
(select * from {{ source('airbyte_stripe_us','raw_disputes') }}),

stripe_eu as 
(select * from {{ source('airbyte_stripe_eu','raw_disputes') }})

select * from stripe_ca union all 
select * from stripe_eu union all
select * from stripe_us