-- macros/Seed1000_103_Macro_Macro.sql
{% macro convert_to_upperg103(column_name) %}
    upper({{ column_name }})
{% endmacro %}

