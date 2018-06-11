# curio_opsworks

This repository contains two main installations process :

1. First install all chef dependencies we need via Berkshelf. You will find (into Berksfile) :
- cookbook 'opsworks_ruby'
- cookbook 'nodejs', '~> 5.0.0'
- cookbook 'yarn', '~> 0.4.0'

These packages install for us the recipes that we need to install Ruby and Rails, NodeJS and Yarn.

2. Then, we install all packages that we need for the app. We are using our own default recipe to do that (default recipe). To date, we are installing :
- ImageMagick
- cairo-devel, libjpeg-devel, giflib-devel --> needed because of npm canvas package --> needed for FrontSpecs.
- gcc, gcc-c++, gcc-gfortran --> need g++ for unf_ext gem


## CONTRIBUTE

Feel free to add any community cookbooks if needed via the Berksfile or any custom recipes.
When you are finished, just run :  

```sheel
berks package
```

This will provide you a new tar.gz file you need to upload as custom cookbooks in AWS. (We are currently storing this archive on S3 Bucket.)

You can then push the changes to github in order to keep this repository updated.
