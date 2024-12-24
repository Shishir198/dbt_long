-- macros/Seed1000_85_Macro_Macro.sql
{% macro convert_to_upperg85(column_name) %}
    upper({{ column_name }})
{% endmacro %}

