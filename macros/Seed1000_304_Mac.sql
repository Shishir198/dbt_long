-- macros/Seed1000_304_Mac.sql
{% macro convert_to_uppermg304(column_name) %}
    upper({{ column_name }})
{% endmacro %}

