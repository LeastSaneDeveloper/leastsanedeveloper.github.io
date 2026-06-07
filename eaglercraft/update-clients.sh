#!/usr/bin/bash

# this script should be run in the eaglercraft directory


# urls
WASM_18_URL="https://bafybeialxd4xd7puchx555zqrfmuaz7e7n7nh4crb3sfhvprxedx4c64fq.ipfs.dweb.link/?filename=EaglercraftX_1.8_WASM-GC_Offline_Download.zip"
WASM_112_URL="https://bafybeia6z4k53c5ta26g3m37kvmorcpfo3rvo4ashefxxmikvq3wouboda.ipfs.dweb.link/?filename=Eaglercraft_1.12_WASM_Offline_Download.zip"

JS_18_URL="https://bafybeihn2tdt55pg5hvju7zu4jkp7mglu3ynisgzmqm7ebkec4qi7lgt4y.ipfs.dweb.link/?filename=EaglercraftX_1.8_Signed_Offline.zip"
JS_112_URL="https://bafybeifkhdmjy2phs5w67537wmbeer2upt5culejvbigct6i2gk26t65qy.ipfs.dweb.link/?filename=Eaglercraft_1.12_Offline_Download.zip"


# wasm


# 1.8.8
wget -O wasm/1.8.8.zip "$WASM_18_URL"
FIRST_WASM_18=$(unzip -l wasm/1.8.8.zip | awk 'NR==4 {print $4}')
unzip wasm/1.8.8.zip "$FIRST_WASM_18" -d wasm
rm wasm/1.8.8.html
mv "wasm/$FIRST_WASM_18" wasm/1.8.8.html
rm wasm/1.8.8.zip

# 1.12.2
wget -O wasm/1.12.2.zip "$WASM_112_URL"
FIRST_WASM_112=$(unzip -l wasm/1.12.2.zip | awk 'NR==4 {print $4}')
unzip wasm/1.12.2.zip "$FIRST_WASM_112" -d wasm
rm wasm/1.12.2.html
mv "wasm/$FIRST_WASM_112" wasm/1.12.2.html
rm wasm/1.12.2.zip


# js


# 1.8.8
wget -O js/1.8.8.zip "$JS_18_URL"
FIRST_JS_18=$(unzip -l js/1.8.8.zip | awk 'NR==4 {print $4}')
unzip js/1.8.8.zip "$FIRST_JS_18" -d js
rm js/1.8.8.html
mv "js/$FIRST_JS_18" js/1.8.8.html
rm js/1.8.8.zip

# 1.12.2
wget -O js/1.12.2.zip "$JS_112_URL"
FIRST_JS_112=$(unzip -l js/1.12.2.zip | awk 'NR==4 {print $4}')
unzip js/1.12.2.zip "$FIRST_JS_112" -d js
rm js/1.12.2.html
mv "js/$FIRST_JS_112" js/1.12.2.html
rm js/1.12.2.zip
