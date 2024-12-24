-- macros/Seed1000_31_Macro_Macro.sql
{% macro convert_to_upperg31(column_name) %}
    upper({{ column_name }})
{% endmacro %}

