-- macros/Seed1000_133_Macro_Macro.sql
{% macro convert_to_upperg133(column_name) %}
    upper({{ column_name }})
{% endmacro %}

