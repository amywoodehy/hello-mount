#!/bin/bash

# Binding common folder that contains scripts and executables

sudo mount --bind ../common ./common

sudo docker build -t hello-mount .

sudo docker run hello-mount  # That command should work
