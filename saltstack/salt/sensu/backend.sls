include:
  - sensu.common

backend_pkg:
  pkg.installed:
    - pkgs:
      - sensu-go-backend
      - sensu-go-cli

sensu_dir:
  file.directory:
    - name: /etc/sensu
    - user: sensu
    - group: sensu
    - mode: 750

backend_file:
  file.managed:
    - name: /etc/sensu/backend.yml
    - source: salt://sensu/files/backend.yml.jinja
    - user: sensu
    - group: sensu
    - mode: 644

backend_admin_env:
  environ.setenv:
    - name: SENSU_BACKEND_CLUSTER_ADMIN_USERNAME
    - value: admin

backend_passwd_env:
  environ.setenv:
    - name: SENSU_BACKEND_CLUSTER_ADMIN_PASSWORD
    - value: admin

backend_init_cmd:
  cmd.run:
    - name: sensu-backend init

sensu-backend:
  service.running:
    - enable: True
