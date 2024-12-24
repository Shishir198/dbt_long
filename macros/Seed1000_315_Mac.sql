-- macros/Seed1000_315_Mac.sql
{% macro convert_to_uppermg315(column_name) %}
    upper({{ column_name }})
{% endmacro %}

