-- macros/Seed1000_71_Macro_Macro.sql
{% macro convert_to_upperg71(column_name) %}
    upper({{ column_name }})
{% endmacro %}

