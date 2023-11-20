# PFNano conatainer image

This container image had been built to investigate whether an increased timeout value solves the problem observed with the file access from eospublic.

It has the PFNano code installed from https://github.com/cms-opendata-analyses/PFNanoProducerTool and compiled. See [Dockerfile](Dockerfile).

The container is available from `ghcr.io/katilp/pfnano-image-build:main`

The build is done in [the GitHub workflow](.github/workflows/docker-publish.yml). As it requires more space than is available in a normal GitHub runner, some unused libraries are removed from the runner in the workflow. This does not affect the resulting container.
