-- macros/Seed1000_296_Mac.sql
{% macro convert_to_uppermg296(column_name) %}
    upper({{ column_name }})
{% endmacro %}

