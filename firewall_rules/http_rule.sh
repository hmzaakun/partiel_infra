gcloud compute firewall-rules create allow-http \
  --allow tcp:80 \
  --description "Allow incoming HTTP traffic"
