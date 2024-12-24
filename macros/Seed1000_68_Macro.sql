-- macros/Seed1000_68_Macro_Macro.sql
{% macro convert_to_upperg68(column_name) %}
    upper({{ column_name }})
{% endmacro %}

