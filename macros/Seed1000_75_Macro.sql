-- macros/Seed1000_75_Macro_Macro.sql
{% macro convert_to_upperg75(column_name) %}
    upper({{ column_name }})
{% endmacro %}

