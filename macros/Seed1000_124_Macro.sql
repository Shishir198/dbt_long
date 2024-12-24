-- macros/Seed1000_124_Macro_Macro.sql
{% macro convert_to_upperg124(column_name) %}
    upper({{ column_name }})
{% endmacro %}

