-- macros/Seed1000_41_Macro_Macro.sql
{% macro convert_to_upperg41(column_name) %}
    upper({{ column_name }})
{% endmacro %}

