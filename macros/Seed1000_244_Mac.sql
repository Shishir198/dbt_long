-- macros/Seed1000_244_Mac.sql
{% macro convert_to_uppermg244(column_name) %}
    upper({{ column_name }})
{% endmacro %}

