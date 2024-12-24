-- macros/Seed1000_93_Macro_Macro.sql
{% macro convert_to_upperg93(column_name) %}
    upper({{ column_name }})
{% endmacro %}

