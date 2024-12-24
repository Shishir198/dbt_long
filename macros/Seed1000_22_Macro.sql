-- macros/Seed1000_22_Macro_Macro.sql
{% macro convert_to_upperg22(column_name) %}
    upper({{ column_name }})
{% endmacro %}

