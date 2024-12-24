-- macros/Seed1000_25_Macro_Macro.sql
{% macro convert_to_upperg25(column_name) %}
    upper({{ column_name }})
{% endmacro %}

