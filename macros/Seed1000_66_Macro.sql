-- macros/Seed1000_66_Macro_Macro.sql
{% macro convert_to_upperg66(column_name) %}
    upper({{ column_name }})
{% endmacro %}

