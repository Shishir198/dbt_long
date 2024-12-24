-- macros/Seed1000_117_Macro_Macro.sql
{% macro convert_to_upperg117(column_name) %}
    upper({{ column_name }})
{% endmacro %}

