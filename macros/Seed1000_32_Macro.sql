-- macros/Seed1000_32_Macro_Macro.sql
{% macro convert_to_upperg32(column_name) %}
    upper({{ column_name }})
{% endmacro %}

