
## Overview

This project contains the necessary configurations for deploying an application on Kubernetes and setting up the required infrastructure.

- `applications/podinfo`: Contains Kubernetes manifests for the Podinfo application.
- `infrastructure`: Contains Terraform configuration for infrastructure provisioning.
- `.github/workflows`: Contains the GitHub Actions workflow for deployment.

## Applications Directory

### `deployment.yaml`

Defines the Deployment for the Podinfo application in Kubernetes, specifying the container image, replicas, and other configurations.

### `ingress.yaml`

Configures external access to the service, including URL routing and SSL termination.

### `kustomization.yaml`

Used by Kustomize for managing Kubernetes resources, listing all the resources to be applied.

### `service.yaml`

Specifies the Service resource, exposing the application pods to network traffic.

## Infrastructure Directory

### `main.tf`

Contains Terraform configuration for provisioning cloud infrastructure, including the cloud provider and resource configurations.

## How to Run

### Deploying Infrastructure and Application

Deployment is automated via GitHub Actions, triggered manually using the `workflow_dispatch` event.

* note: triggering the Workflow requires adequate access to the repository, however you should see the history of a previous successful run.

1. Go to the GitHub repository.
2. Click on "Actions".
3. Select `Deploy GKE Cluster and Podinfo`.
4. Click "Run workflow" to start the deployment.

The workflow provisions infrastructure with Terraform and deploys the Podinfo application to Kubernetes.

