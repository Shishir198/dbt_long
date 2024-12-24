-- macros/Seed1000_127_Macro_Macro.sql
{% macro convert_to_upperg127(column_name) %}
    upper({{ column_name }})
{% endmacro %}

