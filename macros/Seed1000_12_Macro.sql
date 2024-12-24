-- macros/Seed1000_12_Macro_Macro.sql
{% macro convert_to_upperg12(column_name) %}
    upper({{ column_name }})
{% endmacro %}

