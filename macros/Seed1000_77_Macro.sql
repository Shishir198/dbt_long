-- macros/Seed1000_77_Macro_Macro.sql
{% macro convert_to_upperg77(column_name) %}
    upper({{ column_name }})
{% endmacro %}

