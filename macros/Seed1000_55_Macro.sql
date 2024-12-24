-- macros/Seed1000_55_Macro_Macro.sql
{% macro convert_to_upperg55(column_name) %}
    upper({{ column_name }})
{% endmacro %}

