-- macros/Seed1000_310_Mac.sql
{% macro convert_to_uppermg310(column_name) %}
    upper({{ column_name }})
{% endmacro %}

