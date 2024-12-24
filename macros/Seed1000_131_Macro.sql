-- macros/Seed1000_131_Macro_Macro.sql
{% macro convert_to_upperg131(column_name) %}
    upper({{ column_name }})
{% endmacro %}

