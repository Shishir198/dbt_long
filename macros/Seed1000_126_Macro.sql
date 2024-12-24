-- macros/Seed1000_126_Macro_Macro.sql
{% macro convert_to_upperg126(column_name) %}
    upper({{ column_name }})
{% endmacro %}

