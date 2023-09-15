# docker-md2cf
Docker image for markdown to confluence cli tool md2cf


## Automated image build

Everytime a new tag is pushed to the repository, a new image will be built and published to Docker Hub.

[Docker Hub image](https://hub.docker.com/repository/docker/tsopokis/md2cf)

## Build the image locally

```bash
docker build -t tsopokis/md2cf -f Dockerfile ./context/
```

## Pull the image

```bash
docker pull tsopokis/md2cf
```

## Usage

```bash
export CONFLUENCE_HOST="https://www.confluence.com"
export CONFLUENCE_TOKEN="<TOKEN>"
export CONFLUENCE_SPACE="<SPACE>"
export CONFLUENCE_PARENT_ID="PARENT_ID"

docker run -it --rm \
    -v ./:/content \
    -e CONFLUENCE_HOST="${CONFLUENCE_HOST}/rest/api" \
    -e CONFLUENCE_TOKEN="${CONFLUENCE_TOKEN}" \
    -e CONFLUENCE_SPACE="${CONFLUENCE_SPACE}" \
    -e CONFLUENCE_PARENT_ID="${CONFLUENCE_PARENT_ID}" \
    tsopokis/md2cf
```
