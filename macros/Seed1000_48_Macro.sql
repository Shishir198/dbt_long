-- macros/Seed1000_48_Macro_Macro.sql
{% macro convert_to_upperg48(column_name) %}
    upper({{ column_name }})
{% endmacro %}

