-- macros/Seed1000_263_Mac.sql
{% macro convert_to_uppermg263(column_name) %}
    upper({{ column_name }})
{% endmacro %}

