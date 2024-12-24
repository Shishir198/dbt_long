-- macros/Seed1000_21_Macro_Macro.sql
{% macro convert_to_upperg21(column_name) %}
    upper({{ column_name }})
{% endmacro %}

