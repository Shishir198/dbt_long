-- macros/Seed1000_147_Macro_Macro.sql
{% macro convert_to_upperg147(column_name) %}
    upper({{ column_name }})
{% endmacro %}

