-- macros/Seed1000_139_Macro_Macro.sql
{% macro convert_to_upperg139(column_name) %}
    upper({{ column_name }})
{% endmacro %}

