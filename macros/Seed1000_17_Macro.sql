-- macros/Seed1000_17_Macro_Macro.sql
{% macro convert_to_upperg17(column_name) %}
    upper({{ column_name }})
{% endmacro %}

