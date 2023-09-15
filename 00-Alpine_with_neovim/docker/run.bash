#!/bin/bash

batch=$( basename $0 )
docker_dir=$( dirname $0 )

cd "${docker_dir}"
env_file="./env.bash"

usage() {
	echo "${batch} -h"
	echo "${batch} [-b|-r|-c]"
	echo "-h : Display help."
	echo "-b : Build the docker image."
	echo "-B : Rebuild the docker image."
	echo "-r : Run the container."
	echo "-c : Connect to the container."
	echo "Additional informations:"
	echo " - If the -b parameter is provided, others are ignored."
	echo " - No parameter is equivalent to the -r and -c options."
}

# Configuration and Command Line Handling
if [[ ! -f "${env_file}" ]]; then
	echo "File ${env_file} not found."
	exit 3
fi
source "${env_file}"

while getopts 'bBcrh' option; do
	case "${option}" in
		B) build=2;;
		b) build=1;;
		c) connect=1;;
		r) run=1;;
		h) usage && exit 0;;
		*) usage && exit 1;;
	esac
done

# Default action
if [[ "${build}${connect}${run}" = "" ]]; then
	run=1
	connect=1
fi

# Build
if [[ ${build} -ne 0 ]]; then
	environment=$( 
		grep "^export" "${env_file}" | sed "s/export *//" \
			| awk '{ printf " --build-arg %s",$1 }' 
	)
	set -x
	if [[ ${build} -eq 2 ]]; then
		docker build --progress plain --no-cache \
			${environment} --tag ${IMAGE}:${VERSION} .
	else
		docker build --progress plain \
			${environment} --tag ${IMAGE}:${VERSION} .
	fi
	exit 0
fi

# Run
if [[ ${run} -eq 1 ]]; then
	xhost +
	docker container run --interactive --rm --tty --detach \
		--name "${PROJECT}" --user ${USER_NAME} \
		--volume ${docker_dir}/${DIR_LOCAL}:${DIR_CONTAINER} \
		--volume ${HOME}/.Xauthority:${DIR_CONTAINER}/.Xauthority:ro \
		--volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
		--env DISPLAY=${DISPLAY} ${IMAGE}:${VERSION} 
fi

# Connect
if [[ ${connect} -eq 1 ]]; then
	docker container attach "${PROJECT}"
fi
exit 0
