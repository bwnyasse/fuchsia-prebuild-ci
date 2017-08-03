#!/usr/bin/env bash

# On Ubuntu this should obtain the necessary pre-reqs
apt-get -y install golang curl unzip git texinfo libglib2.0-dev autoconf libtool libsdl-dev build-essential

# Create build cache dir
mkdir ~/.fuchsia_build_cached

# Creating a new fuchsia checkout
cd ~
curl -s https://raw.githubusercontent.com/fuchsia-mirror/jiri/master/scripts/bootstrap_jiri | bash -s fuchsia
cd fuchsia
export PATH=`pwd`/.jiri_root/bin:$PATH
jiri import fuchsia https://fuchsia.googlesource.com/manifest
jiri update

# Source
source scripts/env.sh && envprompt && fset x86-64

