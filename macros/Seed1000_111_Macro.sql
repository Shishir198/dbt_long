-- macros/Seed1000_111_Macro_Macro.sql
{% macro convert_to_upperg111(column_name) %}
    upper({{ column_name }})
{% endmacro %}

