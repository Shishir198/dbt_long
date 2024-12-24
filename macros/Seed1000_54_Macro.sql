-- macros/Seed1000_54_Macro_Macro.sql
{% macro convert_to_upperg54(column_name) %}
    upper({{ column_name }})
{% endmacro %}

