 select
       orderid as order_id,
       paymentmethod,
       status,
       amount,
       created as create_date
    from {{ source('stripe', 'payment') }}
      where status = 'success'
