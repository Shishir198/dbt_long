-- macros/Seed1000_97_Macro_Macro.sql
{% macro convert_to_upperg97(column_name) %}
    upper({{ column_name }})
{% endmacro %}

