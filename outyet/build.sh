#!/bin/bash

run_in_container --name outyet --tag v$GO_PIPELINE_LABEL --command "$@" --cleanup --volumes `pwd`/build:/go/bin