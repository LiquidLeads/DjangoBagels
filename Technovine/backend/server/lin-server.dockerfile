FROM ubuntu:22.04 AS server
LABEL authors="Richard Joubert"

#▸ Set Admin Directories
ENV ScriptsDir=/admin/scripts
ENV LogsDir=/admin/logs

RUN \
	mkdir -p ${ScriptsDir} \
	mkdir -p ${LogsDir}

WORKDIR /admin/scripts
RUN sudo . ./install-pwsh.sh



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
		curl \
		openssh-client \
		openssh-sftp-server \
		openssh-server \
		openssl


RUN sudo . user-config.sh

