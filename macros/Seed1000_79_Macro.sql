-- macros/Seed1000_79_Macro_Macro.sql
{% macro convert_to_upperg79(column_name) %}
    upper({{ column_name }})
{% endmacro %}

