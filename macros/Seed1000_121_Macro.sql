-- macros/Seed1000_121_Macro_Macro.sql
{% macro convert_to_upperg121(column_name) %}
    upper({{ column_name }})
{% endmacro %}

