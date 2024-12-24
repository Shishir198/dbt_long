-- macros/Seed1000_146_Macro_Macro.sql
{% macro convert_to_upperg146(column_name) %}
    upper({{ column_name }})
{% endmacro %}

