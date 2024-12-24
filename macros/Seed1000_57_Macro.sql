-- macros/Seed1000_57_Macro_Macro.sql
{% macro convert_to_upperg57(column_name) %}
    upper({{ column_name }})
{% endmacro %}

