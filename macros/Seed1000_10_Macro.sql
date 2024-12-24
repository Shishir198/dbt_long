-- macros/Seed1000_10_Macro_Macro.sql
{% macro convert_to_upperg10(column_name) %}
    upper({{ column_name }})
{% endmacro %}

