-- macros/Seed1000_150_Macro_Macro.sql
{% macro convert_to_upperg150(column_name) %}
    upper({{ column_name }})
{% endmacro %}

