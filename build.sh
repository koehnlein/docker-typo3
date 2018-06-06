#!/bin/bash

docker build --pull . -f Dockerfile.php56-alpine -t akoehnlein/typo3:php56-alpine && \
docker build --pull . -f Dockerfile.php70-alpine -t akoehnlein/typo3:php70-alpine && \
docker build --pull . -f Dockerfile.php71-alpine -t akoehnlein/typo3:php71-alpine && \
docker build --pull . -f Dockerfile.php72-alpine -t akoehnlein/typo3:php72-alpine && \
docker build --pull . -f Dockerfile.php56 -t akoehnlein/typo3:php56 && \
docker build --pull . -f Dockerfile.php70 -t akoehnlein/typo3:php70 && \
docker build --pull . -f Dockerfile.php71 -t akoehnlein/typo3:php71 && \
docker build --pull . -f Dockerfile.php72 -t akoehnlein/typo3:php72
