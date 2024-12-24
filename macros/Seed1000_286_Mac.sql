-- macros/Seed1000_286_Mac.sql
{% macro convert_to_uppermg286(column_name) %}
    upper({{ column_name }})
{% endmacro %}

