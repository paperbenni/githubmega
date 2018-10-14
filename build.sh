#!/bin/bash
docker build -t paperbenni/mega .
docker push paperbenni/mega > /dev/null &