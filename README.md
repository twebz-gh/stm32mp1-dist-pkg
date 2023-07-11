# stm32mp1-dist-pkg

Download source packages for the STM32MP1 Distribution Package.

```
$ chmod u+x docker-build.sh docker-run.sh
$ ./docker-build.sh
$ ./docker-run.sh
```
You should now have a shell in the container.
```
/ $ cd OpenSTLinux
/OpenSTLinux $ DISTRO=openstlinux-weston MACHINE=stm32mp15-disco source layers/meta-st/scripts/envsetup.sh
```
Read and accept the EULA.  
The script changes directory:
```
/OpenSTLinux/build-openstlinuxweston-stm32mp15-disco $ bitbake st-image-weston
```
That should download many source packages -- total size estimated between 4GB and 5GB.

./openembedded-core/bitbake/lib/bb/tests/fetch.py.orig
