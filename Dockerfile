FROM registry.access.redhat.com/ubi8/go-toolset

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && chmod +x kubectl

RUN curl -LO https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-4.3.0.tar.gz && tar -xzvf openshift-client-linux-4.3.0.tar.gz && rm -rf openshift-client-linux-4.3.0.tar.gz
