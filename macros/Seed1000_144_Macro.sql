-- macros/Seed1000_144_Macro_Macro.sql
{% macro convert_to_upperg144(column_name) %}
    upper({{ column_name }})
{% endmacro %}

