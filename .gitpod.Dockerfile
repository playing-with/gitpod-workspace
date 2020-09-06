FROM docker

# Install custom tools, runtimes, etc.

USER root
RUN sudo usermod -aG docker gitpod
RUN sudo dockerd

USER gitpod
