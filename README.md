# Docker files for Ximera

In this repository you will find files needed to deploy Ximera using Docker. 


To deploy using Xake, you will need the additional files
- mypdflatex
- gpgkey
  
Where the mypdflatex file is in this repository and gpgkey is the private part of GPG key.

export GPG_KEY=gpgkey
export GPG_KEY_ID=[SOME HASH]
export REPO_XIMERA=[some xake name]
export URL_XIMERA=https://ximera.osu.edu/