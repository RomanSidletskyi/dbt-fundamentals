with payment as (

    select
       orderid as order_id,
       paymentmethod,
       status,
       amount,
       created as create_date
    from raw.stripe.payment
      where status = 'success'
)
select * from payment