-- macros/Seed1000_78_Macro_Macro.sql
{% macro convert_to_upperg78(column_name) %}
    upper({{ column_name }})
{% endmacro %}

