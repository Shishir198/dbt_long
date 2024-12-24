-- macros/Seed1000_104_Macro_Macro.sql
{% macro convert_to_upperg104(column_name) %}
    upper({{ column_name }})
{% endmacro %}

