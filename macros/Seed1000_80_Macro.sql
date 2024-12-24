-- macros/Seed1000_80_Macro_Macro.sql
{% macro convert_to_upperg80(column_name) %}
    upper({{ column_name }})
{% endmacro %}

