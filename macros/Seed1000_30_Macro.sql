-- macros/Seed1000_30_Macro_Macro.sql
{% macro convert_to_upperg30(column_name) %}
    upper({{ column_name }})
{% endmacro %}

