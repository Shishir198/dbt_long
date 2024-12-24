-- macros/Seed1000_114_Macro_Macro.sql
{% macro convert_to_upperg114(column_name) %}
    upper({{ column_name }})
{% endmacro %}

