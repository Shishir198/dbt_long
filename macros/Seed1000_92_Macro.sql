-- macros/Seed1000_92_Macro_Macro.sql
{% macro convert_to_upperg92(column_name) %}
    upper({{ column_name }})
{% endmacro %}

