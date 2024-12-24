-- macros/Seed1000_273_Mac.sql
{% macro convert_to_uppermg273(column_name) %}
    upper({{ column_name }})
{% endmacro %}

