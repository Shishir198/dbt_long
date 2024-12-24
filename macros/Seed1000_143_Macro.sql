-- macros/Seed1000_143_Macro_Macro.sql
{% macro convert_to_upperg143(column_name) %}
    upper({{ column_name }})
{% endmacro %}

