
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/torch

<!-- badges: start -->

[![Docker Build and Push
\[amd64\]](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-build-push-amd64-only.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-build-push-amd64-only.yml)
[![Docker Build and Push Torch \[amd64\]
(Daily)](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-build-push-daily-amd64-only-torch.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-build-push-daily-amd64-only-torch.yml)
[![Make
Project](https://github.com/ijapesigan/docker-torch/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-torch/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-torch/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

An R image based on the [Rocker Project](https://rocker-project.org/)
(RStudio Server) with [torch](https://torch.mlverse.org/), the CUDA 12.8
libtorch backend, and rProject. linux/amd64 only (CUDA).

Based on `rocker/rstudio:latest`; built for linux/amd64. Source:
<https://github.com/ijapesigan/docker-torch>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/torch
docker run -it ghcr.io/ijapesigan/torch
```

Apptainer:

``` bash
apptainer pull torch.sif docker://ijapesigan/torch
apptainer shell torch.sif
```

## Contents

R packages from CRAN (`scripts/cran.txt`), with their dependencies:

torch, luz, safetensors

## Builds

- Docker Build and Push \[amd64\] (`docker-build-push-amd64-only.yml`):
  after Make Project
- Docker Build and Push Torch \[amd64\] (Daily)
  (`docker-build-push-daily-amd64-only-torch.yml`): daily at 00:00 UTC,
  when the base image is rebuilt
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/torch:latest`.
