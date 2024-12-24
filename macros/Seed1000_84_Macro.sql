-- macros/Seed1000_84_Macro_Macro.sql
{% macro convert_to_upperg84(column_name) %}
    upper({{ column_name }})
{% endmacro %}

