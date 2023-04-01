#!/bin/bash

envsubst < cilium-values.yaml > values.yaml
kustomize build --enable-helm | kubectl apply -f -
rm values.yaml
