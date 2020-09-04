# jupyter-tensorflow-gpu

A Jupyter notebook lab environment with tensorflow and GPU support.

If you want to use the GPU Kubernetes (microk8s) then:

1. Enable GPU.
2. Modify /var/snap/microk8s/current/args/kubelet:

```bash
   --container-runtime=docker
   --container-runtime-endpoint=\${SNAP_COMMON}/run/docker.sock
```
