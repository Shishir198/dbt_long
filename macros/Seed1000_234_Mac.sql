-- macros/Seed1000_234_Mac.sql
{% macro convert_to_uppermg234(column_name) %}
    upper({{ column_name }})
{% endmacro %}

