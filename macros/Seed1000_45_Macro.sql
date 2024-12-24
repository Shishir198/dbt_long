-- macros/Seed1000_45_Macro_Macro.sql
{% macro convert_to_upperg45(column_name) %}
    upper({{ column_name }})
{% endmacro %}

