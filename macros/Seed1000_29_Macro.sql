-- macros/Seed1000_29_Macro_Macro.sql
{% macro convert_to_upperg29(column_name) %}
    upper({{ column_name }})
{% endmacro %}

