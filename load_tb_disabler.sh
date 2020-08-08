#!/bin/bash
kextstat |grep com.rugarciap.DisableTurboBoost || kextunload -v /Library/Extensions/DisableTurboBoost.64bits.kext
kextload -v /Library/Extensions/DisableTurboBoost.64bits.kext
