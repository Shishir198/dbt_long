-- macros/Seed1000_49_Macro_Macro.sql
{% macro convert_to_upperg49(column_name) %}
    upper({{ column_name }})
{% endmacro %}

