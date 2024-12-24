-- macros/Seed1000_132_Macro_Macro.sql
{% macro convert_to_upperg132(column_name) %}
    upper({{ column_name }})
{% endmacro %}

