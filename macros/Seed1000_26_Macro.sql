-- macros/Seed1000_26_Macro_Macro.sql
{% macro convert_to_upperg26(column_name) %}
    upper({{ column_name }})
{% endmacro %}

