-- macros/Seed1000_305_Mac.sql
{% macro convert_to_uppermg305(column_name) %}
    upper({{ column_name }})
{% endmacro %}

