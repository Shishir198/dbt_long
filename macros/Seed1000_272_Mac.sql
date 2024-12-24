-- macros/Seed1000_272_Mac.sql
{% macro convert_to_uppermg272(column_name) %}
    upper({{ column_name }})
{% endmacro %}

