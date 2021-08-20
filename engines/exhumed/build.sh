#!/bin/bash

# CLONE PHASE
git clone https://github.com/nukeykt/NBlood.git source
pushd source
git checkout 39fc28b
popd

# BUILD PHASE
pushd source
make exhumed
popd

# COPY PHASE
cp -rfv "source/pcexhumed" "$diststart/common/dist/"
cp -rfv assets/* "$diststart/common/dist/"