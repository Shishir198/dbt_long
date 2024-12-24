-- macros/Seed1000_62_Macro_Macro.sql
{% macro convert_to_upperg62(column_name) %}
    upper({{ column_name }})
{% endmacro %}

