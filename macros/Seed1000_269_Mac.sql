-- macros/Seed1000_269_Mac.sql
{% macro convert_to_uppermg269(column_name) %}
    upper({{ column_name }})
{% endmacro %}

