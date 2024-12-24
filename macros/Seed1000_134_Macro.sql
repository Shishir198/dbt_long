-- macros/Seed1000_134_Macro_Macro.sql
{% macro convert_to_upperg134(column_name) %}
    upper({{ column_name }})
{% endmacro %}

