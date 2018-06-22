#!/bin/bash

docker build --pull . -f Dockerfile.php56-alpine -t akoehnlein/typo3:php56-alpine && docker run -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" akoehnlein/typo3:php56-alpine /tmp/test.sh && \
docker build --pull . -f Dockerfile.php70-alpine -t akoehnlein/typo3:php70-alpine && docker run -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" akoehnlein/typo3:php70-alpine /tmp/test.sh && \
docker build --pull . -f Dockerfile.php71-alpine -t akoehnlein/typo3:php71-alpine && docker run -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" akoehnlein/typo3:php71-alpine /tmp/test.sh && \
docker build --pull . -f Dockerfile.php72-alpine -t akoehnlein/typo3:php72-alpine && docker run -it -v `pwd`/tests.sh:/tmp/test.sh --entrypoint "ash" akoehnlein/typo3:php72-alpine /tmp/test.sh && \
docker build --pull . -f Dockerfile.php56 -t akoehnlein/typo3:php56 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/typo3:php56 /tmp/test.sh && \
docker build --pull . -f Dockerfile.php70 -t akoehnlein/typo3:php70 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/typo3:php70 /tmp/test.sh && \
docker build --pull . -f Dockerfile.php71 -t akoehnlein/typo3:php71 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/typo3:php71 /tmp/test.sh && \
docker build --pull . -f Dockerfile.php72 -t akoehnlein/typo3:php72 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/typo3:php72 /tmp/test.sh
