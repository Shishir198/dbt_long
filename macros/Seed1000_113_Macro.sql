-- macros/Seed1000_113_Macro_Macro.sql
{% macro convert_to_upperg113(column_name) %}
    upper({{ column_name }})
{% endmacro %}

