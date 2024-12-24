-- macros/Seed1000_60_Macro_Macro.sql
{% macro convert_to_upperg60(column_name) %}
    upper({{ column_name }})
{% endmacro %}

