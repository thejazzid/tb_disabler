#!/usr/bin/env bash
unzip 2.13.zip
#cp -r TurboBoostSwitcher.app/Contents/Resources/DisableTurboBoost.64bits.kext /Library/Extensions
cp -r 2.13/tbswitcher_resources/DisableTurboBoost.64bits.kext /Library/Extensions
chown -R root:wheel /Library/Extensions/DisableTurboBoost.64bits.kext
mkdir -p /Users/Shared/scripts
cp -v load_tb_disabler.sh /Users/Shared/scripts
chmod 700 /Users/Shared/scripts/load_tb_disabler.sh
chown root:wheel /Users/Shared/scripts/load_tb_disabler.sh
cp com.tbdisabler.thejazzid.plist /Library/LaunchDaemons
chown root:wheel /Library/LaunchDaemons/com.tbdisabler.thejazzid.plist
launchctl load /Library/LaunchDaemons/com.tbdisabler.thejazzid.plist
