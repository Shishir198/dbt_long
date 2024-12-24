-- macros/Seed1000_8_Macro_Macro.sql
{% macro convert_to_upperg8(column_name) %}
    upper({{ column_name }})
{% endmacro %}

