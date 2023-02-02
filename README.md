
# Terraform Cloud and Weave GitOps Enterprise demo
This demo creates an EKS cluster and configures it.

## Set up Weave GitOps Enterprise credentials

Set up the entitlement secret. If you do not have the entitlement credentials contact Weaveworks sales.
```yaml
apiVersion: v1
data:
  username:
  password:
  deploy-key:
  entitlement:
kind: Secret
metadata:
  name: weave-gitops-enterprise-credentials
  namespace: flux-system
type: Opaque
```

Set up the user credentials secret. If you use the following yaml, the username is `wego-admin` and the password is `demo`.

```yaml
apiVersion: v1
data:
  password: YS8vTHRLT0NJZ2U2dFo0NkIxaU9hZFFlWDd0VUpLc0JWNHloRU1EQjJUT3NSaW93NFZ5
  username: d2Vnby1hZG1pbg==
kind: Secret
metadata:
  name: cluster-user-auth
  namespace: flux-system
type: Opaque
```

## Set up Terraform Cloud credentials

Follow the instructions here: https://weaveworks.github.io/tf-controller/use_tf_controller/with_Terraform_Enterprise/

NOTE: Make sure you use the secret name `tfc-cli-config`

## Apply the terraform template

- Run kubectl apply -f /templates/tfc-demo.yaml
- reconcile flux source git flux-system
- Go into the templates section in WGE and click `Preview PR` after providing a cluster name in the variables
- Copy the yaml locally and apply the file in your cluster.
