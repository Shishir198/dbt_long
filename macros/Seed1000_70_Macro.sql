-- macros/Seed1000_70_Macro_Macro.sql
{% macro convert_to_upperg70(column_name) %}
    upper({{ column_name }})
{% endmacro %}

