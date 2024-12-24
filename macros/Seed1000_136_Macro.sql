-- macros/Seed1000_136_Macro_Macro.sql
{% macro convert_to_upperg136(column_name) %}
    upper({{ column_name }})
{% endmacro %}

