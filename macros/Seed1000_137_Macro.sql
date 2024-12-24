-- macros/Seed1000_137_Macro_Macro.sql
{% macro convert_to_upperg137(column_name) %}
    upper({{ column_name }})
{% endmacro %}

