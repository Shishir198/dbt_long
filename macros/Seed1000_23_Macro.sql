-- macros/Seed1000_23_Macro_Macro.sql
{% macro convert_to_upperg23(column_name) %}
    upper({{ column_name }})
{% endmacro %}

