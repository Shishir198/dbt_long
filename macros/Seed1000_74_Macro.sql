-- macros/Seed1000_74_Macro_Macro.sql
{% macro convert_to_upperg74(column_name) %}
    upper({{ column_name }})
{% endmacro %}

