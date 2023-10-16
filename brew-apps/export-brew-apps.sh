#!/bin/bash
echo '#!/bin/bash' > list.sh

echo '########### Brew Install List ###########' >> list.sh
brew leaves | sed 's/^/brew install /' >> list.sh &&

echo '########### Brew Cask Install List ###########' >> list.sh &&
brew  list  --cask | sed 's/^/brew install --cask /' >> list.sh &&

echo 'echo "And done..."' >> list.sh

echo "And done..."