-- macros/Seed1000_20_Macro_Macro.sql
{% macro convert_to_upperg20(column_name) %}
    upper({{ column_name }})
{% endmacro %}

