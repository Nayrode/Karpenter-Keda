kubectl apply --server-side -f keda-2.17.1-crds.yaml

cd ./helm
helm install keda . --skip-crds

Attention il faut le metric server: kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

