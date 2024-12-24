-- macros/Seed1000_120_Macro_Macro.sql
{% macro convert_to_upperg120(column_name) %}
    upper({{ column_name }})
{% endmacro %}

