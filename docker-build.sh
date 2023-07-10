#!/bin/bash

# This helps if you run from a different directory.
dpath_script=$(realpath "$(dirname $BASH_SOURCE[0])")

push "$dpath_script" >/dev/null
docker build --tag ubuntu-22.04-dnld --build-arg-$USER .
popd >/dev/null
