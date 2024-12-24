-- macros/Seed1000_67_Macro_Macro.sql
{% macro convert_to_upperg67(column_name) %}
    upper({{ column_name }})
{% endmacro %}

