FROM python:3-alpine
LABEL maintainer="Yannis Tsopokis <yannis@tsopokis.com>"
LABEL description="Dockerfile for markdown to confluence conversion utility md2cf"
MAINTAINER Yannis Tsopokis <yannis@tsopokis.com>

RUN mkdir -p /content && \
    pip install md2cf

WORKDIR /content
CMD python -m md2cf --parent-id "${CONFLUENCE_PARENT_ID}" --minor-edit --only-changed --skip-empty --beautify-folders --collapse-empty --collapse-single-pages --enable-relative-links /content
