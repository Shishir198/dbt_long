-- macros/Seed1000_287_Mac.sql
{% macro convert_to_uppermg287(column_name) %}
    upper({{ column_name }})
{% endmacro %}

