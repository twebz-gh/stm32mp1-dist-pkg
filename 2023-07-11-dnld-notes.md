tony@22e86dc31309:/OpenSTLinux/build-openstlinuxweston-stm32mp15-disco$ bitbake st-image-weston
NOTE: Started PRServer with DBfile: /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/cache/prserv.sqlite3, Address: 127.0.0.1:42675, PID: 278
Loading cache: 100% |                                                                                                               | ETA:  --:--:--
Loaded 0 entries from dependency cache.
NOTE: /OpenSTLinux/layers/meta-st/meta-st-openstlinux/recipes-st/images/st-image-resize-initrd.bb: ENABLE_PARTITIONS_IMAGE not enabled ETA:  0:00:29
Parsing recipes: 100% |##############################################################################################################| Time: 0:01:28
Parsing of 3068 .bb files complete (0 cached, 3068 parsed). 4879 targets, 562 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "2.4.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "ubuntu-22.04"
TARGET_SYS           = "arm-ostl-linux-gnueabi"
MACHINE              = "stm32mp15-disco"
DISTRO               = "openstlinux-weston"
DISTRO_VERSION       = "4.2.1-snapshot-20230711"
TUNE_FEATURES        = "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"
TARGET_FPU           = "hard"
DISTRO_CODENAME      = "mickledore"
ACCEPT_EULA_stm32mp15-disco = "1"
GCCVERSION           = "12.%"
PREFERRED_PROVIDER_virtual/kernel = "linux-stm32mp"
meta-python          
meta-oe              
meta-gnome           
meta-initramfs       
meta-multimedia      
meta-networking      
meta-webserver       
meta-filesystems     
meta-perl            
meta-st-stm32mp      
meta-qt5             
meta-st-openstlinux  
meta                 = "<unknown>:<unknown>"



NOTE: Fetching uninative binary shim http://downloads.yoctoproject.org/releases/uninative/3.9/x86_64-nativesdk-libc-3.9.tar.xz;sha256sum=3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b (will check PREMIRRORS first)
WARNING: Checksum mismatch for local file /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz
Cleaning and trying again.
WARNING: Renaming /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz to /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz_bad-checksum_cb5309543d4421baf96f33ee021360d5c7d107fd4a7247c969788196711abcdf
WARNING: Checksum failure encountered with premirror download of http://downloads.yoctoproject.org/releases/uninative/3.9/x86_64-nativesdk-libc-3.9.tar.xz;sha256sum=3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b - will attempt other sources.
WARNING: Checksum failure encountered with download of http://downloads.yoctoproject.org/releases/uninative/3.9/x86_64-nativesdk-libc-3.9.tar.xz;sha256sum=3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b - will attempt other sources if available
WARNING: Checksum mismatch for local file /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz
Cleaning and trying again.
WARNING: Renaming /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz to /OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz_bad-checksum_22650c7c7b8532c0acd35b6074d31961bd476de047cf1606bf3fdf91855ea440
ERROR: Checksum failure fetching http://downloads.yoctoproject.org/releases/uninative/3.9/x86_64-nativesdk-libc-3.9.tar.xz;sha256sum=3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b
WARNING: Disabling uninative as unable to fetch uninative tarball: Fetcher failure for URL: 'http://downloads.yoctoproject.org/releases/uninative/3.9/x86_64-nativesdk-libc-3.9.tar.xz;sha256sum=3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b'. Checksum mismatch!
File: '/OpenSTLinux/build-openstlinuxweston-stm32mp15-disco/downloads/uninative/3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b/x86_64-nativesdk-libc-3.9.tar.xz' has sha256 checksum '22650c7c7b8532c0acd35b6074d31961bd476de047cf1606bf3fdf91855ea440' when '3dd82c3fbdb59e87bf091c3eef555a05fae528eeda3083828f76cd4deaceca8b' was expected
If this change is expected (e.g. you have upgraded to a new version without updating the checksums) then you can use these lines within the recipe:
SRC_URI[sha256sum] = "22650c7c7b8532c0acd35b6074d31961bd476de047cf1606bf3fdf91855ea440"
Otherwise you should retry the download and/or check with upstream to determine if the file has become corrupted or otherwise unexpectedly modified.
WARNING: To build your own uninative loader, please bitbake uninative-tarball and set UNINATIVE_TARBALL appropriately.


WARNING: linux-stm32mp-6.1.28-stm32mp-r1-r0 do_package_qa: QA Issue: File /usr/src/debug/linux-stm32mp/6.1.28-stm32mp-r1-r0/lib/oid_registry_data.c in package linux-stm32mp-src contains reference to TMPDIR


http://downloads.yoctoproject.org/mirror/sources/



