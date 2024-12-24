-- macros/Seed1000_142_Macro_Macro.sql
{% macro convert_to_upperg142(column_name) %}
    upper({{ column_name }})
{% endmacro %}

