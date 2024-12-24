-- macros/Seed1000_260_Mac.sql
{% macro convert_to_uppermg260(column_name) %}
    upper({{ column_name }})
{% endmacro %}

