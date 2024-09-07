set -e

helm repo add gitlab https://charts.gitlab.io

helm repo update

kubectl apply -f namespace.yaml

echo "Installing Gitlab Runner..."

helm upgrade --install gitlab-runner gitlab/gitlab-runner --namespace gitlab-runner -f values.yaml --version 0.58.2
