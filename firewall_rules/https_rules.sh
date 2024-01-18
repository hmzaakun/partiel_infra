gcloud compute firewall-rules create allow-https \
  --allow tcp:443 \
  --description "Allow incoming HTTPS traffic"
