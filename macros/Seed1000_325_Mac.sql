-- macros/Seed1000_325_Mac.sql
{% macro convert_to_uppermg325(column_name) %}
    upper({{ column_name }})
{% endmacro %}

