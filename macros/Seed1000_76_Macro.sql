-- macros/Seed1000_76_Macro_Macro.sql
{% macro convert_to_upperg76(column_name) %}
    upper({{ column_name }})
{% endmacro %}

