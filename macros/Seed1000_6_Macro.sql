-- macros/Seed1000_6_Macro_Macro.sql
{% macro convert_to_upperg6(column_name) %}
    upper({{ column_name }})
{% endmacro %}

