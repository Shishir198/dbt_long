-- macros/Seed1000_18_Macro_Macro.sql
{% macro convert_to_upperg18(column_name) %}
    upper({{ column_name }})
{% endmacro %}

