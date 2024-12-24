-- macros/Seed1000_58_Macro_Macro.sql
{% macro convert_to_upperg58(column_name) %}
    upper({{ column_name }})
{% endmacro %}

