{{ config(materialized='table')}}

WITH sales_data AS (
    SELECT 
        sales_id, 
        product_id, 
        sale_date, 
        sale_amount, 
        tax_rate
    FROM {{ ref('taxdata') }}
)

SELECT
    sales_id,
    product_id,
    sale_date,
    sale_amount,
    tax_rate,
    {{ calculate_sales_tax('sale_amount', 'tax_rate') }} AS sales_tax
FROM sales_data