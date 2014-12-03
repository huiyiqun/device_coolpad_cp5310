device coolpad cp5310
=====================

HOWTO
-----
1.  Init Cyanogenmod with `repo`. cm-11.0 needed.

        $ repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

2.  Edit `.repo/manifest.xml` and add the following section:

        <project path="device/coolpad/cp5310" name="huiyiqun/device_coolpad_cp5310" revision="refs/tags/master" />

    If you are in China, I'll advice you to use
    [AOSP Mirror of TUNA](http://aosp.tuna.tsinghua.edu.cn) to replace the repo
    of Google.

3.  Get Source:

        $ repo sync

4.  Apply patch:

        $ cd bootable/recovery/
        $ patch -p1 < ../../device/coolpad/cp5310/bootable_reocvery.diff

5.  Download `msm_ion.h` and `msm_mdp.h` from the [forum page](http://forum.xda-developers.com/android/general/rom-cwm11-recovery-port-phicomm-c230w-t2871370/page2) or any other place you like. For the reason of license, I don't want to place it in my repo.
    Then place they under `bootable/recovery/minui/linux/`. You have to create the directory first.

6.  Make:

        $ cd ../../
        $ bash # If you are using other shell, i.e. zsh
        $ . build/envsetup.sh
        $ lunch cm_cp5310-eng
        $ make recoveryimage

    you can see the $RECOVERY_PATH at the end of output.

6.  Enjoy the CWM Recovery, boot into fastboot mode by powering off and pluging in
    USB cable with Volume down pressed, and then:

        $ sudo fastboot boot $RECOVERY_PATH

    If it looks well, flash it in fastboot mode:

        $ sudo fastboot flash reocvery $RECOVERY_PATH

THANKS
------
I tried to port cwm to my Android devices several times before, but all ended with failure.
This is the first time I get it.

The [XDA University](http://xda-university.com/as-a-developer/porting-clockworkmod-recovery-to-a-new-device)
has given me a nice begin. However it's far from success.

Then the [Forum Page](http://forum.xda-developers.com/android/general/rom-cwm11-recovery-port-phicomm-c230w-t2871370)
help me a lot, although many parameters it mentioned is useless.
