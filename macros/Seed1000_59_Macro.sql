-- macros/Seed1000_59_Macro_Macro.sql
{% macro convert_to_upperg59(column_name) %}
    upper({{ column_name }})
{% endmacro %}

