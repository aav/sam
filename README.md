# SMILART APPLICATION MANAGER #

Options:

        -f  [archive.tar]       Load image from tar archive

        -i  [image]:[version]   Install selected docker image

        -u  [image]:[version]   Uninstall selected container

        -x  [-f:-i:-u]          Debug mode

        -I  [image]:[version]   Print image info

        -c  [image]:[version]   Copy metadata from image to directory /tmp

        -l                      List installed image

        -L  [image]             List image versions from Docker Hub

        -h                      Help

Environments:

        DOCKER_PATH             Path docker, default: DOCKER_PATH=/usr/bin

        SAM_DB_LIST             SAM database, default: SAM_DB_LIST=/var/db/sam/list_installed

        BIN_DIR                 Path to directory with executable files, default: BIN_DIR=/opt/bin