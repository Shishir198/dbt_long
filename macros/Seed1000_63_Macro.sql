-- macros/Seed1000_63_Macro_Macro.sql
{% macro convert_to_upperg63(column_name) %}
    upper({{ column_name }})
{% endmacro %}

