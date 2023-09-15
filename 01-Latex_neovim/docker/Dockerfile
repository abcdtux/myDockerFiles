FROM abcdtux/alpine-with-neovim:0.1-3.18.3

# Information
LABEL description="An alpine distribution with neovim for latex."
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
	&& apk --no-cache add texlive-full \
	&& rm -rf /var/cache/apk

# User management
RUN chown -R ${USER_NAME}:${GROUP_NAME} ${DIR_CONTAINER} 
WORKDIR ${DIR_CONTAINER}

# Default command
CMD [ "/bin/bash" ]
