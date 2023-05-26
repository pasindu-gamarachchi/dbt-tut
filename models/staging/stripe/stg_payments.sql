with payments as (
    
    select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        amount /100 as amount,
        created,
        _batched_at

    from {{ source('stripe', 'payment')}}
)

select * from payments