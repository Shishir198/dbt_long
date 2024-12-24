-- macros/Seed1000_64_Macro_Macro.sql
{% macro convert_to_upperg64(column_name) %}
    upper({{ column_name }})
{% endmacro %}

