#! /usr/bin/env sh
cd Submodules/My-Wallet-V3
sed -i '' '1s/^/global.self = global;/' node_modules/whatwg-fetch/fetch.js
# grunt build && globalCrypto='var crypto = global.crypto || global.msCrypto' && sed -i '' 's/'"$globalCrypto"'\;/'"$globalCrypto"' || {getRandomValues: function(){}}/' dist/my-wallet.js
grunt build && globalCrypto='var crypto = global.crypto || global.msCrypto' && sed -i '' 's/'"$globalCrypto"'\;/'"$globalCrypto"' || {getRandomValues: function(){}}/' dist/my-wallet.js && sed -i '' '/validateMnemonic: validateMnemonic/s/$/, salt: salt/' dist/my-wallet.js
sed -i '' '/validateMnemonic: validateMnemonic/s/$/, salt: salt/' dist/my-wallet.js
