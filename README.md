![GitHub Workflow Status](https://img.shields.io/github/workflow/status/rennancockles/amazonlinux-python-buildpack-docker/Deploy?logo=github)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/rennancockles/amazonlinux-python-buildpack/python3.6?logo=docker)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/rennancockles/amazonlinux-python-buildpack/python3.7?logo=docker)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/rennancockles/amazonlinux-python-buildpack/python3.8?logo=docker)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/rennancockles/amazonlinux-python-buildpack/python3.9?logo=docker)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/rennancockles/amazonlinux-python-buildpack/latest?logo=docker)

## Supported tags and respective `Dockerfile` links

* [`python3.9`, `latest` _(Dockerfile)_](https://github.com/rennancockles/amazonlinux-python-buildpack-docker/blob/master/docker-images/python3.9.dockerfile)
* [`python3.8` _(Dockerfile)_](https://github.com/rennancockles/amazonlinux-python-buildpack-docker/blob/master/docker-images/python3.8.dockerfile)
* [`python3.7`, _(Dockerfile)_](https://github.com/rennancockles/amazonlinux-python-buildpack-docker/blob/master/docker-images/python3.7.dockerfile)
* [`python3.6` _(Dockerfile)_](https://github.com/rennancockles/amazonlinux-python-buildpack-docker/blob/master/docker-images/python3.6.dockerfile)

# amazonlinux-python-buildpack

**Docker** image with **uWSGI** and **Nginx** for web applications in **Python 3.6** and above, and **Python 2.7** (as **Flask**) in a single container. Optionally with Alpine Linux.

## Description

This [**Docker**](https://www.docker.com/) image allows you to build your [**Python**](https://www.python.org/) applications to deploy to [**AWS Lambda**](https://aws.amazon.com/lambda/) or other AWS Service that runs with [**Amazon Linux 2**](https://aws.amazon.com/pt/amazon-linux-2/).

---

**GitHub repo**: [https://github.com/rennancockles/amazonlinux-python-buildpack-docker](https://github.com/rennancockles/amazonlinux-python-buildpack-docker)

**Docker Hub image**: [https://hub.docker.com/r/rennancockles/amazonlinux-python-buildpack/](https://hub.docker.com/r/rennancockles/amazonlinux-python-buildpack/)

## How to use

* You shouldn't have to clone the GitHub repo. You should use it as a base image for other images, using this in your `Dockerfile`:

```Dockerfile
FROM rennancockles/amazonlinux-python-buildpack:python3.9

# Your Dockerfile code...
```

* But, if you need Python 3.8 that line would have to be `FROM rennancockles/amazonlinux-python-buildpack:python3.8`.

