-- macros/Seed1000_110_Macro_Macro.sql
{% macro convert_to_upperg110(column_name) %}
    upper({{ column_name }})
{% endmacro %}

