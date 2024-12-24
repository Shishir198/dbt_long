-- macros/Seed1000_98_Macro_Macro.sql
{% macro convert_to_upperg98(column_name) %}
    upper({{ column_name }})
{% endmacro %}

