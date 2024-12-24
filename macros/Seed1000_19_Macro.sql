-- macros/Seed1000_19_Macro_Macro.sql
{% macro convert_to_upperg19(column_name) %}
    upper({{ column_name }})
{% endmacro %}

