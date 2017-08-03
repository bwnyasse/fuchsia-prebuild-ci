#!/usr/bin/env bash

# Preparing the build enviromnent
apt-get -y install texinfo libglib2.0-dev autoconf libtool libsdl-dev build-essential golang curl unzip

# Update
curl -s https://raw.githubusercontent.com/fuchsia-mirror/jiri/master/scripts/bootstrap_jiri | bash -s fuchsia
cd fuchsia
export PATH=`pwd`/.jiri_root/bin:$PATH
jiri import fuchsia https://fuchsia.googlesource.com/manifest
jiri update