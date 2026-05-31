#!/bin/bash

set -e

bash pandoc.sh
bash torch.sh
bash rproject.sh
bash post.sh
