# Building the Docker image

Run the following command at this folder (`NASALib/.ci`) to build the docker image.
```
docker build -t nasalib-ci .
```


# Running the Docker image

The following command starts the image.
```
docker run -v $(readlink -f ../):/pvs-7.1.0/nasalib/ -it nasalib-ci /bin/bash
```

