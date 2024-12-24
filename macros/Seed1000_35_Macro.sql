-- macros/Seed1000_35_Macro_Macro.sql
{% macro convert_to_upperg35(column_name) %}
    upper({{ column_name }})
{% endmacro %}

