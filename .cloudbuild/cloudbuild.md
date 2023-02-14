# Cloud Build
Google Cloud Build is a serverless CI/CD offering on the Google Cloud.

## Cloud Build Concepts
1. Cloud Build allows running builds in automated fashion using the concept of triggers. Using triggers, we can instruct Cloud Build to run the build based on certain conditions like a new commit pushed to any branch in the repository.

2. We describe the steps in a build config (configuration file) which could be in YAML or JSON format to perform various tasks like building artifacts when triggered. The config file lives in the the source code repository.

3. Cloud Build uses Docker to execute builds. Cloud Build executes your build as a series of build steps mentioned in build config file, where each build step is run in a Docker container.

4. Cloud builders are container images with common languages and tools installed in them. You can configure Cloud Build to run a specific command within the context of these builders. Cloud Build enables you to use any publicly available image to execute your tasks.

## Create cloud build trigger
If you are using the user-specified service account to create build trigger, You must create or start builds in the command line using 'gcloud builds submit' or 'gcloud beta builds triggers create'.

```
gcloud builds triggers create github --name="terraform-gcp-lab-trigger" --service-account="projects/clear-tape-374908/serviceAccounts/terraform-manual-sa@clear-tape-374908.iam.gserviceaccount.com" --repo-owner="anupam-sy" --repo-name="terraform-gcp-lab" --description="terraform-gcp-lab" --branch-pattern="^master$" --build-config=".cloudbuild/cloudbuild.yaml"
```

**Note:** To use the Triggers page in the Google Cloud console, the user-specified service account and the build trigger must be in the same project.

## Reference
- https://cloud.google.com/build/docs/securing-builds/configure-user-specified-service-accounts