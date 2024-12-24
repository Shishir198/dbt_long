-- macros/Seed1000_261_Mac.sql
{% macro convert_to_uppermg261(column_name) %}
    upper({{ column_name }})
{% endmacro %}

