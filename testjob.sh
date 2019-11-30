#!/bin/bash
source /home/atlas/release_setup.sh
source /analysis/build/x86_64-centos7-gcc8-opt/setup.sh

cat << 'EOF' > recast_xsecs.txt
id/I:name/C:xsec/F:kfac/F:eff/F:relunc/F
404958 recast 0.00122 1.0 1.0 1.0
EOF

echo https://recastwww.web.cern.ch/recastwww/data/reana-recast-demo/mc15_13TeV.123456.cap_recast_demo_signal_one.root > recast_inputs.txt

myEventSelection submitDir recast_inputs.txt recast_xsecs.txt 30.0
ls -lrt submitDir/
