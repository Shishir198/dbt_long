-- macros/Seed1000_270_Mac.sql
{% macro convert_to_uppermg270(column_name) %}
    upper({{ column_name }})
{% endmacro %}

