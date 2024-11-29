#!/bin/bash
echo 'Now copying' $1 'from k8s to uc'
cp k8s/pages/k8s/$1 u.c/templates/kubernetes/docs/$1 
cd u.c
git add templates/kubernetes/docs/$1
