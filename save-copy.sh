#!/bin/sh

cp $1 ./_autosave1.zip
kubectl create -f busybox.yml
kubectl cp ./_autosave1.zip busybox:/factorio/saves/
rm ./_autosave1.zip
kubectl delete -f busybox.yml
