-- macros/Seed1000_15_Macro_Macro.sql
{% macro convert_to_upperg15(column_name) %}
    upper({{ column_name }})
{% endmacro %}

