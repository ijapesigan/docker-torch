#!/bin/bash

set -e

bash torch.sh
bash rproject.sh
bash custom.sh
bash post.sh
