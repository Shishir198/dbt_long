-- macros/Seed1000_42_Macro_Macro.sql
{% macro convert_to_upperg42(column_name) %}
    upper({{ column_name }})
{% endmacro %}

