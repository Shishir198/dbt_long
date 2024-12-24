-- macros/Seed1000_53_Macro_Macro.sql
{% macro convert_to_upperg53(column_name) %}
    upper({{ column_name }})
{% endmacro %}

