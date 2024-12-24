-- macros/Seed1000_140_Macro_Macro.sql
{% macro convert_to_upperg140(column_name) %}
    upper({{ column_name }})
{% endmacro %}

