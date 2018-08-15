# docker-config-lint
This is the repository of the raniemi/config-lint docker image found in Docker Hub

# Prerequisites

You only need to have `docker` installed to run this `config-lint` Docker image and `git` if you wish to clone the project locally.

# Installation

* Download and put the `config-lint` script into a directory that's in your `PATH`.

## Usage

When you run the provided scripts, by default they will use the "latest" Docker image version.  For example:

```bash
$ config-lint --help
```

## Custom Usage

If you want to build a specific `VERSION` of `config-lint` that is not available on Docker Hub, clone this repository and run the following at the command line:

```bash
$ VERSION=<VERSION> ./build.sh --build
```

Once the new image is in your local registry, pass the `VERSION` you wish to use as an ENV variable to the provided `config-lint` script. For example:

```bash
$ VERSION=<VERSION> config-lint -v
```