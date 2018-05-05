FROM amancevice/superset:0.24.0

USER root
RUN apt-get update && apt-get install -y \
    freetds-bin \
    freetds-common \
    freetds-dev

RUN pip3 install --no-cache-dir \
    pymssql==2.1.3

USER superset