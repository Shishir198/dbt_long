-- macros/Seed1000_105_Macro_Macro.sql
{% macro convert_to_upperg105(column_name) %}
    upper({{ column_name }})
{% endmacro %}

