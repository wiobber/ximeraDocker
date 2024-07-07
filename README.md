# Docker files for Ximera

In this repository you will find files needed to deploy Ximera using Docker. 

The docker images are available as

docker pull ghcr.io/ximeraproject/xake2019:latest

docker pull ghcr.io/ximeraproject/xake2023:latest


To publish your repo to a ximera-server with the build.sh script as provided in e.g. the examples repo, you need to generate a personal GPG key,
export it to a file, e.g. mygpgkey, and export following environment variables:
  
export GPG_KEY=mygpgkey

export GPG_KEY_ID=[the (hash-) ID for your key]

export REPO_XIMERA=[the (xake) name under which to publish te content]

export URL_XIMERA=https://ximera.osu.edu/


Depending on the version of xake, you might need the additional file **mypdflatex** in this repo.

This procedure will be further developed and improved during the next weeks.


