-- macros/Seed1000_118_Macro_Macro.sql
{% macro convert_to_upperg118(column_name) %}
    upper({{ column_name }})
{% endmacro %}

