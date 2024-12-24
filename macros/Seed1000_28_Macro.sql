-- macros/Seed1000_28_Macro_Macro.sql
{% macro convert_to_upperg28(column_name) %}
    upper({{ column_name }})
{% endmacro %}

