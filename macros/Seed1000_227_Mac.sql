-- macros/Seed1000_227_Mac.sql
{% macro convert_to_uppermg227(column_name) %}
    upper({{ column_name }})
{% endmacro %}

