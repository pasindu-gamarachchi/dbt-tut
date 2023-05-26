with payments as (
    select * from {{ref('stg_payments')}}
)

select
    orderid,
    sum(amount) as total_mount
from {{ref('stg_payments')}}
group by 1
having total_mount < 0