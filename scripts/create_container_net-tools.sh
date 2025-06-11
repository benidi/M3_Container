#!/bin/bash

DESCRIPTION="Container with a view network debugging tools"
CONTAINER_NAME="container_net-tools"
ROOTFS_LIST="rootfs_list_net-tools.txt"

PACKAGES_1=(
    "libxcrypt-4.4.38.sh"
    "mcip.sh"
    "cacert-2025-05-20.sh"
    "zlib-1.3.sh"
    "cJSON-1.7.18.sh"
    "tzdb-2025b.sh"
)
PACKAGES_2=(
    "lz4-1.10.0.sh"
    "pcre2-10.45.sh"
    "openssl-3.4.1.sh"
    "cacert-2024-12-31.sh"
    "nghttp2-1.65.0.sh"
    "libpcap-1.10.5.sh"
    "libcap-ng-0.8.5.sh"
    "iptables-1.8.11.sh"
    "c-ares-1.34.5.sh"
    "wireguard-tools-v1.0.20210914.sh"
    "mcip-tool-v4.sh"
)
PACKAGES_3=(
    "busybox-1.36.1.sh"
    "dropbear-2025.88.sh"
    "metalog-20230719.sh"
    "dnsmasq-2.91.sh"
    "openvpn-2.6.14.sh"
    "tcpdump-4.99.5.sh"
    "iperf-3.12.sh"
    "stunnel-5.75.sh"
    "libssh2-1.11.1.sh"
    "socat-1.8.0.0.sh"
    "libwebsockets-4.3.3.sh"
    "bftpd-6.3.sh"
    "rsync-3.4.1.sh"
    "libevent-2.1.12-stable.sh"
)
PACKAGES_4=(
    "curl-8.14.1.sh"
    "nmap-7.97.sh"
    "mosquitto-2.0.21.sh"
    "addrwatch-1.0.2.sh"
)

PACKAGES=(
    PACKAGES_1[@]
    PACKAGES_2[@]
    PACKAGES_3[@]
    PACKAGES_4[@]
)

# in case $1 is "do_nothing" this script will end here
[ "$1" == "do_nothing" ] && return

. $(realpath $(dirname ${BASH_SOURCE[0]}))/create.sh "${@}"
