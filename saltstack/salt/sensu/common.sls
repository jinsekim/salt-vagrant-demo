sensu_repo:
  pkgrepo.managed:
    - humanname: sensu 
      name: deb https://packagecloud.io/sensu/community/ubuntu/ trusty main
      file: /etc/apt/sources.list.d/sensu_stable.list
      key_url: https://packagecloud.io/sensu/community/gpgkey
      key_id: 44DC87DBAC6CD012

common_pkg:
  pkg.installed:
    - pkgs:
      - gnupg
      - curl
      - debian-archive-keyring
      - apt-transport-https