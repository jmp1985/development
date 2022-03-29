name: dev
config:
  nvidia.driver.capabilities: all
  nvidia.runtime: true
  user.user-data: |
    #cloud-config
    users:
      - name: root
        ssh-import-id: gh:jmp1985
        shell: /bin/bash
    apt:
      sources:
        cuda.list:
          source: "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /" 
          keyid: 7fa2af80
    package_update: true
    package_upgrade: true
    packages:
      - x11-apps
      - build-essential
      - cuda-toolkit-11.6
      - libfftw3-dev
      - python-is-python3
      - python3-dev
      - python3-pip
      - neovim
    runcmd:
      - wget https://github.com/jmp1985/development/bootstrap.sh
devices:
  gpu:
    type: gpu
  host:
    source: /home/upc86896
    path: /home/ubuntu/host
    type: disk
    shift: true
use_by: []
