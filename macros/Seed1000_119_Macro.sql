-- macros/Seed1000_119_Macro_Macro.sql
{% macro convert_to_upperg119(column_name) %}
    upper({{ column_name }})
{% endmacro %}

