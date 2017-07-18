English | [简体中文](./README_CN.md)
# devices/base_cm

Base device for CyanogenMod/LineageOS 13.0, as a basis for all the other CyanogenMod/LineageOS 13.0 devices.
Currently the patch is made out based on the snapshot version of cm-13.0-ZNH5Y, and will be updated synchronicly as cm-13.0 will be.

## Usage of the ‘base_cm’

### 1. Downloading

To reduce the repository ‘repo’’s size,we haven’t put ‘base_cm’ into the default download list of repo.

Therefore we recommend downloading via git clone. First time to download ,cd into the directory ‘devices’, then run:

```
git clone https://github.com/FlymeOS/devices-base_cm.git --single-branch -b marshmallow-6.0
```
Of course you can modify ‘ mainfest/default.xml ‘ to add ‘base_cm’ into repo’s download list. Type:
```
mv ./devices-base_cm ./base_cm
```
That will rename the cloned git repository as ‘base_cm’.From now on to update ‘base_cm’ just cd into the directory devices/base_cm ,then type:
```
git pull origin marshmallow-6.0
```
This will begin downloading the updates of ‘base-cm’. If you don’t use git clone,you will need download the complete zip package to overwrite thus updating,which is not convenient.
### 2. Using

After downloading it properly,you can use the same operations as you use ‘base’ to make a patch,only you need to add an extra configuration.

To use the specified ‘base’’to  patch,you’ll need to configure the Makefile under your phone model folder.That is: 

```
BASE :=
```
There are example introductions in the Makefile both under  base and base cm,to which you refer then configure it in a right way.

For example,you rename the downloaded folder as base_cm,the set it as :


```
BASE :=base_cm
```


Once you finished configuring,you can use make patchall and make upgrade respectively to make a first-time patching and updates.

### What you need to pay attention to:
To run ‘base_cm’ properly it needs to customize some APKs or some resources files,which,however haven’t been included in the patchall and upgrade.That’s why you have to  check the files that customize APKs or resource files and their configurations,write config files and config info into your phone model folder together.

E.g.  Different manufacturers will modify the interface in the binder file ITelephony.aidl or add some extensions,so it is needed to make some customizations to the implemention part of the binder’s interface,which is usually located in the TeleService.apk’s PhoneInterfaceManager file.Since ‘base_cm’ has done customizing changes to TeleService.apk,you need copy the TeleService folder to your phone model folder and set relevant configs in the  Makefile.

Similar operations are acceptable for the customized APKs or resource files in the ‘base_cm’.

See reference documentations if you want to know more about how to customize APKs or resource files.
