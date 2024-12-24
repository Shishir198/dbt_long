-- macros/Seed1000_46_Macro_Macro.sql
{% macro convert_to_upperg46(column_name) %}
    upper({{ column_name }})
{% endmacro %}

