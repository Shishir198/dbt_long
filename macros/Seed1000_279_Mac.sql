-- macros/Seed1000_279_Mac.sql
{% macro convert_to_uppermg279(column_name) %}
    upper({{ column_name }})
{% endmacro %}

