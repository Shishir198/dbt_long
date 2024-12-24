-- macros/Seed1000_44_Macro_Macro.sql
{% macro convert_to_upperg44(column_name) %}
    upper({{ column_name }})
{% endmacro %}

