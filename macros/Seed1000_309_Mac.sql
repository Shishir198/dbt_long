-- macros/Seed1000_309_Mac.sql
{% macro convert_to_uppermg309(column_name) %}
    upper({{ column_name }})
{% endmacro %}

