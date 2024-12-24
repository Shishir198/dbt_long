-- macros/Seed1000_141_Macro_Macro.sql
{% macro convert_to_upperg141(column_name) %}
    upper({{ column_name }})
{% endmacro %}

