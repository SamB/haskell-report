FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo apt-get update

# Readme says we need GHC and flex.
RUN sudo apt-get install -y haskell-platform flex

# pdflatex, makeidx, graphicx, url, color, hyperref -- also pulls makeindex in from texlive-binaries
#RUN sudo apt-get install -y texlive-latex-base

# Heck that, lets just try:
RUN sudo apt-get install -y texlive