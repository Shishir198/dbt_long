-- macros/Seed1000_3_Macro_Macro.sql
{% macro convert_to_upperg3(column_name) %}
    upper({{ column_name }})
{% endmacro %}

