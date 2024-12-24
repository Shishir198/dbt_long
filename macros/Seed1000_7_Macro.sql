-- macros/Seed1000_7_Macro_Macro.sql
{% macro convert_to_upperg7(column_name) %}
    upper({{ column_name }})
{% endmacro %}

