#!/bin/bash

git clone git@github.com:ijapesigan/docker-torch.git
rm -rf "$PWD.git"
mv docker-torch/.git "$PWD"
rm -rf docker-torch
