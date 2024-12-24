-- macros/Seed1000_14_Macro_Macro.sql
{% macro convert_to_upperg14(column_name) %}
    upper({{ column_name }})
{% endmacro %}

