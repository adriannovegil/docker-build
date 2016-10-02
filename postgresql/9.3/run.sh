#!/bin/bash

# Compile the image
#
# Options:
#     docker build    build the image from the Dockerfile.
#     -t              Name and optionally a tag in the 'name:tag' format.
#     .               path to the Dockerfile.
#
docker build -t eg_postgresql .

# Execute the container
#
# Options:
#     docker run      runs a container.
#     --rm            remove the container after the execution.
#     -p              port binding.
#     --name          set a name to the container.
#
docker run --rm -p 127.0.0.1:32770:5432 --name pg_test eg_postgresql
