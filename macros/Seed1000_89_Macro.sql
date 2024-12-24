-- macros/Seed1000_89_Macro_Macro.sql
{% macro convert_to_upperg89(column_name) %}
    upper({{ column_name }})
{% endmacro %}

