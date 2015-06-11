#!/bin/sh
env CC="ccache /usr/bin/clang" \
CFLAGS="-pipe -Os -arch x86_64" \
CPPFLAGS="-I/opt/local/include" \
LDFLAGS="-L/opt/local/lib -Wl,-headerpad_max_install_names -arch x86_64" \
./configure --prefix=/opt/local --disable-silent-rules --enable-fsect-man5
