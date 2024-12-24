-- macros/Seed1000_232_Mac.sql
{% macro convert_to_uppermg232(column_name) %}
    upper({{ column_name }})
{% endmacro %}

