apt-fast build-dep xbmc

./autogen.sh

CFLAGS="-mfloat-abi=hard -mfpu=neon-vfpv4 -ftree-vectorize -mvectorize-with-neon-quad -ffast-math -O3 -pipe -fstack-protector --param=ssp-buffer-size=4 -D_FORTIFY_SOURCE=2" \
CPPFLAGS=$CFLAGS CXXFLAGS=$CPPFLAGS \
LIBS="-lmali" LDFLAGS="-L/usr/local/lib -L/usr/lib/arm-linux-gnueabihf/mali-egl" \
./configure --disable-static --enable-shared gl_cv_func_gettimeofday_clobber=no ac_cv_lib_bluetooth_hci_devid=no \
--disable-debug --enable-optimizations --disable-gl --enable-gles --disable-enable --disable-vdpau --disable-vaapi --disable-vtbdecoder --disable-tegra --disable-profiling --enable-joystick --enable-libcec --enable-udev \
--disable-libusb --disable-goom --disable-rsxs --disable-projectm --enable-waveform --enable-spectrum --disable-fishbmc --enable-x11 --enable-xrandr --enable-ccache --enable-alsa --disable-pulse --enable-rtmp --enable-samba \
--enable-nfs -disable-afpclient --enable-libvorbisenc --disable-libcap --enable-dvdcss --disable-mid --enable-avahi --enable-upnp --enable-mysql --enable-ssh --enable-airplay --enable-airtunes --enable-non-free --disable-asap-codec \
--enable-webserver --enable-optical-drive --enable-libbluray --enable-neon --with-ffmpeg=force --enable-codec=mfc --enable-ccache --disable-texturepacker --enable-sdl --with-default-egl-platform=x11

make -j9
