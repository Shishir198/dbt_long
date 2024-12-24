-- macros/Seed1000_123_Macro_Macro.sql
{% macro convert_to_upperg123(column_name) %}
    upper({{ column_name }})
{% endmacro %}

