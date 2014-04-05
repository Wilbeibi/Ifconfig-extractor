# Ifconfig Extractor

## What it is ?
A shell script to extract IP, mac address and netmasks from `ifconfig` command. It works for Ubuntu, Fedora, OmniOS, Darwin and FreeBSD.

## How to use it ?
As the [spec](http://www.cs.stevens.edu/~jschauma/615A/s14-hw3.html) tells:

    $ ifconfig -a | ifcfg-data -i
    fe80::1
    127.0.0.1
    ::1
    fe80::9afe:94ff:fe46:f444
    192.168.1.2
    2001:470:1f07:2c0:9afe:94ff:fe46:f444
    2001:470:1f07:2c0:1834:f67:2271:a5eb
    $ ifconfig -a | ifcfg-data -m
    98:fe:94:46:f4:44
    0a:fe:94:46:f4:44
    $ ifconfig -a | ifcfg-data -n
    0xff000000
    0xffffff00