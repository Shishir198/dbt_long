-- macros/Seed1000_100_Macro_Macro.sql
{% macro convert_to_upperg100(column_name) %}
    upper({{ column_name }})
{% endmacro %}

