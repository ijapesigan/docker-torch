ijapesigan/torch
================
Ivan Jacob Agaloos Pesigan
2026-05-31

<!-- README.md is generated from .setup/readme/README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Docker and Apptainer Build
\[amd64\]](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-apptainer-build-amd64.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-apptainer-build-amd64.yml)
[![Docker and Apptainer Build \[amd64\]
(Daily)](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-apptainer-build-daily-amd64.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/docker-apptainer-build-daily-amd64.yml)
[![Make
Project](https://github.com/ijapesigan/docker-torch/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-torch/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-torch/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-torch/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

A Docker container for `R` projects based on the [Rocker
Project](https://rocker-project.org/) with the `torch` package.

## Docker Container

To launch `Rstudio Server`, run the following.

``` bash
docker run --rm -ti --gpus all -e PASSWORD=yourpassword -p 127.0.0.1:8787:8787 ijapesigan/torch
```

Use the `--gpus all` flag when running the container so it can access
CUDA-enabled NVIDIA GPUs. This requires the [NVIDIA Container
Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
to be installed on the host system.

Open `http://localhost:8787` on your web browser to launch
`Rstudio Server`.

- username: rstudio
- password: yourpassword

## Apptainer Container

To build the Singularity Image File (SIF), run the following.

``` bash
apptainer pull torch.sif docker://ijapesigan/torch:latest
```

Use the `--nv` flag when running the container so it can access
CUDA-enabled NVIDIA GPUs.
