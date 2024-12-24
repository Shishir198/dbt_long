-- macros/Seed1000_145_Macro_Macro.sql
{% macro convert_to_upperg145(column_name) %}
    upper({{ column_name }})
{% endmacro %}

