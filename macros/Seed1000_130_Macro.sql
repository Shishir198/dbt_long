-- macros/Seed1000_130_Macro_Macro.sql
{% macro convert_to_upperg130(column_name) %}
    upper({{ column_name }})
{% endmacro %}

