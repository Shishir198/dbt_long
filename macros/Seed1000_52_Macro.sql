-- macros/Seed1000_52_Macro_Macro.sql
{% macro convert_to_upperg52(column_name) %}
    upper({{ column_name }})
{% endmacro %}

