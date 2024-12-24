-- macros/Seed1000_281_Mac.sql
{% macro convert_to_uppermg281(column_name) %}
    upper({{ column_name }})
{% endmacro %}

