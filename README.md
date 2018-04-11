See <https://hub.docker.com/r/akoehnlein/typo3/> for compiled images:

# Debian 

The following images are based on the official PHP images, which are based on Debian Linux images

* `akoehnlein/typo3:php56`
* `akoehnlein/typo3:php70`
* `akoehnlein/typo3:php71`

# Alpine

There are also alternative images, based on the smaller Alpine Linux images

* `akoehnlein/typo3:php56-alpine`
* `akoehnlein/typo3:php70-alpine`
* `akoehnlein/typo3:php71-alpine`

There are no prebuilt images for the Alpine variants, so you have to build them by yourself at the moment

```
docker build . -f php5.6/Dockerfile.alpine --tag akoehnlein/typo3:php56-alpine
docker build . -f php7.0/Dockerfile.alpine --tag akoehnlein/typo3:php70-alpine
docker build . -f php7.1/Dockerfile.alpine --tag akoehnlein/typo3:php71-alpine
```

