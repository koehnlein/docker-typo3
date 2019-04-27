LAP (Linux, Apache, PHP) images with all PHP requirements for a basic TYPO3 installation + Xdebug. All images use `/var/www/html` as webroot, so you can switch the images, whenever you want.

## Blackfire integration

All images contain the blackfire.io PHP Probe. See <https://blackfire.io/docs/integrations/docker> to learn how to integrate profiling into your project's setup.

## Images

See <https://hub.docker.com/r/akoehnlein/typo3/> for compiled images:

### Debian 

The following images are based on the official PHP images, which are based on Debian Linux images

* `akoehnlein/typo3:php56`
* `akoehnlein/typo3:php70`
* `akoehnlein/typo3:php71`
* `akoehnlein/typo3:php72`

### Alpine

There are also alternative images, based on the smaller Alpine Linux images

* `akoehnlein/typo3:php56-alpine`
* `akoehnlein/typo3:php70-alpine`
* `akoehnlein/typo3:php71-alpine`
* `akoehnlein/typo3:php72-alpine`
