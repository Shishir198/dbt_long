-- macros/Seed1000_51_Macro_Macro.sql
{% macro convert_to_upperg51(column_name) %}
    upper({{ column_name }})
{% endmacro %}

