-- macros/Seed1000_265_Mac.sql
{% macro convert_to_uppermg265(column_name) %}
    upper({{ column_name }})
{% endmacro %}

