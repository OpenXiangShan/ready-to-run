FROM centos:7

RUN yum install -y centos-release-scl
RUN yum install -y git dtc devtoolset-11 llvm-toolset-7 bison flex
RUN echo "source /opt/rh/devtoolset-11/enable" >> /etc/profile
RUN echo "source /opt/rh/llvm-toolset-7/enable" >> /etc/profile
