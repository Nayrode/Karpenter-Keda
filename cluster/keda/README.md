kubectl apply --server-side -f keda-2.17.1-crds.yaml

cd ./helm
helm install keda . --skip-crds