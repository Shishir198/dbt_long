-- macros/Seed1000_96_Macro_Macro.sql
{% macro convert_to_upperg96(column_name) %}
    upper({{ column_name }})
{% endmacro %}

