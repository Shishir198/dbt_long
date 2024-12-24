-- macros/Seed1000_102_Macro_Macro.sql
{% macro convert_to_upperg102(column_name) %}
    upper({{ column_name }})
{% endmacro %}

