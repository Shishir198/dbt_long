-- macros/Seed1000_115_Macro_Macro.sql
{% macro convert_to_upperg115(column_name) %}
    upper({{ column_name }})
{% endmacro %}

