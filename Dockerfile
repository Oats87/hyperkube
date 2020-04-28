FROM gcr.io/google_containers/hyperkube:v1.17.5 as source

FROM quay.fremont.rancherlabs.com/ckim/rancher-debian-hyperkube-base:v0.0.8

RUN rm -f /usr/local/bin/kube-apiserver /usr/local/bin/kube-controller-manager /usr/local/bin/kube-proxy /usr/local/bin/kube-scheduler /usr/local/bin/kubectl /usr/local/bin/kubelet

COPY --from=source /usr/local/bin/kube* /usr/local/bin/