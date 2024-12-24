-- macros/Seed1000_61_Macro_Macro.sql
{% macro convert_to_upperg61(column_name) %}
    upper({{ column_name }})
{% endmacro %}

