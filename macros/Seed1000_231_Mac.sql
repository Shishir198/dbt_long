-- macros/Seed1000_231_Mac.sql
{% macro convert_to_uppermg231(column_name) %}
    upper({{ column_name }})
{% endmacro %}

