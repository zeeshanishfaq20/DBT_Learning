select
    s.sales_id,
    s.sale_date,
    s.sale_amount,
    s.sales_tax
FROM {{ source('PUBLIC', 'TAX') }} s
JOIN {{ ref('products_details') }} p ON s.product_id = p.product_id