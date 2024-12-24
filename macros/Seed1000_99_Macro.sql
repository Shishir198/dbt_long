-- macros/Seed1000_99_Macro_Macro.sql
{% macro convert_to_upperg99(column_name) %}
    upper({{ column_name }})
{% endmacro %}

