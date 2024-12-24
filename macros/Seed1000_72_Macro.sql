-- macros/Seed1000_72_Macro_Macro.sql
{% macro convert_to_upperg72(column_name) %}
    upper({{ column_name }})
{% endmacro %}

