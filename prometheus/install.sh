set -e 

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

kubectl apply -f namespace.yaml

helm upgrade --install prometheus prometheus-community/prometheus --version 25.8.2 -n metrics -f values.yaml