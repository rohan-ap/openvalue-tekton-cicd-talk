# openvalue-tekton-cicd-talk

## Prerequisites
- A Kubernetes cluster on Google Cloud Platform
- Be authenticated via gcloud and kubectl
- A Slack workspace and app with incoming webhook URL
### Tools required
- kubectl
- gcloud
- python
- tkn (Tekton CLI)
   
## Installation steps
1. `./install-tekton.sh`
2. Replace `<URL_HERE>` with the Slack incoming webhook URL in `k8s-resources/slack-notify.yaml`
3. `kubectl apply -f slack-notify.yaml`
4. Create a service account in GCP, grant `Artifact Registry Administrator` role and generate an access key
5. Copy the content of the downloaded access key and replace `<JSON_HERE>` with the access key in `k8s-resources/gcp-creds.yaml`
6. `kubectl apply -f gcp-creds.yaml`

## Run the pipeline
1. `kubectl create -f pipeline/pipeline-run.yaml`
   1. Copy the suffix after `hello-world-service-run-` which is needed in the next command
   2. In `pipeline/pipeline-run.yaml` you can change the branch/commit to checkout in the pipeline
2. Use `tkn pipelineruns describe -n openvalue-ops hello-world-service-run-<SUFFIX_HERE>` to check on the status of the pipeline run
3. Also keep an eye on the configured Slack channel for notifications

## Test the application
1. Check if the pods are running successfully `kubectl get pods -n openvalue-prd`
2. Port forward the service `kubectl port-forward -n openvalue-prd service/hello-world-service 8080:8080`
3. Test the application `curl localhost:8080`
