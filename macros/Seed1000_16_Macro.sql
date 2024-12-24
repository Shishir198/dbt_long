-- macros/Seed1000_16_Macro_Macro.sql
{% macro convert_to_upperg16(column_name) %}
    upper({{ column_name }})
{% endmacro %}

