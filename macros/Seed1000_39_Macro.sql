-- macros/Seed1000_39_Macro_Macro.sql
{% macro convert_to_upperg39(column_name) %}
    upper({{ column_name }})
{% endmacro %}

