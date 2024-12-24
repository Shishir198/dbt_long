-- macros/Seed1000_47_Macro_Macro.sql
{% macro convert_to_upperg47(column_name) %}
    upper({{ column_name }})
{% endmacro %}

