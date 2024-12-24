-- macros/Seed1000_128_Macro_Macro.sql
{% macro convert_to_upperg128(column_name) %}
    upper({{ column_name }})
{% endmacro %}

