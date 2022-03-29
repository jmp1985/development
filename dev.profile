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
    package_update: true
    package_upgrade: true
    packages:
      - x11-apps
      - build-essential
      - libfftw3-dev
      - python-is-python3
      - python3-dev
      - python3-pip
    runcmd:
      - wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
      - sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
      - sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/7fa2af80.pub
      - sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
      - sudo apt-get update
      - sudo apt-get -y install cuda-toolkit-11.6
devices:
  gpu:
    type: gpu
use_by: []
