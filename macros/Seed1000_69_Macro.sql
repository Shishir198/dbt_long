-- macros/Seed1000_69_Macro_Macro.sql
{% macro convert_to_upperg69(column_name) %}
    upper({{ column_name }})
{% endmacro %}

