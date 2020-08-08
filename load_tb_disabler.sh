#!/bin/bash
kextstat |grep com.rugarciap.DisableTurboBoost || kextload -v /Library/Extensions/DisableTurboBoost.64bits.kext
