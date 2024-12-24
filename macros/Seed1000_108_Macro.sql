-- macros/Seed1000_108_Macro_Macro.sql
{% macro convert_to_upperg108(column_name) %}
    upper({{ column_name }})
{% endmacro %}

