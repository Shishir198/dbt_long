-- macros/Seed1000_129_Macro_Macro.sql
{% macro convert_to_upperg129(column_name) %}
    upper({{ column_name }})
{% endmacro %}

