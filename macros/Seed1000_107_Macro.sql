-- macros/Seed1000_107_Macro_Macro.sql
{% macro convert_to_upperg107(column_name) %}
    upper({{ column_name }})
{% endmacro %}
