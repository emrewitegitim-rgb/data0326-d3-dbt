select 
    s.turnover
    , s.purchase_cost
    , c.name || ' ' || c.surname as customer_name
    , (s.turnover - s.purchase_cost) as margin
from {{ source('raw', 'sales') }} as s
join {{ source('raw', 'customers') }} as c
    on s.customers_id = c.id