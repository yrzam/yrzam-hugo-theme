#!/bin/bash
set -e

cd "$(dirname "$0")/.."
[ -d ../../themes ] &&  cd ../..

rm -rf public 
hugo
cd public

find . -type f -exec sha256sum {} \; | \
	sed -E 's/(\w*)  \.\//\1 /' | \
	gpg -so index.sig --batch --yes

cp -f index.sig ../static
