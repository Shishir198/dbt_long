-- macros/Seed1000_9_Macro_Macro.sql
{% macro convert_to_upperg9(column_name) %}
    upper({{ column_name }})
{% endmacro %}

