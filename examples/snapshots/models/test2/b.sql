{% if builtin.is_snapshot_mode %}
   select * from a2
{% else %}
  select * from a1
{% endif %}
