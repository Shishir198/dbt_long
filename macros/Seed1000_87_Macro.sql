-- macros/Seed1000_87_Macro_Macro.sql
{% macro convert_to_upperg87(column_name) %}
    upper({{ column_name }})
{% endmacro %}

