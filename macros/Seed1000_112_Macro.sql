-- macros/Seed1000_112_Macro_Macro.sql
{% macro convert_to_upperg112(column_name) %}
    upper({{ column_name }})
{% endmacro %}

