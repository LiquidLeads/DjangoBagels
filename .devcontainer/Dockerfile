FROM python:latest AS python

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


# ===============================================

FROM php:latest AS php

ENV PhpDir="/dev/php"
ENV PhpAppDir="/dev/php/app"

RUN mkdir -p -v ${PhpAppDir}
WORKDIR ${PhpAppDir}



# ===============================================

FROM apache:latest AS apache
