-- macros/Seed1000_101_Macro_Macro.sql
{% macro convert_to_upperg101(column_name) %}
    upper({{ column_name }})
{% endmacro %}

