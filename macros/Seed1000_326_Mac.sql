-- macros/Seed1000_326_Mac.sql
{% macro convert_to_uppermg326(column_name) %}
    upper({{ column_name }})
{% endmacro %}

