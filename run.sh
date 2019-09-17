#!/bin/bash
docker run --user=irteam --runtime=nvidia -ti --rm --name depth -v $HOME/data:/data --net host -v `pwd`:/code registry.navercorp.com/dhkim/depthcompletion /bin/bash

