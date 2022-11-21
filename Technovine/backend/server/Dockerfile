FROM ubuntu:latest AS server
LABEL authors="Richard Joubert"

COPY ./scripts/* /admin/scripts

#? Expand Ubuntu into the full, User-Based installation
RUN expand -y

#? Update the list of available packages then install all available upgrades
RUN apt-get update && apt-get upgrade
#? Install additional packages
RUN apt-get install \
		man-db \
		manpages \
		make \
		make-doc \
		git \
		git-man \
		git-lfs \
		git-hub \
		git-sizer \
		openssh-client \
		openssh-sftp-server \
		openssh-server \
		openssl


WORKDIR /admin/scripts
RUN sudo . build.sh

