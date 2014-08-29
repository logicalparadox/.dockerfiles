FROM ubuntu:14.04
MAINTAINER Jake Luer <jake@alogicalparadox.com>

# Setting home for bash and other stuff
ENV HOME /root

# Add build files
RUN mkdir /build
ADD ./build /build

# Run the build
RUN /build/bootstrap.sh && \
    /build/clean.sh

# Insert bashrc
ADD bashrc /root/.bashrc
