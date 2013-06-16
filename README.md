WIP - CM 10 Device Tree

Builds and boots successfully.
Wifi doesn't work - Have incomplete settings.
Network/ril doesn't work.
Have not fully tested cuz I'm trying to get service working, so there may be more broken.

device repo: in "source"/device dir make zte dir then cd into it and issue - 
git clone https://github.com/totlth/cm10_device_zte_elden.git elden

It is setup to build kernel inline with system

kernel repo : in "source" dir make kernel/zte dir then cd into it and issue -
git clone https://github.com/totlth/android_kernel_zte_elden.git elden

Recovery builds and boots successfully.
