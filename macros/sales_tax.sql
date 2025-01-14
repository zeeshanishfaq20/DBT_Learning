{% macro calculate_sales_tax(sales_amount, tax_rate)%}
    {{ sales_amount }} * {{ tax_rate }}
{% endmacro %}