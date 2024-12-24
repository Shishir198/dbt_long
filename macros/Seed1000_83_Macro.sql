-- macros/Seed1000_83_Macro_Macro.sql
{% macro convert_to_upperg83(column_name) %}
    upper({{ column_name }})
{% endmacro %}

