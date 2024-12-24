-- macros/Seed1000_65_Macro_Macro.sql
{% macro convert_to_upperg65(column_name) %}
    upper({{ column_name }})
{% endmacro %}

