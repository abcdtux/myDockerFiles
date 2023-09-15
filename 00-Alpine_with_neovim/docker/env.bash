#!/bin/bash

# Definition of container user values.
# Prevents volume permission issues.
# Use "id -u" and "id -g"
export USER_ID=1000
export USER_NAME=abcdtux
export GROUP_ID=998
export GROUP_NAME=abcdtux

# Project and volume
export PROJECT=xxxxx
export DIR_LOCAL=../files
export DIR_CONTAINER=/home/acbdtux

# Image
export VERSION_IMAGE=0.1
export IMAGE=abcdtux/alpine-with-neovim

# Alpine image version
export docker_file="Dockerfile"
if [[ ! -f ${docker_file} ]]; then
	echo "Erreur avec le fichier ${docker_file}."
	exit 102
fi
export VERSION="${VERSION_IMAGE}-"$( head -n 1 "${docker_file}" \
	| sed "s/^[^:]*://" )
