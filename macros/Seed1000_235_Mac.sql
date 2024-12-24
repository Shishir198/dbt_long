-- macros/Seed1000_235_Mac.sql
{% macro convert_to_uppermg235(column_name) %}
    upper({{ column_name }})
{% endmacro %}

