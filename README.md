# Snapshotter Tests

This is an image building on top of `atlas/analysisbase`.

The image built using the `Dockerfile` adds ~1MB as a top layer.

The expectation is that when `atlas/analysisbase` layer data is on
a remote snapshotter, that only the top layers added by the Dockerfile
need to be downloaded in bulk. The rest should be taken from cvmfs.


## Test job

```
docker run --rm -it lukasheinrich/derived_image_snapshotter_test:latest /analysis/src/testjob.sh
```
