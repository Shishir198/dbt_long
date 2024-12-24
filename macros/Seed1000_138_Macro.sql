-- macros/Seed1000_138_Macro_Macro.sql
{% macro convert_to_upperg138(column_name) %}
    upper({{ column_name }})
{% endmacro %}

