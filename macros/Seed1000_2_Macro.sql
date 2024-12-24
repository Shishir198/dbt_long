-- macros/Seed1000_2_Macro_Macro.sql
{% macro convert_to_upperg2(column_name) %}
    upper({{ column_name }})
{% endmacro %}

