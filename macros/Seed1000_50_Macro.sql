-- macros/Seed1000_50_Macro_Macro.sql
{% macro convert_to_upperg50(column_name) %}
    upper({{ column_name }})
{% endmacro %}

