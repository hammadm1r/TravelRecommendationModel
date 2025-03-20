#!/bin/bash
set -e  # Exit immediately if a command fails

# Update and install dependencies
apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    coinor-libipopt-dev \
    libblas-dev \
    liblapack-dev \
    gfortran \
    libatlas-base-dev
