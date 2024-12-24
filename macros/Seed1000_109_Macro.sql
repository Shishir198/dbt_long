-- macros/Seed1000_109_Macro_Macro.sql
{% macro convert_to_upperg109(column_name) %}
    upper({{ column_name }})
{% endmacro %}

