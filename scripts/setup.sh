#!/bin/bash

set -e

bash torch.sh
bash rproject.sh
bash post.sh
