with 

source as (

    select * from {{ source('raw', 'customers') }}

),

renamed as (

    select
        id,
        name,
        surname,
        creation_date,
        number_of_orders,
        total_turnover

    from source

)

select * from renamed