-- macros/Seed1000_11_Macro_Macro.sql
{% macro convert_to_upperg11(column_name) %}
    upper({{ column_name }})
{% endmacro %}
