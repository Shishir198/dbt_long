-- macros/Seed1000_81_Macro_Macro.sql
{% macro convert_to_upperg81(column_name) %}
    upper({{ column_name }})
{% endmacro %}

