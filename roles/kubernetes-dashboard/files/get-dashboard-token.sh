#!/bin/bash
#
# gets and decodes admin-user service account used for kubernetes dashboard access
#

kubectl -n kube-system get secret $(kubectl -n kube-system get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
