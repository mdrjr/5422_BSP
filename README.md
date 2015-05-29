# Exynos 5422 BSP for ODROID boards

 5422_platform_configs: 
  - 10-odroid.rules: udev rules for Mali, CEC, Serial Console"
  - blacklist-odorid.conf: blacklist ioboard modules
  - xorg.conf: Xorg configuration file
  

 armsoc_ddx:
  - Xorg DDX for Mali / Exynos DRM
  - Install: ( ./autogen --with-drrmode=exynos && make -j5 )
  
 bootini:
  - boot.ini file for the u-boot boot configuration
  - should be placed on the first partition, vfat type.
  
 Mali:
  - Current release: r5p1
  - Mali binaries for fbdev and X11
  
 kernel:
  - Linux kernel 3.10.y based on Samsung integration patch's
