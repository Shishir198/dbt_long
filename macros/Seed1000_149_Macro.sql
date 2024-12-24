-- macros/Seed1000_149_Macro_Macro.sql
{% macro convert_to_upperg149(column_name) %}
    upper({{ column_name }})
{% endmacro %}

