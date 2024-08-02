# TWRP Device Tree for Daria Bond

## Device specifications

Basic                   | Spec Sheet
-----------------------:|:-------------------------
CPU                     | 2x 2.6 GHz ARM Cortex-A78, 6x 2.0 GHz ARM Cortex-A55
CHIPSET                 | MediaTek Dimensity 7050 (MT6877V)
GPU                     | ARM Mali-G68 MC4, 1000 MHz
Memory                  | 8 GB
Shipped Android Version | 13
Internal Storage        | 256GB
Battery                 | 4700 mAh, Li-Polymer
Dimensions              | 74 x 163 x 8 mm
Display                 | 2400 x 1080 pixels, 6.78-inch Super AMOLED, 120hz
Rear Camera             | 50 MP (AF, f/1.9) + 8 MP (Wide-angle, FF, f/2.2) + 2 MP (Macro, f/2.4)
Front Camera            | 16 MP (FF, f/2.5)


$~$

## Working features so far

### Blocking checks
- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [ ] Working slot switching *
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] reboot to system
- [X] ADB

#### * its half broken. for getting bootctrl to work, do not decrypt data

### Medium checks
- [X] update.zip sideload
- [X] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ ] all important partitions listed in mount/backup lists
- [X] backup/restore to/from external (USB-OTG) storage
- [X] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [X] decrypt /data
- [X] Correct date

### Minor checks
- [X] MTP export
- [X] reboot to bootloader
- [X] reboot to recovery
- [X] poweroff
- [X] battery level
- [X] temperature
- [ ] ~~encrypted backups~~ (no option)
- [X] input devices via USB (USB-OTG) - keyboard, mouse and disks
- [ ] ~~USB mass storage export~~ (unavailable)
- [X] set brightness
- [X] vibrate
- [X] screenshot
- [ ] ~~partition SD card~~ (this phone doesnt have SD card slot)

$~$

## How to build

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/itisFarzin-Phone/twrp_daria_zahedan-wip device/daria/zahedan
```

3. To build:

```bash
. build/envsetup.sh
lunch twrp_zahedan-eng
mka bootimage
```

$~$

## Device picture

![daria-bond](https://multiways.io/assets/images/daria-bond-product.png)