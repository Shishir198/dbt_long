-- macros/Seed1000_122_Macro_Macro.sql
{% macro convert_to_upperg122(column_name) %}
    upper({{ column_name }})
{% endmacro %}

