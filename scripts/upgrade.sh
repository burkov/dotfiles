#!/bin/bash

set -e
apt update
apt full-upgrade -y
apt autoremove