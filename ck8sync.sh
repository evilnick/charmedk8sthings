#!/bin/bash
GH_USER="evilnick"
rm -rf u.c
rm -rf k8s
git clone git@github.com:$GH_USER/kubernetes-docs.git k8s
cd k8s
git remote add upstream git@github.com:charmed-kubernetes/kubernetes-docs.git
git fetch upstream main
git merge upstream/main
git push origin main
git pull upstream current
git checkout --track upstream/current
cd ..
git clone git@github.com:$GH_USER/www.ubuntu.com.git u.c
cd u.c
git remote add upstream git@github.com:canonical-websites/www.ubuntu.com.git
git pull upstream main
git merge upstream/main
git push origin main
cd ..
