WIP - CM 10 Device Tree

Still broke:<br>
only minor bugs exist<br>


Wifi: Need to replace cm source/hardware/libhardware_legacy/wifi with:<br>
https://github.com/totlth/cm10-elden_hardware_libhardware_legacy_wifi.git<br>
and<br>
cd into "source"/hardware/qcom and issue<br>
git clone https://github.com/totlth/cm10-elden_hardware_qcom_wlan.git wlan<br>
<br>
device repo: in "source"/device dir make zte dir then cd into it and issue<br> 
git clone https://github.com/totlth/cm10_device_zte_elden.git elden

It is setup to build kernel inline with system

kernel repo : in "source" dir make kernel/zte dir then cd into it and issue<br>
git clone https://github.com/totlth/android_kernel_zte_elden.git elden

Recovery builds and boots successfully.
