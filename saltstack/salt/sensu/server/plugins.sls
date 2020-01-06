{% from "dev/map.jinja" import permission with context %}

test-conf:
  file.managed:
    - name: /tmp/test.conf
    - template: jinja
    - user: {{ permission.user }}
    - group: {{ permission.group }}
    - mode: {{ permission.mode }}
    - source: {{ pillar ['test']['files']['path'] }}
