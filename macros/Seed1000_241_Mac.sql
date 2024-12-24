-- macros/Seed1000_241_Mac.sql
{% macro convert_to_uppermg241(column_name) %}
    upper({{ column_name }})
{% endmacro %}

