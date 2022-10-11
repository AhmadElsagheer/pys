#!/bin/bash
cd $(dirname "$0")

PROJECT="learn-terraform-364715"
ZONE="us-central1-c"

gcloud compute scp ./deploy.sh py-server:~/app/deploy.sh --zone=$ZONE --project=$PROJECT
gcloud compute ssh py-server --zone=$ZONE --project=$PROJECT -- "~/app/deploy.sh"

