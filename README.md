# openvalue-tekton-cicd-talk

### Local installation steps

1. Install OpenShift cluster locally via: https://console.redhat.com/openshift/create/local 
   1. This may take a while
2. Login on the cluster with admin:
   ```
   eval $(crc oc-env)
   oc login -u kubeadmin https://api.crc.testing:6443
   ```

3. Install Tekton Pipeline
   ```
   kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.35.1/release.yaml
   ```
   1. https://github.com/tektoncd/pipeline/releases For the latest releases
   
#### Tekton Tasks
