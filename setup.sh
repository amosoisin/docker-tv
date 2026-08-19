#!/bin/sh

# for mirakurun
cp -rf ./mirakurun/opt.sample ./mirakurun/opt

# for KonomiTV
cp -rf ./konomitv/config/config.yaml ./konomitv/KonomiTV/config.yaml
cp -rf ./konomitv/config/docker-compose.yaml ./konomitv/KonomiTV/docker-compose.yaml

# for EDCB
cp -rf ./edcb/config/wine-mount.sh edcb/EDCB-Wine/wine-mount.sh
cp -rf ./edcb/config/Common.ini edcb/EDCB-Wine/EDCB/Common.ini
cp -rf ./edcb/config/EpgDataCap_Bon.ini edcb/EDCB-Wine/EDCB/EpgDataCap_Bon.ini
cp -rf ./edcb/config/EpgTimerSrv.ini edcb/EDCB-Wine/EDCB/EpgTimerSrv.ini
cp -rf ./edcb/config/RecName_Macro.dll.ini edcb/EDCB-Wine/EDCB/RecName/RecName_Macro.dll.ini
