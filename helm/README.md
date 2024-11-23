# Nginx Helm Chart

This guide explains how to create a Helm template for deploying an Nginx application and the steps to deploy it to a Kubernetes cluster.

## Prerequisites

Before you start, ensure you have the following:

Helm installed (version 3 or later).
kubectl installed and configured to interact with your Kubernetes cluster.
A working Kubernetes cluster.

## Step 1: Create the Helm Chart

1. **Create a new Helm chart using the following command**:
   ```bash
   helm create nginx-svc

2. **Navigate into the chart directory**:
   ```bash
   cd nginx-svc

3. **Customize the generated files**:
-  **Edit Chart.yaml to update metadata such as the chart name and version.**
-  **Modify the values.yaml file to define default values for your application.**
-  **Update the files in the templates/ directory as needed (e.g., deployment.yaml, service.yaml, ingress.yaml, ingress.yaml, serviceaccount.yaml).**

## Step 2: Customize the Chart

1. **Deployment (templates/deployment.yaml)**
   Define the Deployment object, including replicas, container image, ports, and resource configurations.

2. **Service (templates/service.yaml)**
   Define a Service object to expose the application (e.g., as a ClusterIP or LoadBalancer).

3. **Ingress (templates/ingress.yaml)**
   Define an Ingress resource to expose the application through an HTTP/HTTPS endpoint.

4. **serviceaccount (templates/serviceaccount.yaml)**
   (Optional) Define a service account for the application

5. **Values (values.yaml)**
Configure default values for your application.

**Run the tree command to see the directory structure**:
```bash
tree
.
├── README.md
├── nginx-svc
│   ├── Chart.yaml
│   ├── charts
│   ├── templates
│   │   ├── deployment.yaml
│   │   ├── ingress.yaml
│   │   ├── service.yaml
│   │   └── serviceaccount.yaml
│   └── values.yaml
└── override-values.yml

## Step 3: Validate the Chart

1. **Run helm lint to validate the chart**:
   ```bash
   helm lint nginx-svc

2. ***Render the templates locally to verify the output**:
   ```bash
   helm template nginx-svc ./nginx-svc

# Step 4: Deploy the Application

1. **Use the following command to deploy the application**:
   ```bash
   helm upgrade --install nginx-svc ./nginx-svc -f override-values.yml --create-namespace --namespace nginx

   - **nginx-svc**: The release name.
   - **./nginx-chart**: Path to the Helm chart.
   - **--create-namespace**: Creates the namespace if it doesn’t exist.
   - **--namespace nginx**: Deploys to the nginx namespace.

2. **Verify the deployment**:
   ```bash
   kubectl get all -n nginx
