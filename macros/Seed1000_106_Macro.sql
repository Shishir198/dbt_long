-- macros/Seed1000_106_Macro_Macro.sql
{% macro convert_to_upperg106(column_name) %}
    upper({{ column_name }})
{% endmacro %}

