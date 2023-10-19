#!/bin/bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustupinstall.sh
chmod 755 rustupinstall.sh
./rustupinstall.sh -y