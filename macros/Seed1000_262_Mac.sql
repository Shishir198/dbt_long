-- macros/Seed1000_262_Mac.sql
{% macro convert_to_uppermg262(column_name) %}
    upper({{ column_name }})
{% endmacro %}

