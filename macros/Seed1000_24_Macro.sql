-- macros/Seed1000_24_Macro_Macro.sql
{% macro convert_to_upperg24(column_name) %}
    upper({{ column_name }})
{% endmacro %}

