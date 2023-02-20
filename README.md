# QR Code

Just a small tool to generate QR codes and let me control the process.  This uses the [qrcode](https://pypi.org/project/qrcode/) pip module.  It’s just a simple wrapper.

Read more about how this works [here](https://github.com/lincolnloop/python-qrcode)

## Usage

This docker container will create a QR code and write it to a png file.  The png file is written to an /output folder defined in the container.  Overwrite this path with `-v`

```shell
docker run --rm -ti -v $PWD:/output cbitter78/qr_code https://google.com qr.png
```
This defines the output folder and the current folder.  The QR Code will be written to qr.png in the current folder.

## Local Docker Build

You can build the docker image locally with 

```shell
docker build --rm -q -t cbitter78/qr_code:localtest
```

## Release

Tag then Release

```shell

git tag -a v1.0.0 -m "Message"
git push --tags


```