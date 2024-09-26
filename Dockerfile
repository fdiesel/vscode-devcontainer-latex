FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y texlive-full latexmk
RUN apt install -y software-properties-common
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt install -y ttf-mscorefonts-installer
RUN sed -i "s|openout_any = p|openout_any = a|g" /usr/share/texlive/texmf-dist/web2c/texmf.cnf
