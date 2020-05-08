# Welcome to MkDocs

For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Create project

1\. Run:
```bash
docker run -it -v $(pwd):/docs dmadouros/mkdocs
```

2\. Inside docker shell, run:
```bash
mkdocs new <project>
```

3\. Exit the docker shell

## Setup Project

1\. Change directory to project directory
```bash
cd <project>
```

2\. Create `Dockerfile`
```dockerfile
FROM dmadouros/mkdocs:latest

COPY . /docs
WORKDIR /docs

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
```

3\. Create `docker-compose.yml`
```yaml
version: "3.7"

services:
  mkdocs:
    build: .
    volumes:
      - ${PWD}:/docs
    ports:
      - 8000:8000
```

4\. Serve site

```
docker-compose up -d
```

5\. Navigate to site

[http://localhost:8000](http://localhost:8000)
