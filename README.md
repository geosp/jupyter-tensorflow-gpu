# jupyter-tensorflow-gpu

A Jupyter notebook lab environment with tensorflow and GPU support.

## Using the container.

**Generating password for Jupyter Notebook**

To generate password `in the container` for the first time, run this command:

```bash
python3 -c "from notebook.auth import passwd; print(passwd('your_password'))"
```

Use the hash for the password in Jupyter using the argument `--NotebookApp.password`

**Using the GPU in Kubernetes (microk8s)**

1. Install GPU drivers and container runtime: https://github.com/NVIDIA/nvidia-container-runtime.
2. Modify /var/snap/microk8s/current/args/kubelet:

```bash
   --container-runtime=docker
   --container-runtime-endpoint=\${SNAP_COMMON}/run/docker.sock
```
