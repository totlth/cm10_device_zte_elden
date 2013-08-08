WIP - CM 10 Device Tree

Bluetooth not working<br>
Phone.apk only works in speaker mode<br>
Not fully tested for bugs<br>

Wifi:
Need to replace cm source/hardware/libhardware_legacy/wifi with:<br>
https://github.com/totlth/cm10-elden_hardware_libhardware_legacy_wifi.git

device repo: in "source"/device dir make zte dir then cd into it and issue<br> 
git clone https://github.com/totlth/cm10_device_zte_elden.git elden

It is setup to build kernel inline with system

kernel repo : in "source" dir make kernel/zte dir then cd into it and issue<br>
git clone https://github.com/totlth/android_kernel_zte_elden.git elden

Recovery builds and boots successfully.
