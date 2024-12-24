-- macros/Seed1000_36_Macro_Macro.sql
{% macro convert_to_upperg36(column_name) %}
    upper({{ column_name }})
{% endmacro %}

