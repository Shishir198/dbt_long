-- macros/Seed1000_5_Macro_Macro.sql
{% macro convert_to_upperg5(column_name) %}
    upper({{ column_name }})
{% endmacro %}

