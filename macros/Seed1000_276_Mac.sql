-- macros/Seed1000_276_Mac.sql
{% macro convert_to_uppermg276(column_name) %}
    upper({{ column_name }})
{% endmacro %}

