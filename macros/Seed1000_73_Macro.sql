-- macros/Seed1000_73_Macro_Macro.sql
{% macro convert_to_upperg73(column_name) %}
    upper({{ column_name }})
{% endmacro %}

