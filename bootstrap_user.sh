#!/bin/sh
set -xe

sh ./lib/configure_ui.sh
sh ./lib/configure_shell.sh
sh ./lib/configure_iterm2.sh
sh ./lib/configure_python_env.sh
sh ./lib/configure_git.sh
