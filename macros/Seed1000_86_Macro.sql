-- macros/Seed1000_86_Macro_Macro.sql
{% macro convert_to_upperg86(column_name) %}
    upper({{ column_name }})
{% endmacro %}

