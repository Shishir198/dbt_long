-- macros/Seed1000_90_Macro_Macro.sql
{% macro convert_to_upperg90(column_name) %}
    upper({{ column_name }})
{% endmacro %}

