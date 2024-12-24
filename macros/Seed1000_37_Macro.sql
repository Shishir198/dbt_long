-- macros/Seed1000_37_Macro_Macro.sql
{% macro convert_to_upperg37(column_name) %}
    upper({{ column_name }})
{% endmacro %}

