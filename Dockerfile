FROM ubuntu:jammy
LABEL Name=flusshygienesystemarchitecture Version=0.0.1
RUN apt-get -y update && apt-get install -y graphviz make
WORKDIR /source
COPY ./architecture.dot .
COPY ./Makefile .
# ENTRYPOINT ["dot"]
# CMD ["-Tsvg", "architecture.dot", "-o", "architecture.dot.svg"]
ENTRYPOINT ["make"]
CMD ["build"]
