-- macros/Seed1000_306_Mac.sql
{% macro convert_to_uppermg306(column_name) %}
    upper({{ column_name }})
{% endmacro %}

