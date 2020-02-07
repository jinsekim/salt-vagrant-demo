include:
  - sensu.common

client_pkg:
  pkg.installed:
    - pkgs:
      - sensu-go-agent

sensu_dir:
  file.directory:
    - name: /etc/sensu
    - user: sensu
    - group: sensu
    - mode: 750

agent_file:
  file.managed:
    - name: /etc/sensu/agent.yml
    - source: salt://sensu/files/agent.yml.jinja
    - user: sensu
    - group: sensu
    - mode: 644

sensu-agent:
  service.running:
    - enable: True







