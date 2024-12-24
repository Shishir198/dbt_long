-- macros/Seed1000_94_Macro_Macro.sql
{% macro convert_to_upperg94(column_name) %}
    upper({{ column_name }})
{% endmacro %}

