-- macros/Seed1000_34_Macro_Macro.sql
{% macro convert_to_upperg34(column_name) %}
    upper({{ column_name }})
{% endmacro %}

