# Docker files for Ximera

In this repository you will find files needed to *build* Docker images for Ximera. 

Typically Ximera-authors will *use* existing Docker images, e.g. as found via

`docker pull ghcr.io/ximeraproject/xake2019:v2.1.1`   # with a recent xake version that e.g. also compiles Pdf's


`docker pull ghcr.io/ximeraproject/xake2019:latest`   # from the 'official' ximera-repo's, built with xake/Dockerfile2019

`docker pull ghcr.io/ximeraproject/xake2023:latest`  # with texlive2023, but still has some issues  (desmos, no begin{align}, ...)


To publish your repo to a ximera-server with the `xmlatex` script as provided in e.g. the ximeraFirstSteps repo, you need to generate a personal GPG key,
and put it in a .ximerserve file  (example in ximeraFirstSteps)

Alternatively or additionally, you can overwrite that and export the key to a file, e.g. `gpgkey`, and export following environment variables:
  
`export GPG_KEY=gpgkey`

`export GPG_KEY_ID=[the (hash-) ID for your key]`

`export REPO_XIMERA=[the (xake) name under which to publish te content]`

`export URL_XIMERA=https://ximera.osu.edu/`

In particular (or even more alternatively),

`REPO_XIMERA=mytest ./scripts/xmlatex serve`

would then publish to the URL https://ximera.osu.edu/mytest.

This procedure might change in the future.


