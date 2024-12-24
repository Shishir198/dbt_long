-- macros/Seed1000_135_Macro_Macro.sql
{% macro convert_to_upperg135(column_name) %}
    upper({{ column_name }})
{% endmacro %}

