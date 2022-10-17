#!/bin/bash
cd $(dirname "$0")

PROJECT="learn-terraform-364715"
ZONE="us-central1-c"

gcloud compute scp ./deploy.sh root@py-server:~/deploy.sh --zone=$ZONE --project=$PROJECT
gcloud compute ssh root@py-server --zone=$ZONE --project=$PROJECT -- "~/deploy.sh"

