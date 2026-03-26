with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        products_id,
        customers_id,
        category_1,
        category_2,
        category_3,
        code,
        promo_name,
        turnover_before_promo,
        turnover,
        purchase_cost,
        qty

    from source

)

select * from renamed