#!/bin/bash
sudo apt install net-tools
sudo ip route del default via 10.0.2.2
sudo ip route add default via 192.168.56.1
