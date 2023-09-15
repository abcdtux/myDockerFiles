FROM alpine:3.18.3

# Information
LABEL description="An alpine distribution with neovim."
LABEL maintener="abcdTux abcdtux@gmail.com"

# User values definition
ARG USER_ID
ARG USER_NAME
ARG GROUP_ID
ARG GROUP_NAME
ARG DIR_CONTAINER
ARG PROJECT

# Installations and cleanup
RUN apk --no-cache update \
	&& apk --no-cache upgrade \
	&& apk --no-cache add bash doas xclip icu-data-full \
		tree-sitter-cli ripgrep gzip fd \
		build-base cmake coreutils curl unzip gettext-tiny-dev \
		make gcc build-base git python3 py3-pip ruby ruby-dev \
		perl perl-dev perl-app-cpanminus nodejs npm \
	&& python -m pip install pynvim \
	&& gem update system && gem install neovim \
	&& npm install -g neovim \
	&& cpanm local::lib \
	&& cpanm --force Neovim::Ext \
	&& rm -rf /var/cache/apk

# Compilation neovim
RUN mkdir -p /tmp/compil && cd /tmp/compil \
	&& git clone https://github.com/neovim/neovim.git \
	&& cd neovim && make CMAKE_BUILD_TYPE=Release \
	&& git checkout stable \
	&& make && make install \
	&& rm -rf /tmp/compil

# User management
RUN deluser guest \
	&& addgroup --gid ${GROUP_ID} ${GROUP_NAME} \
	&& adduser --uid ${USER_ID} --ingroup ${GROUP_NAME} \
		--home ${DIR_CONTAINER} --disabled-password ${USER_NAME} \
	&& addgroup ${USER_NAME} wheel \
	&& echo "${USER_NAME}:${USER_NAME}" | chpasswd \
	&& echo "permit persist :wheel" >> /etc/doas.d/doas.conf 
	
# User management, to be repeated in child dockerfiles
RUN chown -R ${USER_NAME}:${GROUP_NAME} ${DIR_CONTAINER} 
WORKDIR ${DIR_CONTAINER}

# Default command
CMD [ "/bin/bash" ]
