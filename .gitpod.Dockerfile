FROM gitpod/workspace-full:latest

USER root

USER gitpod

# Install Bazel
RUN wget https://github.com/bazelbuild/bazel/releases/download/1.2.1/bazel-1.2.1-installer-linux-x86_64.sh \
    && chmod +x bazel-1.2.1-installer-linux-x86_64.sh \
    && sudo ./bazel-1.2.1-installer-linux-x86_64.sh --user

# Install Tensorflow Dependencies
RUN pip3 install numpy

# Give root back to the Gitpod image builder
USER root
