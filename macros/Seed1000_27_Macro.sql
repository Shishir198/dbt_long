-- macros/Seed1000_27_Macro_Macro.sql
{% macro convert_to_upperg27(column_name) %}
    upper({{ column_name }})
{% endmacro %}

