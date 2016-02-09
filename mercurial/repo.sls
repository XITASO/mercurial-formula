{% from "mercurial/map.jinja" import mercurial with context %}

mercurial-repo:
  pkgrepo.managed:
    - name: mercurial
    - humanname: Mercurial packages for {{ salt['grains.get']('os') }} $releasever
    - baseurl: https://mercurial.selenic.com/release/{{ salt['grains.get']('os')|lower }}$releasever/
    - gpgcheck: 0
{% if mercurial.get('exclude') %}
    - exclude: {{ mercurial.get('exclude') }}
{% endif %}
