-- macros/Seed1000_125_Macro_Macro.sql
{% macro convert_to_upperg125(column_name) %}
    upper({{ column_name }})
{% endmacro %}

