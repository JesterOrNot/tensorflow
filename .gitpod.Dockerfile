FROM gitpod/workspace-full:latest

USER gitpod

# Install Bazel
RUN wget https://github.com/bazelbuild/bazel/releases/download/1.2.1/bazel-1.2.1-installer-linux-x86_64.sh \
    && chmod +x bazel-1.2.1-installer-linux-x86_64.sh \
    && sudo ./bazel-1.2.1-installer-linux-x86_64.sh --user

# Install Tensorflow Dependencies
RUN pip install numpy
