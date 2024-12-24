-- macros/Seed1000_4_Macro_Macro.sql
{% macro convert_to_upperg4(column_name) %}
    upper({{ column_name }})
{% endmacro %}

