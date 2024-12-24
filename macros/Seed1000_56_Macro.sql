-- macros/Seed1000_56_Macro_Macro.sql
{% macro convert_to_upperg56(column_name) %}
    upper({{ column_name }})
{% endmacro %}

