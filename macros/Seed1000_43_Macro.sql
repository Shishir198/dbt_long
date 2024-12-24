-- macros/Seed1000_43_Macro_Macro.sql
{% macro convert_to_upperg43(column_name) %}
    upper({{ column_name }})
{% endmacro %}

