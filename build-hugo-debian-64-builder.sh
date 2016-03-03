#!/bin/bash

set -e 

docker build -t parana/hugo-debian-64-builder -F Dockerfile.builder . 