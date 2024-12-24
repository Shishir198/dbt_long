-- macros/Seed1000_91_Macro_Macro.sql
{% macro convert_to_upperg91(column_name) %}
    upper({{ column_name }})
{% endmacro %}

