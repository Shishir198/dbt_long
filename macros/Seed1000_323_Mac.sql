-- macros/Seed1000_323_Mac.sql
{% macro convert_to_uppermg323(column_name) %}
    upper({{ column_name }})
{% endmacro %}

