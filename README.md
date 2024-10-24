# replacr
[![](https://github.com/ailox/replacr/actions/workflows/container-image.yml/badge.svg?branch=main)](https://github.com/ailox/replacr/actions/workflows/container-image.yml?query=branch%3Amain "Build Status")
[![](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT "License: MIT")

Replacr is a test project that utilizes github actions to replace tags in files, and turn them into an OCI image

With each push to this repository, an automated process will:

- replace all invalid "tag 1" tags with "tag 2"
- Build a container image with all the files in [`tag-files/`](tag-files/)
- publish the image on the github container registry
