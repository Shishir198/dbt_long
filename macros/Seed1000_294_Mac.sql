-- macros/Seed1000_294_Mac.sql
{% macro convert_to_uppermg294(column_name) %}
    upper({{ column_name }})
{% endmacro %}

