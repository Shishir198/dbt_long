-- macros/Seed1000_40_Macro_Macro.sql
{% macro convert_to_upperg40(column_name) %}
    upper({{ column_name }})
{% endmacro %}

