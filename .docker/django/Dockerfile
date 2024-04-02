FROM python:3.11-slim

WORKDIR /usr/src/app
RUN mkdir -p $WORKDIR/static

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

ARG DEPENDENCIES_DIR
COPY $DEPENDENCIES_DIR/requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ARG SCRIPT_DIR
COPY $SCRIPT_DIR/entrypoint.sh /usr/local/bin/docker-entrypoint.sh
#RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]
