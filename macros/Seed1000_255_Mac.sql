-- macros/Seed1000_255_Mac.sql
{% macro convert_to_uppermg255(column_name) %}
    upper({{ column_name }})
{% endmacro %}

