-- macros/Seed1000_264_Mac.sql
{% macro convert_to_uppermg264(column_name) %}
    upper({{ column_name }})
{% endmacro %}

