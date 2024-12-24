-- macros/Seed1000_229_Mac.sql
{% macro convert_to_uppermg229(column_name) %}
    upper({{ column_name }})
{% endmacro %}

