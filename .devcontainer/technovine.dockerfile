FROM webdevops/php:8.0
LABEL maintainer="rjoubert@nsd.team"

ENV PhpDir="/dev/php"
ENV PhpAppDir="/dev/php/app"
ENV PhpScriptDir="/dev/php/scripts"

RUN \
	mkdir -p -v ${PhpAppDir} \
	mkdir -p -v ${PhpScriptDir}

WORKDIR ${PhpAppDir}

COPY ./scrips/php/* .



# ===============================================

FROM python:latest AS python
LABEL maintainer="rjoubert@nsd.team"

ENV PyDir="/dev/python"
ENV PyAppDir="/dev/python/app"
ENV PyScripts="/dev/python/scripts"

RUN mkdir -p -v ${PyAppDir}

WORKDIR ${PyAppDir}
COPY "./requirements.txt" .

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR ${PyScripts}
COPY ./scripts/python/* .

CMD [ "python", "$PyScriptts/build-test.py" ]