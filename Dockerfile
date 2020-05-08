FROM dmadouros/mkdocs:latest

RUN pip install mkdocs-material

COPY . /docs
WORKDIR /docs

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]