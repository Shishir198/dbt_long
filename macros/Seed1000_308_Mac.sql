-- macros/Seed1000_308_Mac.sql
{% macro convert_to_uppermg308(column_name) %}
    upper({{ column_name }})
{% endmacro %}

