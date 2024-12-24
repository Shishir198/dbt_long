-- macros/Seed1000_33_Macro_Macro.sql
{% macro convert_to_upperg33(column_name) %}
    upper({{ column_name }})
{% endmacro %}

