-- macros/Seed1000_148_Macro_Macro.sql
{% macro convert_to_upperg148(column_name) %}
    upper({{ column_name }})
{% endmacro %}

